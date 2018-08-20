*** Variables ***

#单位 - 行动纪录模块元素

#Tab行动纪录
${Unit_Actionrecord_Tab}        //a[@ng-reflect-router-link='/unit/actionrecord']

#行动记录操作列 - 点击查看行动记录
${Unit_Record_ClickToView}      //html//tr[1]/td[12]/span[1]/a[1]

#单位名称输入框
${Record_Unit_Name}     //nz-input[@ng-reflect-nz-place-holder='输入关键字查询']

#状态查询下拉框
${Unit_Record_State}        //div[@class='ant-select-selection__rendered ng-tns-c9-92 ng-star-inserted']
#select - 全部
${Unit_Record_State_All}        //li[@class='ant-select-dropdown-menu-item ng-tns-c9-92 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#select - 启用
${Unit_Record_State_Start}      //html//div[@class='cdk-overlay-container']//li[2]
#select - 禁用
${Unit_Record_State_Forbidden}      //html//div[@class='cdk-overlay-container']//li[3]

#查询按钮
${Unit_Record_Select_Button}        //button[@class='ant-btn ant-btn-primary']

#高级查询
${Unit_Record_HighSelect_Button}        //i[@class='anticon anticon-filter']

#最后行动时间 - 不限
${Unit_Record_Data_Unlimited}       //span[@class='ant-radio-button ant-radio-button-checked']
#最后行动时间 - 一个月
${Unit_Record_Data_OneMonth}        //html//label[2]
#最后行动时间 - 二个月
${Unit_Record_Data_TwoMonth}        //html//label[3]
#最后行动时间 - 三个月
${Unit_Record_Data_ThreeMonth}      //html//label[4]
#最后行动时间 - 六个月
${Unit_Record_Data_SixMonth}        //html//label[5]
#最后行动时间 - 12个月
${Unit_Record_Data_TwelveMonth}     //html//label[6]
#自定义最后行动时间按钮
${Unit_Record_Data_Custom}      //html//label[7]
#自定义最后行动时间 - 生效日期
${Unit_Record_Effective_Date}       //span[@class='ng-tns-c31-100']
#自定义最后行动时间 - 点击日期
${Unit_Record_EffectiveClick_Date}      //input[@class='ant-calendar-input']
#自定义最后行动时间 - 输入生效日期
${Unit_Record_EffectiveSend_Date}       //input[@class='ant-calendar-input']
#自定义最后行动时间 - 今天
${Unit_Record_EffectiveToDay_Dtae}      //a[@class='ant-calendar-today-btn']
#自定义最后行动时间 - 失效日期
${Unit_Record_Expiry_Date}      //span[@class='ng-tns-c31-101']
#自定义最后行动时间 - 点击失效日期
${Unit_Record_ExpiryClick_Date}         //input[@class='ant-calendar-input']
#自定义最后行动时间 - 输入失效日期
${Unit_Record_ExpirySend_Date}      //input[@class='ant-calendar-input']
#自定义最后行动时间 - 今天
${Unit_Record_ExpriyToDay_Date}     //a[@class='ant-calendar-today-btn']

#总消费开始输入框
${Unit_Record_TotalConsumption_Begin}       //html//div[@class='memberType ant-col-24 ng-star-inserted']/nz-input[1]/input[1]
#总消费结束输入框
${Unit_Record_TotalConsumption_End}      //html//nz-input[2]/input[1]

#挂账额度开始输入框
${Unit_Record_PaymentAmount_Begin}      //html//nz-input[3]/input[1]
#挂账额度结束输入框
${Unit_Record_PaymentAmount_End}        //html//nz-input[4]/input[1]

#已用额度开始输入框
${Unit_Record_HaveUsedLimit_Begin}      //html//nz-input[5]/input[1]
#已用额度结束输入框
${Unit_Record_HaveUsedLimit_End}        //html//nz-input[6]/input[1]

#上一页
${Unit_Record_PageUp}       //li[@class='ant-pagination-prev']
#下一页
${Unit_Record_PageDown}     //li[@class='ant-pagination-next']
#10条一页
${Unit_Record_PageTen}      //li[@class='ant-select-dropdown-menu-item ng-tns-c9-97 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#20条一页
${Unit_Record_PageTwenty}       //html//div[@class='cdk-overlay-container']//li[2]
#30条一页
${Unit_Record_PageThirty}       //html//div[@class='cdk-overlay-container']//li[3]
#40条一页
${Unit_Record_PageForty}        //html//div[@class='cdk-overlay-container']//li[4]
#50条一页
${Unit_Record_PageFifty}        //html//div[@class='cdk-overlay-container']//li[5]

#行动记录维护页 - 具体内容悬停
${Unit_Record_Maintain_Hover}       //nz-tooltip[@class='ng-tns-c23-102 ng-star-inserted']//a

#纪录维护页返回按钮
${Unit_Record_MaintainPage_Return}      //button[@class='ant-btn']

#纪录维护页新增按钮
${Unit_Record_Maintain_Add}     //button[@class='ant-btn ant-btn-primary']
#主题输入框
${Unit_AddRecord_Sendkey_Theme}     //input[@id='theme']
#联络人输入框
${Unit_AddRecord_Sendkey_Contact}       //input[@id='linkman']
#联络时间选择
${Unit_AddRecord_Click_ContactData}     //input[@class='ant-calendar-picker-input ant-input']
#联络时间精确点击
${Unit_AddRecord_ClickSend_ContactData}     //input[@class='ant-calendar-input']
#联络时间输入
${Unit_AddRecord_Sendkey_ContactData}       //input[@class='ant-calendar-input']
#联络时间为今天
${Unit_AddRecord_ToDay_ContactData}     //a[@class='ant-calendar-today-btn']
#联系方式下拉框
${Unit_AddRecord_Select_ContactType}        //div[@class='ant-select-selection__rendered ng-tns-c9-106 ng-star-inserted']
#联络具体内容
${Unit_AddRecord_Maintain_Remark}       //textarea[@formcontrolname='content']
#保存按钮
${Unit_AddRecord_Sava_Button}       //button[@type='submit']
#返回按钮
${Unit_AddRecord_Return}        //button[@class='ant-btn ant-btn-default']

#行动记录维护编辑按钮
${Unit_Record_Update_Button}        //span[@tabindex='0']
#行动纪录维护删除按钮
${Unit_Record_Delete_Button}        //span[@style='cursor:pointer;color: #49a9ee;']
#行动纪录维护确定删除
${Unit_Record_Delete_ButtonYes}        //button[@class='ng-tns-c25-108 ant-btn ant-btn-sm']
#行动纪录维护取消删除
${Unit_Record_Delete_ButtonNo}        //button[@class='ng-tns-c25-108 ant-btn ant-btn-primary ant-btn-sm']

#-------------Text元素
#
