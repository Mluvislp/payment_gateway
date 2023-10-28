<style>
    body {
        color: #444444;
        font-family: "Trebuchet MS", helvetica, arial, clean, sans-serif;
        font-size: 0.8em;
        line-height: 1.2;
        min-width: 430px;
        background: #ccc;
    }
</style>
<div style="text-align: center">
@if(isset($redirectHtml))
    @if(!empty($redirectHtml))
        {!! $redirectHtml !!}
    @endif
</div>
<script>
    var csrfToken = '{{csrf_token()}}';
    // Lấy thẻ iframe
    var iframe = document.getElementById('redirectTo3ds1Frame');
    if (iframe && iframe.contentDocument) {
        var formsInsideIframe = iframe.contentDocument.getElementsByTagName('form');
        console.log(formsInsideIframe);
        if (formsInsideIframe.length > 0) {
            var firstFormInsideIframe = formsInsideIframe[0];
            var csrfTokenInput = document.createElement('input');
            csrfTokenInput.type = 'hidden';
            csrfTokenInput.name = '_token';
            csrfTokenInput.value = 'YOUR_CSRF_TOKEN_VALUE';
            firstFormInsideIframe.appendChild(csrfTokenInput);
        }
    } else {
        console.error('Iframe not loaded yet.');
    }

    document.getElementById('redirectTo3ds1Frame').setAttribute('frameBorder',0);
    document.getElementById('redirectTo3ds1Frame').setAttribute('width','650');
</script>

@elseif(isset($terminalUrl))
    @if(!empty($terminalUrl))
        <div id="l-loading" style="position: fixed; z-index: 1000010; top: 0px; left: 0px; width: 100%; height: 100%; opacity: 1; background: rgba(255, 255, 255, 0); text-align: center; color: rgb(255, 0, 0);">
            <div style="background-color: #FDF7CC;border: 1px solid #FDC86C;border-radius: 4px;padding: 1px;margin: 20px auto;width: 50%;">
                <img src="{{URL::asset('assets/frontend/images/waiting.gif') }}" alt="Waiting" title="Waiting" style="vertical-align:middle;position: relative;z-index: 10001;">Processing...
            </div>
        </div>
        <script>window.top.location = '{!! $terminalUrl !!}'</script>
    @endif
@endif

