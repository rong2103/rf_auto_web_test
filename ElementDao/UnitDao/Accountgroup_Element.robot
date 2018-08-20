*** Variables ***

#单位 - 账套管理模块元素

#Tab行动纪录
${Unit_Accountgroup_Tab}        //a[@ng-reflect-router-link='/unit/actionrecord/accountgrou']

#账套状态下拉框
${Unit_Actg_State}      //div[@class='ant-select-selection__rendered ng-tns-c9-193 ng-star-inserted']
#账套状态 - 全部
${Unit_Actg_State_All}       //li[@class='ant-select-dropdown-menu-item ng-tns-c9-193 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#账套状态 - 已结
${Unit_Actg_State_Settled}          //html//div[@class='cdk-overlay-container']//li[2]
#账套状态 - 未结
${Unit_Actg_State_NoSettled}        //html//div[@class='cdk-overlay-container']//li[3]

#账套单位选择
${Unit_Actg_SelectUnits}            //div[@class='ant-select-selection__rendered ng-tns-c9-194 ng-star-inserted']
#单位选择 - 全部
${Unit_Actg_SelectUnits_All}        //li[@class='ant-select-dropdown-menu-item ng-tns-c9-194 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']

#账套名输入框
${Unit_ActgNameSendKey}     //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']

#查询按钮
${Unit_Actg_Select_Button}      //div[@class='pull-left']//button[@class='ant-btn ant-btn-primary']

#新增账套按钮
${Unit_AddActg_Button}      //div[@class='pull-right']//button[@class='ant-btn ant-btn-primary']
#单位选择下拉框
${Unit_AddActg_SelectUnit}      //div[@class='ant-select-selection__rendered ng-tns-c9-195 ng-star-inserted']
#账套名称输入
${Unit_AddActg_NameSend}        //nz-input[@ng-reflect-nz-place-holder='输入账套名称']
#选择账务
${Unit_AddActg_SelectActg}          //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//button[@class='ant-btn ant-btn-default ant-btn-lg ng-star-inserted']
# - 消费开始时间选择
${Unit_AddActg_ConsumeBeginDate_CustomSelect}       //nz-datepicker[@name='addcheckinTimeStart']
# - 消费开始时间点击
${Unit_AddActg_ConsumeBeginDateClick_Custom}        //input[@class='ant-calendar-input']
# - 消费开始时间输入
${Unit_AddActg_ConsumeBeginDateSend_Custom}     //input[@class='ant-calendar-input']
# - 消费开始时间 - 今天
${Unit_AddActg_ConsumeBeginDateToDay_Custom}        //a[@class='ant-calendar-today-btn']
# - 消费结束时间选择
${Unit_AddActg_ConsumeEndDate_CustomSelect}     //span[@class='ng-tns-c31-198']
# - 消费结束时间点击
${Unit_AddActg_ConsumeEndDateClick_Custom}      //nz-datepicker[@name='addcheckinTimeEnd']
# - 消费结束时间输入
${Unit_AddActg_ConsumeEndDateSend_Custom}       //input[@class='ant-calendar-input']
# - 消费结束时间 - 今天
${Unit_AddActg_ConsumeEndDateToDay_Custom}      //input[@class='ant-calendar-input']
#消费时间查询按钮
${Unit_AddActg_ConsumeDateSelectButton}     //a[@class='ant-calendar-today-btn']
#消费纪录第一条
${Unit_AddActg_ConsumeDateOne}      //span[@class='ant-checkbox ant-checkbox-checked ant-checkbox-focused']
#账务选择 - 确定按钮
${Unit_AddActg_ConfirmAccountButton}        //html//nz-modal[3]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
#账务选择 - 取消按钮
${Unit_AddActg_CancelAccountButton}     //div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']
#账套账务移除按钮
${Unit_AddActg_RemoveAccountButton}     //span[@style='cursor: pointer; color: rgb(73, 169, 238);']
#账套确定按钮
${Unit_AddActgConfirmButton}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#账套取消按钮
${Unit_AddActgCancelButton}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-default ant-btn-lg ng-star-inserted']

#编辑账套按钮
${Unit_UpdateActg_Button}       //html//tr[1]/td[10]/span[1]

