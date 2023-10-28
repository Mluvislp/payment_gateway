<section id="content2" class="tab-content">
    <form action="{{route('test.payment.handle.paypaldirect')}}" method="post">
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
                    <input type="text" class="input cc-txt text-validated" value="" name="card_number"/>
                </div>
            </div>
            <div class="row-cc">
                <div class="cc-field">
                    <div class="cc-title">Expiry month<span class="numberCircle">?</span>
                    </div>
                    <input type="text" class="input cc-txt"  name="card_expiry_month" />
                </div>
                <div class="cc-field">
                    <div class="cc-title">Expiry year<span class="numberCircle">?</span>
                    </div>
                    <input type="text" class="input cc-txt"  name="card_expiry_year" />
                </div>
                <div class="cc-field">
                    <div class="cc-title">CVV Code<span class="numberCircle">?</span>
                    </div>
                    <input type="text" class="input cc-txt"  name="card_cvv" />
                </div>
            </div>
            <div class="row-cc">
                <div class="cc-field">
                    <div class="cc-title">First Name
                    </div>
                    <input type="text" class="input cc-txt"  name="card_first_name" />
                </div>
                <div class="cc-field">
                    <div class="cc-title">Last Name
                    </div>
                    <input type="text" class="input cc-txt"  name="card_last_name" />
                </div>
            </div>
            <div class="row-cc">
                <div class="cc-field">
                    <div class="cc-title">Address
                    </div>
                    <input type="text" class="input cc-txt"  name="card_address" />
                </div>
            </div>

        </div>
        <div class="button-master-container">
            <div class="button-container button-finish">
                <button>Finish Order</button>
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
