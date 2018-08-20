*** Variables ***

#单位 - 收款查询模块元素

#Tab行动纪录
${Unit_Aollection_Tab}      //a[@ng-reflect-router-link='/unit/actionrecord/collection']

#收款门店下拉框
${Unit_Alc_GatheringStores}         //div[@class='ant-select-selection__rendered ng-tns-c9-173 ng-star-inserted']

#单位名称下拉框
${Unit_Alc_UnitName}        //div[@class='ant-select-selection__rendered ng-tns-c9-174 ng-star-inserted']

#收款类型单选框 - 预收款
${Unit_Alc_PayeeType_Advance}       //html//div[@class='ant-row']//nz-radio-group[1]/label[2]/span[2]
# - 结算
${Unit_Alc_PayeeType_Close}     //html//div[@class='ant-row']//nz-radio-group[1]/label[1]/span[2]

#支付方式单选框 - 不限
${Unit_Alc_PayType_Unlimited}       //html//nz-radio-group[2]/label[1]/span[2]
# - 现金
${Unit_Alc_PayType_Cash}        //html//nz-radio-group[2]/label[2]/span[2]
# - 银行卡
${Unit_Alc_PayType_BankNmber}       //html//nz-radio-group[2]/label[3]/span[2]
# - 支票
${Unit_Alc_PayType_Cheque}      //html//nz-radio-group[2]/label[4]/span[2]
# - 支付宝
${Unit_Alc_PayType_Ali}     //html//nz-radio-group[2]/label[5]/span[2]
# - 微信
${Unit_Alc_PayType_WeChat}      //html//nz-radio-group[2]/label[6]/span[2]

#收款时间单选框 - 不限
${Unit_Alc_ReceiptDate_Unlimited}       //html//nz-radio-group[3]/label[1]/span[2]
# - 今日
${Unit_Alc_ReceiptDate_ToDay}       //html//nz-radio-group[3]/label[2]/span[2]
# - 昨日
${Unit_Alc_ReceiptDate_YesterDay}       //html//nz-radio-group[3]/label[3]/span[2]
# - 上周
${Unit_Alc_ReceiptDate_LastWeek}        //html//nz-radio-group[3]/label[4]/span[2]
# - 本周
${Unit_Alc_ReceiptDate_BenWeek}     //html//nz-radio-group[3]/label[5]/span[2]
# - 上月
${Unit_Alc_ReceiptDate_LastMotch}       //html//nz-radio-group[3]/label[6]/span[2]
# - 本月
${Unit_Alc_ReceiptDate_BenMotch}        //html//label[7]/span[2]
# - 自定义
${Unit_Alc_ReceiptDate_Custom}      //html//label[8]/span[2]
# - 自定义开始时间选择
${Unit_Alc_ReceiptBeginDate_CustomSelect}       //span[@class='ng-tns-c31-176']
# - 自定义开始时间点击
${Unit_Alc_ReceiptBeginDateClick_Custom}        //input[@class='ant-calendar-input']
# - 自定义开始时间输入
${Unit_Alc_ReceiptBeginDateSend_Custom}         //input[@class='ant-calendar-input']
# - 自定义开始时间 - 今天
${Unit_Alc_ReceiptBeginDateToDay_Custom}        //a[@class='ant-calendar-today-btn']
# - 自定义结束时间选择
${Unit_Alc_ReceiptEndDate_CustomSelect}         //span[@class='ng-tns-c31-177']
# - 自定义结束时间点击
${Unit_Alc_ReceiptEndDateClick_Custom}          //input[@class='ant-calendar-input']
# - 自定义结束时间输入
${Unit_Alc_ReceiptEndDateSend_Custom}           //input[@class='ant-calendar-input']
# - 自定义结束时间 - 今天
${Unit_Alc_ReceiptEndDateToDay_Custom}      //a[@class='ant-calendar-today-btn']

#查询按钮
${Unit_Alc_Select_Button}       //button[@class='ant-btn ant-btn-primary']

#预收款退款按钮
${Unit_Alc_Drawback_Button}     //html//tr[1]/td[9]/span[1]
#退款为现金方式
${Unit_Alc_DrawbackType_Cash}       //html//label[@class='ant-radio-wrapper']/span[2]
#退款为银行卡方式
${Unit_Alc_Drawback_Type_Bank}      //html//label[@class='ant-radio-wrapper ant-radio-wrapper-checked']/span[2]
#退款金额
${Unit_Alc_Drawback_Money}      //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-body']//nz-input-number[@nzmax='9999999.99']//div[@class='ant-input-number-input-wrap']//input[@autocomplete='off']
#退款备注
${Unit_Alc_Drawback_Remark}     //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']
#退款确定
${Unit_Alc_Drawback_Yes}        //nz-modal[@ng-reflect-nz-visible='true']//div//div[@role='dialog']//div[@role='document']//div[@class='ant-modal-content']//div[@class='ant-modal-footer ng-star-inserted']//button[@class='ant-btn ant-btn-primary ant-btn-lg ng-star-inserted']
#退款取消
${Unit_Alc_Drawback_Not}         //button[@class='ant-btn ng-star-inserted ant-btn-default ant-btn-lg']

#预收款补打按钮
${Unit_Alc_PrintAdvance}        //html//tr[1]/td[9]/span[2]
#确定打印按钮
${Unit_Alc_PrintAdvance_Yep}        //div[@class='printFoot']//button[@class='ant-btn ant-btn-primary ant-btn-lg']
#取消打印按钮
${Unit_Alc_PrintAdvance_Not}        //button[@class='ant-btn ant-btn-default ant-btn-lg']

#上一页
${Unit_Alc_PageUp}      //li[@class='ant-pagination-prev']
#下一页
${Unit_Alc_PageDown}        //li[@class='ant-pagination-next']
#10条一页
${Unit_Alc_PageTen}     //li[@class='ant-select-dropdown-menu-item ng-tns-c9-97 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#20条一页
${Unit_Alc_PageTwenty}      //html//div[@class='cdk-overlay-container']//li[2]
#30条一页
${Unit_Alc_PageThirty}      //html//div[@class='cdk-overlay-container']//li[3]
#40条一页
${Unit_Alc_PageForty}       //html//div[@class='cdk-overlay-container']//li[4]
#50条一页
${Unit_Alc_PageFifty}       //html//div[@class='cdk-overlay-container']//li[5]

#-------------Text元素
#