#账套结账按钮
${Unit_Actg_SettleButton}       //html//tr[1]/td[10]/span[2]
#收款按钮
${Unit_Actg_Settle_GatheringButton}     //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='收款']
#收款现金单选框
${Unit_Actg_Settle_GatheringCash}       //html//nz-modal[@ng-reflect-nz-visible='true']//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']/span[2]
#收款银行卡单选框
${Unit_Actg_Settle_GatheringBank}       //html//nz-modal[@ng-reflect-nz-visible='true']//label[@class='ant-radio-wrapper']/span[2]
#收款金额输入框
${Unit_Actg_Settle_GatheringMoney}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#收款备注输入框
${Unit_Actg_Settle_GatheringRemark}     //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#收款确定按钮
${Unit_Actg_Settle_GatheringConfirm}        //html//nz-modal[6]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
#收款取消按钮
${Unit_Actg_Settle_GatheringCancel}     //html//nz-modal[6]/div[1]/div[2]/div[1]/div[1]/div[3]/button[2]
#微信按钮
${Unit_Actg_Settle_WeChatButton}        //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='微信']
#微信金额输入框
${Unit_Actg_Settle_WeChatMoney}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#微信授权码输入框
${Unit_Actg_Settle_WeChatCode}        //nz-input[@nzmin='0']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#微信备注
${Uint_Actg_Settle_WeChatRemark}     //html//nz-input[2]/input[1]
#微信确定按钮
${Unit_Actg_Settle_WeChatConfirm}       //html//nz-modal[8]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
#微信取消按钮
${Unit_Actg_Settle_WeChatCancel}        //html//nz-modal[8]/div[1]/div[2]/div[1]/div[1]/div[3]/button[2]
#支付宝按钮
${Unit_Actg_Settle_AliButton}       //button[@class='ant-btn ng-star-inserted ant-btn-primary ant-btn-lg'][text()='支付宝']
#支付宝额输入框
${Unit_Actg_Settle_AliMoney}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#支付宝授权码输入框
${Unit_Actg_Settle_AliCode}     //nz-input[@nzmin='0']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#支付宝备注
${Uint_Actg_Settle_AliRemark}       //html//nz-input[2]/input[1]
#支付宝确定按钮
${Unit_Actg_Settle_AliConfirm}      //html//nz-modal[8]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
#支付宝取消按钮
${Unit_Actg_Settle_AliCancel}       //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']
#退款按钮
${Unit_Actg_Settle_ReimburseButton}     //button[@class='ant-btn ng-star-inserted ant-btn-primary ant-btn-lg'][text()='退款']
#退款方式 - 现金
${Unit_Actg_Settle_ReimburseType_Cash}      //html//nz-modal[@ng-reflect-nz-visible='true']//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']/span[2]
#退款方式 - 支付宝
${Unit_Actg_Settle_ReimburseType_Ali}       //html//nz-modal[@ng-reflect-nz-visible='true']//label[2]/span[2]
#退款方式 - 微信
${Unit_Actg_Settle_ReimburseType_WeChat}        //html//nz-modal[@ng-reflect-nz-visible='true']//label[3]/span[2]
#退款支付宝退款项选择
${Unit_Actg_Settle_Ali_ReimburseNapeSelect}     //div[@class='ant-select-selection__rendered ng-tns-c9-222 ng-star-inserted']
#退款微信退款项选择
${Unit_Actg_Settle_WeChat_ReimburseNapeSelect}      //div[@class='ant-select-selection__rendered ng-tns-c9-223 ng-star-inserted']
#退款金额输入框
${Unit_Actg_Settle_Reimburse_Money}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#退款备注输入框
${Unit_Actg_Settle_Reimburse_Remark}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input[@class='ant-input-wrapper ng-pristine ng-valid ng-star-inserted ng-touched']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#退款确定按钮
${Unit_Actg_Settle_Reimburse_Confirm}       //html//nz-modal[7]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
#退款取消按钮
${Unit_Actg_Settle_Reimburse_Cancel}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']
#冲调按钮
${Unit_Actg_Settle_RichButton}      //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='冲调']
#免单按钮
${Unit_Actg_Settle_FofCButton}      //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='免单']
#免单金额输入框
${Unit_Actg_Settle_FofC_Money}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#免单备注输入框
${Unit_Actg_Settle_FofC_Remark}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input[@class='ant-input-wrapper ng-pristine ng-valid ng-star-inserted ng-touched']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#免单确定按钮
${Unit_Actg_Settle_FofC_Confirm}        //html//nz-modal[10]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
#免单取消按钮
${Unit_Actg_Settle_FofC_Cancel}     //html//nz-modal[10]/div[1]/div[2]/div[1]/div[1]/div[3]/button[2]
#预收款按钮
${Unit_Actg_Settle_AdvancesReceivedButton}      //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='预收款']
#预收款金额输入框
${Unit_Actg_Settle_AdvancesReceived_Money}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#预收款备注输入框
${Unit_Actg_Settle_AdvancesReceived_Remark}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input[@class='ant-input-wrapper ng-pristine ng-valid ng-star-inserted ng-touched']//input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#预收款确定按钮
${Unit_Actg_Settle_AdvancesReceived_Confirm}        //html//nz-modal[10]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
#预收款取消按钮
${Unit_Actg_Settle_AdvancesReceived_Cancel}     //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']
#支票按钮
${Unit_Actg_Settle_ChequeButton}        //button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted'][text()='支票']
#支票号输入框
${Unit_Actg_Settle_ChequeNmber}     //html//nz-modal[@ng-reflect-nz-visible='true']//nz-input[1]/input[1]
#支票金额输入框
${Unit_Actg_Settle_Cheque_Money}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#支票备注输入框
${Unit_Actg_Settle_Cheque_Remark}       //html//nz-modal[@ng-reflect-nz-visible='true']//nz-input[2]/input[1]
#支票确定按钮
${Unit_Actg_Settle_Cheque_Confirm}      //html//nz-modal[10]/div[1]/div[2]/div[1]/div[1]/div[3]/button[1]
#支票取消按钮
${Unit_Actg_Settle_Cheque_Cancel}       //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']
#结算账单账务移除按钮
${Unit_Actg_Settle_RemoveActButton}         /html/body/app-root/app-layout/div/div[2]/div/app-commissionstrategy/div[2]/nz-modal[5]/div/div[2]/div[1]/div/div[2]/div[2]/nz-table/div/nz-spin/div[2]/div/div/div/div/div/table/tbody/tr/td[5]/span
#账套增加账务按钮
${Unit_Actg_CPM_AddSettle_Button}       //html//nz-modal[@ng-reflect-nz-visible='true']//div[@class='ant-modal-footer ng-star-inserted']/button[1]
#账套结账按钮
${Unit_Actg_CPM_Settle_ConfirmButton}       //html//nz-modal[@ng-reflect-nz-visible='true']//div[@class='ant-modal-footer ng-star-inserted']/button[2]
#账套取消按钮
${Unit_Actg_CPM_Settle_CancelButton}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-default ant-btn-lg ng-star-inserted']

