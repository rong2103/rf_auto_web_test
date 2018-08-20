*** Variables ***
 ${intermediary}  //a[text()="中介管理"]
 ${new_button}  //div[2]/button     #新增按钮
# 新增中介
# 中介名称
${Mediary_Name}  //*[@id="intermediaryName"]  
#中介类型下拉框和选项
${Mediary_Type_Sel}  //nz-select[@formcontrolname="intermediaryType"]/div/div/div  
${Mesiary_Type_li}  //*[@id="cdk-overlay-3"]/div/div/ul/li  
# 联系人            
${Mediary_people}  //input[@id="people"]
# 手机
${Mediary_Phone}  //input[@id="phone"]  
# 银行账号
${Mediary_BankNmber}   //input[@id="account"]
# 税号
${Mediary_DutyNmber}   //input[@id="taxes"]
# 电话
${Mediary_TelPhone}  //nz-input[@formcontrolname="telephone"]/input  
# 邮箱
${Mediary_email}       //nz-input[@formcontrolname="email"]/input  
# 地址
${Mediary_Address}   //nz-input[@formcontrolname="address"]/input
# 合同  
${Mediary_Contract}   //nz-input[@formcontrolname="agreementNo"]/input  
#生效日期
${Mediary_Effective date}  //input[@placeholder="选择生效时间"]  
#失效日期
${Mediary_Expiry date}   //input[@placeholder="请选择日期"]
#价格策略
${Mediary_PriceStrategyCode_Sel}  //nz-select[@formcontrolname="priceStrategyCode"]/div/div/div
${Mediary_PriceStrategyCode_Li}   //*[@id="cdk-overlay-4"]/div/div/ul/li
#计费规则
${Mediary_ChargingRuleCode_Sel}  //nz-select[@formcontrolname="chargingRuleCode"]/div/div/div
${Mediary_ChargingRuleCode_Li}  //*[@id="cdk-overlay-5"]/div/div/ul/li
#佣金策略
${Mediary_CommissionCode_Sel}  //nz-select[@formcontrolname="commissionCode"]/div/div/div
${Mediary_CommissionCode_Li}  //*[@id="cdk-overlay-6"]/div/div/ul/li
# 早餐券
${Mediary_Breakfast}   //nz-input[@formcontrolname="couponNumber"]/input
#发展途径
${Mediary_SourceCode_Sel}  //nz-select[@formcontrolname="sourceCode"]/div/div/div
${Mediary_SourceCode_Li}   //*[@id="cdk-overlay-7"]/div/div/ul/li
#销售员
${Mediary_Saleman_Sel}  //nz-select[@formcontrolname="saleman"]/div/div/div
${Mediary_Saleman_Li}  //*[@id="cdk-overlay-2"]/div/div/ul/li
#停用
 ${Mediary_Checkbox}   //input[@type="checkbox"]
# 挂账额度
${Mediary_PaymentAmount}  //nz-input-number[@formcontrolname="debitAmount"]/div[2]/input
# 备注 
${Mediary_Remark}   //textarea[@formcontrolname="remark"]
#保存
${Mediary_Save_button}  //*[@class="wrapBtn ant-col-24"]/button[1]
#返回
${Mediary_Return_button}  //*[@class="wrapBtn ant-col-24"]/button[2]


