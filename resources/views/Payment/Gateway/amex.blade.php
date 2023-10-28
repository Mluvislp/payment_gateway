<section id="content3" class="tab-content">
    <form action="" method="post">
        @csrf
        <div class="pymt-radio">
            <div class="row-payment-method payment-row-last">
                <div class="select-txt hr">
                    <p class="pymt-type-name">Amex Card</p>
                </div>
                <div class="select-logo">
                    <div class="select-logo-sub logo-spacer">
                        <img src="https://d1ubwt7z1ubyyw.cloudfront.net/uploads/amex-1632383764.svg" alt="Amex"/>
                    </div>
                </div>
            </div>
        </div>
            <div class="form-cc">
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
</section>
