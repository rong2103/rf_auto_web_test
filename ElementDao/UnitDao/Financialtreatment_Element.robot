*** Variables ***

#单位 - 账务处理模块元素

#Tab账务处理
${Unit_Financialtreatment_Tab}      //button[@class='ant-btn ant-btn-default ant-btn-lg']

#挂帐单位下拉框
${Unit_Fctrt_SelectUnits}       //div[@class='ant-select-selection__rendered ng-tns-c9-228 ng-star-inserted']
#挂账单位选择 - 全部
${Unit_Fctrt_SelectUnits_All}       //li[@class='ant-select-dropdown-menu-item ng-tns-c9-228 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']

#单位名称输入框
${Unit_Fctrt_UnitNameSendKey}       //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']

#查询按钮
${Unit_Fctrt_SelectButton}      //button[@class='ant-btn ant-btn-primary']

#上一页
${Unit_Fctrt_PageUp}        //li[@class='ant-pagination-prev']
#下一页
${Unit_Fctrt_PageDown}      //li[@class='ant-pagination-next']
#10条一页
${Unit_Fctrt_PageTen}       //li[@class='ant-select-dropdown-menu-item ng-tns-c9-97 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#20条一页
${Unit_Fctrt_PageTwenty}        //html//div[@class='cdk-overlay-container']//li[2]
#30条一页
${Unit_Fctrt_PageThirty}        //html//div[@class='cdk-overlay-container']//li[3]
#40条一页
${Unit_Fctrt_PageForty}         //html//div[@class='cdk-overlay-container']//li[4]
#50条一页
${Unit_Fctrt_PageFifty}         //html//div[@class='cdk-overlay-container']//li[5]

#预收款按钮
${Unit_Fctrt_AdvancesReceivedButton}        //html//tr[1]/td[15]/span[1]
#预收款现金单选框
${Unit_Fctrt_AdvancesReceived_Cash}     //html//nz-modal[@ng-reflect-nz-visible='true']//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']/span[2]
#预收款银行卡单选框
${Unit_Fctrt_AdvancesReceived_Bank}     //html//nz-modal[@ng-reflect-nz-visible='true']//label[2]/span[2]
#预收款银行卡号输入框
${Unit_Fctrt_AdvancesReceived_SendBank}
#预收款支票单选框
${Unit_Fctrt_AdvancesReceived_Cheque}       //html//nz-modal[@ng-reflect-nz-visible='true']//label[3]/span[2]
#预收款支票号输入框
${Unit_Fctrt_AdvancesReceived_SendCheque}       //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#预收款微信单选框
${Unit_Fctrt_AdvancesReceived_WeChat}       //html//nz-modal[@ng-reflect-nz-visible='true']//label[4]/span[2]
#预收款微信授权码输入框
${Unit_Fctrt_AdvancesReceived_WeChatCode}       //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#预收款支付宝单选框
${Unit_Fctrt_AdvancesReceived_Ali}      //html//label[5]/span[2]
#预收款支付宝授权码输入框
${Unit_Fctrt_AdvancesReceived_AliCode}      //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#预收款金额输入框
${Unit_Fctrt_AdvancesReceived_SendMoney}        //nz-input-number[@name='fee']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#预收款备注输入框
${Unit_Fctrt_AdvancesReceived_SendRemark}       //textarea[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#预收款打印回执单单选框按钮
${Unit_Fctrt_AdvancesReceived_PrintButton}      //html//nz-modal[@ng-reflect-nz-visible='true']//div[@class='ng-star-inserted']//span[2]
#预收款确定按钮
${Unit_Fctrt_AdvancesReceived_ConfirmButton}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#预收款取消按钮
${Unit_Fctrt_AdvancesReceived_CancelButton}     //button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']

