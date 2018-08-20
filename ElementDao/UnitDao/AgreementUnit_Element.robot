*** Variables ***

#单位 - 单位管理模块元素

#导航栏单位模块
${Navigation_Bar_Unit}      //li[@class='navActive']//a

#Tab协议单位缩进
${Tab_Unit}      //div[@class='ng-tns-c11-15 ant-menu-submenu-title']

#Tab单位管理
${Unit_Agreement_Unit}      //a[@ng-reflect-router-link='/unit/agreementunit']
#单位管理页面
${Unit_Agreement_GetAg}    //div[@class='firstTitle ant-col-24']

#单位名称输入框
${Init_Unit_Name}       //input[@class='ant-input ng-untouched ng-pristine ng-valid ng-star-inserted']

#状态下拉框
${Init_Unit_State}      //div[@class='ant-select-selection__rendered ng-tns-c9-3 ng-star-inserted']//div[@class='ant-select-selection__placeholder']
#select - 全部
${Init_Unit_State_All}      //li[@class='ant-select-dropdown-menu-item ng-tns-c9-3 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#select - 启用
${Init_Unit_State_Start}        //html//div[@class='cdk-overlay-container']//li[2]
#select - 禁用
${Init_Unit_State_Forbidden}        //html//div[@class='cdk-overlay-container']//li[3]
#select - 过期
${Init_Unit_State_Pass}       //html//div[@class='cdk-overlay-container']//li[4]

#是否共享下拉框
${Init_Unit_Share}      //div[@class='ant-select-selection__rendered ng-tns-c9-4 ng-star-inserted']//div[@class='ant-select-selection__placeholder']
#select - 全部
${Init_Unit_Share_All}      //li[@class='ant-select-dropdown-menu-item ng-tns-c9-4 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#select - 是
${Init_Unit_Share_Yes}      //html//div[@class='cdk-overlay-container']//li[2]
#select - 否
${Init_Unit_Share_Not}      //html//div[@class='cdk-overlay-container']//li[3]

#查询按钮
${Init_Unit_Select_Button}      //div[@class='pull-left']//button[@class='ant-btn ant-btn-primary']

#高级查询
${Init_Unit_HighSelect_Button}      //i[@class='anticon anticon-filter']

#联系人输入框
${Init_Unit_Contact}       //html//div[@class='memberType ant-col-24 ng-star-inserted']/nz-input[1]/input[1]

#销售员下拉框
${Init_Unit_Salesman}       //div[@class='ant-select-selection__rendered ng-tns-c9-23 ng-star-inserted']//div[@class='ant-select-selection__placeholder']
#select - 全部
${Init_Unit_Salesman_All}       //li[@class='ant-select-dropdown-menu-item ng-tns-c9-23 ant-select-dropdown-menu-item-active ng-star-inserted']

#手机号码输入框
${Init_Unit_MobilePhone}        //html//nz-input[2]/input[1]

#挂账额度开始输入框
${Init_Unit_PaymentAmount_Begin}    //html//nz-input[3]/input[1]
#挂账额度结束输入框
${Init_Unit_PaymentAmount_End}      //html//nz-input[4]/input[1]

#已用额度开始输入框
${Init_Unit_HaveUsedLimit_Begin}        //html//nz-input[5]/input[1]
#已用额度结束输入框
${Init_Unit_HaveUsedLimit_End}      //html//nz-input[6]/input[1]

#单位详情按钮
${Init_Unit_Particulars_Button}     //html//tr[1]/td[14]/span[1]
#查看详情返回按钮
${Init_Unit_Particulars_Return_Button}      //button[@class='ant-btn ant-btn-default']

#单位修改按钮
${Init_Unit_Update_Button}      //html//tr[1]/td[14]/span[2]

#单位鼠标悬停更多
${Init_Unit_moveTo_More}        //div[@class='ng-tns-c24-44']//a[@class='ant-dropdown-link ant-dropdown-trigger']
#moveToElement - 禁用 or 启用
${Init_Unit_More_Forbidden}     //a[@rel='noopener noreferrer']
#moveToElement - 删除
${Init_Unit_More_Delete}        //span[@style='cursor:pointer;']
#moveToElement - 确定删除
${Init_Unit_More_DeleteYes}        //button[@class='ng-tns-c25-131 ant-btn ant-btn-primary ant-btn-sm']
#moveToElement - 取消删除
${Init_Unit_More_DeleteNo}      //button[@class='ng-tns-c25-131 ant-btn ant-btn-sm']

