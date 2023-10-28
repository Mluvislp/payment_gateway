<?php

namespace App\Http\Middleware;

use Closure;
use Firebase\JWT\JWT;
use Firebase\JWT\Key;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Symfony\Component\HttpFoundation\Response;

class CheckInfoToken
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if(!$request->has('token')){
            return redirect()->route('notfound');
        }

        $token      = $request->input('token');
        $secret_key = config('paymentjwt.app_key');

        try {
            $decodeValue = JWT::decode($token, new Key($secret_key, 'HS256'));

            if (!propertyExistsMul($decodeValue, ['site_id', 'data', 'type'])) {
                return $this->redirect($decodeValue);
            }

            return $next($request);
        } catch (\Exception $e){
            echo "Lỗi: " . $e->getMessage();
        }
    }

    public function redirect($decodeValue){
        if(property_exists($decodeValue, 'iss')){
            return redirect()->to($decodeValue->iss);
        }else{
            return redirect()->route('notfound');
        }
    }
}