#账务结算按钮
${Unit_Fctrt_Settle_Button}     //html//tr[1]/td[15]/span[3]
#选择账务单选按钮
${Unit_Fctrt_Settle_SelectAccount}      //html//nz-modal[@ng-reflect-nz-visible='true']//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']/span[2]
#选择账套单选按钮
${Unit_Fctrt_Settle_SelectAccountGroup}     //html//nz-modal[@ng-reflect-nz-visible='true']//label[@class='ant-radio-wrapper']/span[2]
#选择账套按钮
${Unit_Fctrt_Settle_SelectAccountGroup_Button}      //button[@class='ant-btn ant-btn-default ant-btn-lg ng-star-inserted'][text()='选择账套']
#收款按钮
${Unit_Fctrt_Settle_GatheringButton}            //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='收款']
#收款现金单选框
${Unit_Fctrt_Settle_GatheringCash}      //html//nz-modal[@ng-reflect-nz-visible='true']//nz-radio-group[@class='ant-radio-group ng-untouched ng-pristine ng-valid ng-star-inserted']/label[@class='ant-radio-wrapper ant-radio-wrapper-checked']/span[2]
#收款银行卡单选框
${Unit_Fctrt_Settle_GatheringBank}      //html//nz-modal[@ng-reflect-nz-visible='true']//nz-radio-group[@class='ant-radio-group ng-untouched ng-pristine ng-valid ng-star-inserted']/label[@class='ant-radio-wrapper']/span[2]
#收款金额输入框
${Unit_Fctrt_Settle_GatheringMoney}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#收款备注输入框
${Unit_Fctrt_Settle_GatheringRemark}        //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#收款确定按钮
${Unit_Fctrt_Settle_GatheringConfirm}       //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#收款取消按钮
${Unit_Fctrt_Settle_GatheringCancel}        //html//nz-modal[@ng-reflect-nz-visible='true']//div[@class='ant-modal-footer ng-star-inserted']/button[2]
#微信按钮
${Unit_Fctrt_Settle_WeChatButton}       //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='微信']
#微信金额输入框
${Unit_Fctrt_Settle_WeChatMoney}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#微信授权码输入框
${Unit_Fctrt_Settle_WeChatCode}     //nz-input[@nzmin='0']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#微信备注
${Uint_Fctrt_Settle_WeChatRemark}       //html//nz-input[2]/input[1]
#微信确定按钮
${Unit_Fctrt_Settle_WeChatConfirm}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#微信取消按钮
${Unit_Fctrt_Settle_WeChatCancel}       //html//nz-modal[@ng-reflect-nz-visible='true']//div[@class='ant-modal-footer ng-star-inserted']/button[2]
#支付宝按钮
${Unit_Fctrt_Settle_AliButton}      //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='支付宝']
#支付宝额输入框
${Unit_Fctrt_Settle_AliMoney}       //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#支付宝授权码输入框
${Unit_Fctrt_Settle_AliCode}        //nz-input[@nzmin='0']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#支付宝备注
${Uint_Fctrt_Settle_AliRemark}      //html//nz-input[2]/input[1]
#支付宝确定按钮
${Unit_Fctrt_Settle_AliConfirm}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#支付宝取消按钮
${Unit_Fctrt_Settle_AliCancel}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']
#退款按钮
${Unit_Fctrt_Settle_ReimburseButton}        //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='退款']
#退款方式 - 现金
${Unit_Fctrt_Settle_ReimburseType_Cash}     //html//nz-modal[@ng-reflect-nz-visible='true']//nz-radio-group[@class='ant-radio-group ng-untouched ng-pristine ng-valid ng-star-inserted']/label[@class='ant-radio-wrapper ant-radio-wrapper-checked']/span[2]
#退款方式 - 支付宝
${Unit_Fctrt_Settle_ReimburseType_Ali}      //html//nz-modal[@ng-reflect-nz-visible='true']//nz-radio-group[@class='ant-radio-group ng-untouched ng-pristine ng-valid ng-star-inserted']/label[2]/span[2]
#退款方式 - 微信
${Unit_Fctrt_Settle_ReimburseType_WeChat}       //html//nz-modal[@ng-reflect-nz-visible='true']//label[3]/span[2]
#退款方式 - 银行卡
${Unit_Fctrt_Settle_ReimburesType_RankNmber}        //html//nz-radio-group[@class='ant-radio-group ng-valid ng-star-inserted ng-dirty ng-touched']/label[@class='ant-radio-wrapper ant-radio-wrapper-checked']/span[2]
#退款支付宝退款项选择
${Unit_Fctrt_Settle_Ali_ReimburseNapeSelect}        //div[@class='ant-select-selection__rendered ng-tns-c9-240 ng-star-inserted']
#退款微信退款项选择
${Unit_Fctrt_Settle_WeChat_ReimburseNapeSelect}     //div[@class='ant-select-selection__rendered ng-tns-c9-241 ng-star-inserted']
#退款金额输入框
${Unit_Fctrt_Settle_Reimburse_Money}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#退款备注输入框
${Unit_Fctrt_Settle_Reimburse_Remark}       //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input[@class='ant-input-wrapper ng-pristine ng-valid ng-star-inserted ng-touched']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#退款确定按钮
${Unit_Fctrt_Settle_Reimburse_Confirm}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#退款取消按钮
${Unit_Fctrt_Settle_Reimburse_Cancel}       //html//nz-modal[@ng-reflect-nz-visible='true']//div[@class='ant-modal-footer ng-star-inserted']/button[2]
#冲调按钮
${Unit_Fctrt_Settle_RichButton}     //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='冲调']
#免单按钮
${Unit_Fctrt_Settle_FofCButton}     //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='免单']
#免单金额输入框
${Unit_Fctrt_Settle_FofC_Money}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#免单备注输入框
${Unit_Fctrt_Settle_FofC_Remark}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input[@class='ant-input-wrapper ng-pristine ng-valid ng-star-inserted ng-touched']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#免单确定按钮
${Unit_Fctrt_Settle_FofC_Confirm}       //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#免单取消按钮
${Unit_Fctrt_Settle_FofC_Cancel}        //html//nz-modal[@ng-reflect-nz-visible='true']//div[@class='ant-modal-footer ng-star-inserted']/button[2]
#预收款按钮
${Unit_Fctrt_Settle_AdvancesReceivedButton}     //button[@class='ant-btn ng-star-inserted ant-btn-primary ant-btn-lg'][text()='预收款']
#预收款金额输入框
${Unit_Fctrt_Settle_AdvancesReceived_Money}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#预收款备注输入框
${Unit_Fctrt_Settle_AdvancesReceived_Remark}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input[@class='ant-input-wrapper ng-pristine ng-valid ng-star-inserted ng-touched']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#预收款确定按钮
${Unit_Fctrt_Settle_AdvancesReceived_Confirm}       //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#预收款取消按钮
${Unit_Fctrt_Settle_AdvancesReceived_Cancel}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']
#支票按钮
${Unit_Fctrt_Settle_ChequeButton}       //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='支票']
#支票号输入框
${Unit_Fctrt_Settle_ChequeNmber}        //html//nz-modal[@ng-reflect-nz-visible='true']//nz-input[1]/input[1]
#支票金额输入框
${Unit_Fctrt_Settle_Cheque_Money}       //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#支票备注输入框
${Unit_Fctrt_Settle_Cheque_Remark}      //html//nz-modal[@ng-reflect-nz-visible='true']//nz-input[2]/input[1]
#支票确定按钮
${Unit_Fctrt_Settle_Cheque_Confirm}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#支票取消按钮
${Unit_Fctrt_Settle_Cheque_Cancel}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']
#结算账单账务移除按钮
${Unit_Fctrt_Settle_RemoveActButton}        //html//nz-modal[@ng-reflect-nz-visible='true']//td[4]
#账套增加账务按钮
${Unit_Fctrt_CPM_AddSettle_Button}      //html//span[1]/button[1]
#账套结账按钮
${Unit_Fctrt_CPM_Settle_ConfirmButton}      //html//span[2]/button[1]
#账套取消按钮
${Unit_Fctrt_CPM_Settle_CancelButton}       //html//span[3]/button[1]
#账务结算打印回执单按钮
${Unit_Fctrt_CPM_PrintButton}       //html//nz-modal[@ng-reflect-nz-visible='true']//div[@class='ng-star-inserted']//span[2]

#-------------Text元素
#