#新增单位按钮
${Init_Add_Unit}        //button[@routerlink='/unit/agreementunit/edit-agreementunit/add']
#单位名称
${Add_Edit_Unit_Name}       //nz-input[@class='ant-input-wrapper ng-untouched ng-pristine ng-invalid']//input[@id='name']
#联系人
${Add_Edit_Unit_Contact}        //html//div[1]/div[2]/div[1]/div[2]/div[1]/nz-input[1]/input[1]
#手机
${Add_Edit_Unit_MobilePhone}        //html//div[1]/div[3]/div[1]/div[2]/div[1]/nz-input[1]/input[1]
#价格策略下拉框
${Add_Edit_Unit_PriceStrategy}      //div[@class='ant-select-selection__rendered ng-tns-c9-22 ng-star-inserted']
#计费规则下拉框
${Add_Edit_Unit_AccountingRules}        //div[@class='ant-select-selection__rendered ng-tns-c9-22 ng-star-inserted']
#挂账额度输入框
${Add_Edit_Unit_PaymentAmount}      //input[@autocomplete='off']
#挂账额度值上浮按钮
${Add_Edit_Unit_PaymentAmount_Up}       //span[@class='ant-input-number-handler-up-inner']
#挂账额度值下浮按钮
${Add_Edit_Unit_PaymentAmount_Down}     //span[@class='ant-input-number-handler-down-inner']
#单位集团共享选项
${Add_Edit_Unit_GroupPublic}        //html//label[@formcontrolname='share']/span[2]
#停用单位选项
${Add_Edit_Unit_BlockUp}        //html//label[@formcontrolname='status']/span[2]
#生效日期
${Add_Edit_Unit_Effective_Date}     //span[@class='ng-tns-c31-23']
#输入生效日期
${Add_Edit_Unit_Send_Effective_Date}        //input[@class='ant-calendar-input']
#失效日期
${Add_Edit_Unit_Expiry_Date}        //span[@class='ng-tns-c31-24']
#输入失效日期
${Add_Edit_Unit_Send_Expiry_Date}       //input[@class='ant-calendar-input']
#早餐券数量输入框
${Add_Edit_Unit_Breakfast}      //input[@id='couponNumber']
#发展途径下拉框
${Add_Edit_Unit_DevelopmentPath}        //div[@class='ant-select-selection__rendered ng-tns-c9-25 ng-star-inserted']
#销售员下拉框
${Add_Edit_Unit_Salesman}       //div[@class='ant-select-selection__rendered ng-tns-c9-26 ng-star-inserted']
#银行账号输入框
${Add_Edit_Unit_BankUmber}      //input[@id='phone']
#税号输入框
${Add_Edit_Unit_DutyNmber}      //input[@id='dutyParagraph']
#电话输入框
${Add_Edit_Unit_TelPhone}       //input[@id='taxes']
#合同号输入框
${Add_Edit_Unit_Contract}       //nz-input[@class='ant-input-wrapper ng-pristine ng-valid ng-touched']//input[@id='name']
#邮箱输入框
${Add_Edit_Unit_Mall}       //input[@id='line']
#地址输入框
${Add_Edit_Unit_Address}        //input[@id='location']
#备注输入框
${Add_Edit_Unit_Remark}     //textarea[@formcontrolname='remark']
#新增完成保存按钮
${Add_Edit_Save_Button}     //button[@type='submit']
#新增返回按钮
${Add_Edit_Return_Button}       //button[@routerlink='/unit/agreementunit']

#上一页
${Init_Unit_PageUp}     //li[@class='ant-pagination-prev']
#下一页
${Init_Unit_PageDown}       //li[@class='ant-pagination-next']
#10条一页
${Init_Unit_PageTen}        //li[@class='ant-select-dropdown-menu-item ng-tns-c9-97 ant-select-dropdown-menu-item-active ant-select-dropdown-menu-item-selected ng-star-inserted']
#20条一页
${Init_Unit_PageTwenty}     //html//div[@class='cdk-overlay-container']//li[2]
#30条一页
${Init_Unit_PageThirty}     //html//div[@class='cdk-overlay-container']//li[3]
#40条一页
${Init_Unit_PageForty}      //html//div[@class='cdk-overlay-container']//li[4]
#50条一页
${Init_Unit_PageFifty}      //html//div[@class='cdk-overlay-container']//li[5]

#-------------Text元素
#
