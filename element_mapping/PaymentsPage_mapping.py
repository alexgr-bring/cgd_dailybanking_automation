MAP_SCREEN_NAME = 'xpath://h1[contains(text(), "Taxa Social Única")] | //h1[contains(text(), "Serviços")]'

#Social Security Main Screen
MAP_SS_MAIN_ORIGIN_ACCOUNT_LIST = 'xpath://span[@class="ng-arrow-wrapper"]'
MAP_SS_MAIN_FIRST_ORIGIN_ACCOUNT = 'xpath://ng-dropdown-panel[@class="ng-dropdown-panel ng-select-bottom"]/div[2]/div[2]/div[1] | //select[@id="bb_input_1"]'
MAP_SS_MAIN_IBAN_SELECTED = 'xpath://div[@class="bb-product-item bb-product-item-basic-account-ui product-item active"]//div//div//div//div[1]//div[2]//bb-ellipsis-ui/div'
MAP_SS_MAIN_INTEGER_AMOUNT = 'xpath://input[@id="bb_element_11"]'
MAP_SS_MAIN_DECIMAL_AMOUNT = 'xpath://input[@id="bb_element_9"]'
MAP_SS_MAIN_BENEFICIARY_LIST = 'xpath://select[@id="bb_input_1"]'
MAP_SS_MAIN_TAX_ID = 'xpath://input[@id="bb_input_4"]'
MAP_SS_MAIN_CONFIRMATION_BUTTON = 'xpath://bb-load-button-ui[@class="bb-button-bar__button"]'

#Social Security Review Screen
MAP_SS_REVIEW_IBAN = 'xpath://span[@class="d-flex account-number"]'
MAP_SS_REVIEW_INTEGER_AMOUNT = 'xpath://bb-panel-container[@class="payment-container"]//child::div[1]//fieldset/div[2]//span[@class="integer"]'
MAP_SS_REVIEW_DECIMAL_AMOUNT = 'xpath://bb-panel-container[@class="payment-container"]//child::div[1]//fieldset/div[2]//span[@class="decimals"]'
MAP_SS_REVIEW_BENEFICIARY = 'xpath://fieldset[@class="bb-fieldset"]//child::div[1]//child::div[2]//child::span[2]'
MAP_SS_REVIEW_TAX_ID = 'xpath://fieldset[@class="bb-fieldset"]//child::div[3]//child::div[1]//span'
MAP_SS_REVIEW_TRANSACTION_COSTS_INTEGER = 'xpath://fieldset[@class="bb-fieldset"]//child::div[5]//child::div[2]//bb-amount-ui//span//span//span[2]'
MAP_SS_REVIEW_TRANSACTION_COSTS_DECIMAL = 'xpath://fieldset[@class="bb-fieldset"]//child::div[5]//child::div[2]//bb-amount-ui//span//span//span[4]'
MAP_SS_REVIEW_CONFIRMATION_BUTTON = 'xpath://button[@data-role="submit-button"]'

#Services Screen
MAP_SERV_MAIN_ORIGIN_ACCOUNT_LIST = 'xpath://span[@class="ng-arrow-wrapper"]'
MAP_SERV_MAIN_IBAN_SELECTED = 'xpath://div[@class="bb-product-item bb-product-item-basic-account-ui product-item active"]//div//div//div//div[1]//div[2]//bb-ellipsis-ui/div'
MAP_SERV_MAIN_FIRST_ORIGIN_ACCOUNT = 'xpath://ng-dropdown-panel[@class="ng-dropdown-panel ng-select-bottom"]/div[2]/div[2]/div[1]'
MAP_SERV_MAIN_INTEGER_AMOUNT = 'xpath://input[@id="bb_element_11"]'
MAP_SERV_MAIN_DECIMAL_AMOUNT = 'xpath://input[@id="bb_element_9"]'
MAP_SERV_MAIN_ENTITY_ID = 'xpath://input[@id="bb_input_3"]'
MAP_SERV_MAIN_REFERENCE_ID = 'xpath://input[@id="bb_input_4"]'
MAP_SERV_MAIN_CONFIRMATION_BUTTON = 'xpath://bb-load-button-ui[@class="bb-button-bar__button"]'

#Services Review Screen
MAP_SERV_REVIEW_ORIGIN_ACCOUNT_LIST = 'xpath://span[@class="d-flex account-number"]'
MAP_SERV_REVIEW_IBAN = 'xpath://span[@class="d-flex account-number"]'
MAP_SERV_REVIEW_ENTITY_ID = 'xpath://fieldset[@class="bb-fieldset"]//child::div[2]//div[@class="col-6"]//span[2]'
MAP_SERV_REVIEW_REFERENCE_ID = 'xpath://fieldset[@class="bb-fieldset"]//child::div[3]//div[@class="col-6"]//span[2]'
MAP_SERV_REVIEW_INTEGER_AMOUNT = 'xpath://fieldset[@class="bb-fieldset"]//child::div[4]//span[2]//bb-amount-ui//span/span[1]/span[@class="integer"]'
MAP_SERV_REVIEW_DECIMAL_AMOUNT = 'xpath://fieldset[@class="bb-fieldset"]//child::div[4]//span[2]//bb-amount-ui//span/span[1]/span[@class="decimals"]'
MAP_SERV_REVIEW_TRANSACTION_COSTS_INTEGER = 'xpath://fieldset[@class="bb-fieldset"]//child::div[7]//div//bb-amount-ui//span//span//span[@class="integer"]'
MAP_SERV_REVIEW_TRANSACTION_COSTS_DECIMAL = 'xpath://fieldset[@class="bb-fieldset"]//child::div[7]//div//bb-amount-ui//span//span//span[@class="decimals"]'
MAP_SERV_REVIEW_CONFIRMATION_BUTTON = 'xpath://button[@data-role="submit-button"]'