#撤销结账按钮
${Unit_Actg_UndoCheckOut_Button}        //html//tr[3]/td[10]/span[1]
#结算单补打按钮
${Unit_Actg_PrintAdvance_Button}        //html//tr[3]/td[10]/span[2]
#确定结算单补打
${Unit_Actg_PrintAdvance_ButtonYes}     //div[@class='printFoot ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg']
#取消结算单补打
${Unit_Actg_PrintAdvance_ButtonNo}      //button[@class='ant-btn ant-btn-default ant-btn-lg']

#上一页
${Unit_Actg_PageUp}     //li[@class='ant-pagination-prev']
#下一页
${Unit_Actg_PageDown}       //li[@class='ant-pagination-next']
#10条一页
${Unit_Actg_PageTen}        //li[@class='ant-select-dropdown-menu-item ng-tns-c9-97 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#20条一页
${Unit_Actg_PageTwenty}     //html//div[@class='cdk-overlay-container']//li[2]
#30条一页
${Unit_Actg_PageThirty}     //html//div[@class='cdk-overlay-container']//li[3]
#40条一页
${Unit_Actg_PageForty}      //html//div[@class='cdk-overlay-container']//li[4]
#50条一页
${Unit_Actg_PageFifty}      //html//div[@class='cdk-overlay-container']//li[5]

#-------------Text元素
#
