*** Variables ***

#单位 - 账务查询模块元素

#Tab账务查询
${Unit_Accountdetails_Tab}      //a[@ng-reflect-router-link='/unit/actionrecord/accountdeta']

#上一页
${Unit_Actd_PageUp}     //li[@class='ant-pagination-prev']
#下一页
${Unit_Actd_PageDown}       //li[@class='ant-pagination-next']
#10条一页
${Unit_Actd_PageTen}        //li[@class='ant-select-dropdown-menu-item ng-tns-c9-97 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#20条一页
${Unit_Actd_PageTwenty}     //html//div[@class='cdk-overlay-container']//li[2]
#30条一页
${Unit_Actd_PageThirty}     //html//div[@class='cdk-overlay-container']//li[3]
#40条一页
${Unit_Actd_PageForty}      //html//div[@class='cdk-overlay-container']//li[4]
#50条一页
${Unit_Actd_PageFifty}      //html//div[@class='cdk-overlay-container']//li[5]

#所属酒店查询下拉框
${Unit_Actd_TheirHotel}     //div[@class='ant-select-selection__rendered ng-tns-c9-230 ng-star-inserted']

#挂账单位下拉框 全部
${Unit_Actd_UnitNmaeSelect_All}     //div[@class='ant-select-selection__rendered ng-tns-c9-231 ng-star-inserted']

#结账状态下拉框 - 全部
${Unit_Actd_ActState_All}       //div[@class='ant-select-selection__rendered ng-tns-c9-232 ng-star-inserted']
#结账状态下拉框 - 已结
${Unit_Actd_ActState_Yes}       //html//div[@class='cdk-overlay-container']//li[2]
#结账状态下拉框 - 未结
${Unit_Actd_ActState_Not}       //html//div[@class='cdk-overlay-container']//li[3]

#账务查询按钮
${Unit_Actd_SelecltButton}      //button[@class='ant-btn ant-btn-primary']

#高级查询按钮
${Unit_Actd_HighSelectButton}       //i[@class='anticon anticon-filter']

#消费单选框 - 不限
${Unit_Actd_ConsumeDate_Unlimited}      //span[@class='ant-radio-button ant-radio-button-checked']
# - 今日
${Unit_Actd_ConsumeDate_ToDay}      //html//label[2]
# - 昨日
${Unit_Actd_ConsumeDate_YesterDay}      //html//label[3]
# - 上周
${Unit_Actd_ConsumeDate_LastWeek}       //html//label[4]
# - 本周
${Unit_Actd_ConsumeDate_BenWeek}        //html//label[5]
# - 上月
${Unit_Actd_ConsumeDate_LastMotch}      //html//label[6]
# - 本月
${Unit_Actd_ConsumeDate_BenMotch}       //html//label[7]
# - 自定义
${Unit_Actd_ConsumeDate_Custom}     //html//label[8]
# - 自定义开始时间选择
${Unit_Actd_ConsumeBeginDate_CustomSelect}      //span[@class='ng-tns-c31-236']
# - 自定义开始时间点击
${Unit_Actd_ConsumeBeginDateClick_Custom}       //input[@class='ant-calendar-input']
# - 自定义开始时间输入
${Unit_Actd_ConsumeBeginDateSend_Custom}        //input[@class='ant-calendar-input']
# - 自定义开始时间 - 今天
${Unit_Actd_ConsumeBeginDateToDay_Custom}       //a[@class='ant-calendar-today-btn']
# - 自定义结束时间选择
${Unit_Actd_ConsumeEndDate_CustomSelect}        //span[@class='ng-tns-c31-237']
# - 自定义结束时间点击
${Unit_Actd_ConsumeEndDateClick_Custom}        //input[@class='ant-calendar-input']
# - 自定义结束时间输入
${Unit_Actd_ConsumeEndDateSend_Custom}          //input[@class='ant-calendar-input']
# - 自定义结束时间 - 今天
${Unit_Actd_ConsumeEndDateToDay_Custom}         //a[@class='ant-calendar-today-btn']

#姓名输入框
${Unit_Actd_SendGestName}       //input[@class='ant-input ng-pristine ng-valid ng-star-inserted ng-touched']

#房间号输入框
${Unit_Actd_SendRoomNmber}          //html//nz-input[2]/input[1]

# - 入住开始时间选择
${Unit_Actd_InHouseBeginDate_Select}     //span[@class='ng-tns-c31-234']
# - 入住开始时间点击
${Unit_Actd_InHouseBeginDateClick}      //input[@class='ant-calendar-input']
# - 入住开始时间输入
${Unit_Actd_InHouseBeginDateSend}       //input[@class='ant-calendar-input']
# - 入住开始时间 - 今天
${Unit_Actd_InHouseBeginDateToDay}      //a[@class='ant-calendar-today-btn']
# - 入住结束时间选择
${Unit_Actd_InHouseEndDate_Select}      //span[@class='ng-tns-c31-235']
# - 入住结束时间点击
${Unit_Actd_InHouseEndDateClick}        //input[@class='ant-calendar-input']
# - 入住结束时间输入
${Unit_Actd_InHouseEndDateSend}       //input[@class='ant-calendar-input']
# - 结束时间 - 今天
${Unit_Actd_InHouseEndDateToDay}        //a[@class='ant-calendar-today-btn']

#-------------Text元素
#
