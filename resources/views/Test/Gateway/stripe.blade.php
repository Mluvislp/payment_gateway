<section id="content5" class="tab-content">
    <form action="{{route('payment.handle.paypal-direct')}}" method="post">
        @csrf
        <div class="pymt-radio">
            <div class="row-payment-method payment-row-last">
                <div class="select-txt hr">
                    <p class="pymt-type-name">Credit Card</p>
                </div>
                <div class="select-logo">
                    <div class="select-logo-sub logo-spacer">
                        <img src="https://www.dropbox.com/s/by52qpmkmcro92l/logo-visa.png?raw=1" alt="Visa"/>
                    </div>
                    <div class="select-logo-sub">
                        <img src="https://www.dropbox.com/s/6f5dorw54xomw7p/logo-mastercard.png?raw=1" alt="MasterCard"/></div>
                </div>
            </div>
        </div>
        <div class="form-cc">
            <input type="hidden" name="token" value="{{$token}}"/>
            <div class="row-cc">
                <div class="cc-field">
                    <div class="cc-title">Credit Card Number</div>
                    <div  class="input cc-txt text-validated" id="card-number">

                    </div>
                </div>
            </div>
            <div class="row-cc">
                <div class="cc-field">
                    <div class="cc-title">Expiry month<span class="numberCircle">?</span>
                    </div>
                    <div class="input cc-txt" id="card-expiry">

                    </div>
                </div>
                <div class="cc-field">
                    <div class="cc-title">CVV Code<span class="numberCircle">?</span>
                    </div>
                    <div class="input cc-txt" id="card-cvc">

                    </div>
                </div>
            </div>
            <div class="row-cc">
                <div class="cc-field">
                    <div class="cc-title">First Name
                    </div>
                    <input type="text" class="input cc-txt" id="stripe_first_name"  name="stripe_first_name" />
                </div>
                <div class="cc-field">
                    <div class="cc-title">Last Name
                    </div>
                    <input type="text" class="input cc-txt" id="stripe_last_name" name="stripe_last_name" />
                </div>
            </div>
            <div class="row-cc">
                <div class="cc-field">
                    <div class="cc-title">Address
                    </div>
                    <input type="text" class="input cc-txt" id="stripe_card_address" name="stripe_card_address"/>
                </div>
            </div>

        </div>
        <div class="button-master-container">
            <div class="button-container button-finish">
                <button onclick="checkBillingInformation();return false;">Finish Order</button>
            </div>
        </div>
    </form>
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
</section>

<script type="text/javascript" src="https://js.stripe.com/v3/"></script>
<script type="text/javascript">
    var stripe = Stripe('{{$stripePKey}}');
    var elements = stripe.elements();
    var numberStyle = {
        base: {
            fontFamily: 'Tahoma ,Geneva, sans-serif',
            fontSize: '12px',
            fontWeight : 700,
            color:"#606060",
        },
        invalid: {
            color: '#606060',
            '::placeholder': {
                color: '#606060',
            },
        },
    };

    var cardNumber = elements.create('cardNumber', {
        style: numberStyle,
        placeholder :'',
    });
    cardNumber.mount('#card-number');

    var cardExpiry = elements.create('cardExpiry', {
        style: numberStyle,
    });
    cardExpiry.mount('#card-expiry');

    var cardCvc = elements.create('cardCvc', {
        style: numberStyle,
        placeholder :'',
    });
    cardCvc.mount('#card-cvc');
    function checkBillingInformation(){
            var cardNumberElement = elements.getElement('cardNumber')
            stripe.createPaymentMethod({
                type: 'card',
                card: cardNumberElement
            }).then(function(result) {
                if (result.error) {
                    console.log(result.error)
                } else {
                    handlePaymentIntent(result)
                }
            });
    }
    function handlePaymentIntent(result) {
        var firstName = $('#stripe_first_name').val();
        var lastName = $('#stripe_last_name').val();
        var address = $('#stripe_card_address').val();
        var token = $("input[name=token]").val();

        var formData = {
            payment_method_id: result.paymentMethod.id,
            card_first_name: firstName,
            card_last_name: lastName,
            address: address,
            token: token,
        };

        $.ajax({
            type: 'POST',
            url: '{{route('test.stripe.create-payment')}}',
            data: formData,
            success: function(response) {
                var cardNumberElement = elements.getElement('cardNumber')
                var clientSecret = response.data.client_secret;
                var redirect = response.data.redirect_link;

                stripe.confirmCardPayment(clientSecret, {
                    payment_method: {
                        card: cardNumberElement,
                        billing_details: {
                            "name": firstName +' '+lastName,
                        },
                    }
                }).then((result) => {
                    window.location.href = redirect;
                });
            },
            error: function(xhr) {
                console.log(xhr);
                if ( xhr.status === 500 || xhr.status === 400) {
                    try {
                        var response = JSON.parse(xhr.responseText);
                        var errorMessage = response.message;
                        message['message'] = errorMessage;
                        msg.removeClass(function (index, className) {
                            return (className.match (/(^|\s)alert-\S+/g) || []).join(' ');
                        });
                        msg.addClass("alert-"+message['type']);
                        msg.html(message['message']);
                        msg.show();

                        enableBillingInfo(false);
                        $('#loading_dev').hide();
                    } catch (error) {
                        console.error("Error parsing: " + error);
                    }
                }
            }
        });
    }

</script>
