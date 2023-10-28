<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
<style>
    @import url('https://fonts.googleapis.com/css?family=Baloo+Bhaijaan|Ubuntu');

    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Ubuntu', sans-serif;
    }

    body{
        background: #2196F3;
        margin: 0 10px;
    }

    .payment{
        background: #f8f8f8;
        max-width: 360px;
        margin: 80px auto;
        height: auto;
        padding: 35px;
        padding-top: 70px;
        border-radius: 5px;
        position: relative;
    }

    .payment h2{
        text-align: center;
        letter-spacing: 2px;
        margin-bottom: 40px;
        color: #0d3c61;
    }

    .form .label{
        display: block;
        color: #555555;
        margin-bottom: 6px;
    }

    .input{
        padding: 13px 0px 13px 25px;
        width: 100%;
        text-align: center;
        border: 2px solid #dddddd;
        border-radius: 5px;
        letter-spacing: 1px;
        word-spacing: 3px;
        outline: none;
        font-size: 16px;
        color: #555555;
    }

    .card-grp{
        display: flex;
        justify-content: space-between;
    }

    .card-item{
        width: 48%;
    }

    .space{
        margin-bottom: 20px;
    }

    .icon-relative{
        position: relative;
    }

    .icon-relative .fas,
    .icon-relative .far{
        position: absolute;
        bottom: 12px;
        left: 15px;
        font-size: 20px;
        color: #555555;
    }

    .btn{
        margin-top: 40px;
        background: #2196F3;
        padding: 12px;
        text-align: center;
        color: #f8f8f8;
        border-radius: 5px;
        cursor: pointer;
    }


    .payment-logo{
        position: absolute;
        top: -50px;
        left: 50%;
        transform: translateX(-50%);
        width: 100px;
        height: 100px;
        background: #f8f8f8;
        border-radius: 50%;
        box-shadow: 0 0 5px rgba(0,0,0,0.2);
        text-align: center;
        line-height: 85px;
    }

    .payment-logo:before{
        content: "";
        position: absolute;
        top: 5px;
        left: 5px;
        width: 90px;
        height: 90px;
        background: #2196F3;
        border-radius: 50%;
    }

    .payment-logo p{
        position: relative;
        color: #f8f8f8;
        font-family: 'Baloo Bhaijaan', cursive;
        font-size: 58px;
    }


    @media screen and (max-width: 420px){
        .card-grp{
            flex-direction: column;
        }
        .card-item{
            width: 100%;
            margin-bottom: 20px;
        }
        .btn{
            margin-top: 20px;
        }
    }
</style>
@if(!empty($status))
    <div class="wrapper">
        <div class="payment" style="padding-top: 20px">
            <a style="margin-top: 150px" href="/test">back</a>
            <h3>{{$status}}</h3>
            @if($status == 'Fail')
                <textarea style="width: 100%; height: 200px">@php
                         var_dump($failReason);
                     @endphp</textarea>
            @endif
        </div>
    </div>
@endif

<div class="wrapper">
    <div class="payment">
        <div class="payment-logo">
            <p>T</p>
        </div>
        <form action="{{route('test.createToken')}}" method="post">
            @csrf
            <div class="form">
                <div class="card space icon-relative">
                    <label class="label">Amount (USD):</label>
                    <input type="text" name="amount" class="input" placeholder="USD">
                </div>
                <button class="btn" type="submit">Pay</button>
            </div>
        </form>
    </div>
</div>

