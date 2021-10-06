MAP_SCREEN_NAME = 'xpath://h1[contains(text(), "Taxa Social Única")] | //h1[contains(text(), "Serviços")]'

#Social Security Main Screen
MAP_ORIGIN_ACCOUNT_LIST = 'xpath://span[@class="ng-arrow-wrapper"]'
MAP_FIRST_ORIGIN_ACCOUNT = 'xpath://ng-dropdown-panel[@class="ng-dropdown-panel ng-select-bottom"]/div[2]/div[2]/div[1]'
MAP_BENEFICIARY_LIST = 'xpath://select[@id="bb_input_1"]'
MAP_TOTAL_AMOUNT = 'xpath://input[@id="bb_element_11"] | //input[@id="bb_element_123"]'
MAP_TAX_ID = 'xpath://input[@id="bb_input_4"]'
MAP_CONFIRMATION_BUTTON = 'xpath://bb-load-button-ui[@class="bb-button-bar__button"]'

#Social Security Review Screen
MAP_CONFIRM_IBAN = 'xpath://span[@class="d-flex account-number"]'
MAP_CONFIRM_BENEFICIARY = 'xpath://fieldset[@class="bb-fieldset"]//child::div[1]//child::div[2]//child::span[2]'
MAP_CONFIRM_INTEGER_AMOUNT = 'xpath://bb-panel-container[@class="payment-container"]//child::div[1]//fieldset/div[2]//span[@class="integer"]'
MAP_CONFIRM_DECIMAL_AMOUNT = 'xpath://bb-panel-container[@class="payment-container"]//child::div[1]//fieldset/div[2]//span[@class="decimals"]'
MAP_CONFIRM_TAX_ID = 'xpath://fieldset[@class="bb-fieldset"]//child::div[3]//child::div[1]//span'
MAP_CONFIRM_PAYMENT_PERIOD = 'xpath://fieldset[@class="bb-fieldset"]//child::div[3]//child::div[2]//span'
MAP_CONFIRM_RECURRENCE = 'xpath://fieldset[@class="bb-fieldset"]//child::div[5]//child::div[1]//span[2]'
MAP_CONFIRM_TRANSACTION_COSTS_INTEGER = 'xpath://fieldset[@class="bb-fieldset"]//child::div[5]//child::div[2]//bb-amount-ui//span//span//span[2]'
MAP_CONFIRM_TRANSACTION_COSTS_DECIMAL = 'xpath://fieldset[@class="bb-fieldset"]//child::div[5]//child::div[2]//bb-amount-ui//span//span//span[4]'

#Services Screen
MAP_ENTITY_ID = 'xpath://input[@id="bb_input_3"]'
MAP_REFERENCE_ID = 'xpath://input[@id="bb_input_4"]'
