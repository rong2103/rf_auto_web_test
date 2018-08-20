*** Settings ***
Library    Selenium2Library


Resource    ../../PageObject/LoginResource.robot

Resource    ../../ElementDao/Market/RechargeRuleElement.robot   
Resource    ../../PageObject/Market/RechargeRulePage.robot

# Resource    ../../ElementDao/Market/RechargeRuleElement.robot   

Variables    ../../DataConfig/Market/RrechargeRule_datas.py
Suite Setup    BuiltIn.Run Keywords    
...           login     AND     
...           点击市场活动菜单
Suite Teardown    Selenium2Library.Close Browser

*** Test Cases ***

新增充值规则-只送金额
    点击充值规则菜单
    点击充值规则新增按钮
    输入充值规则信息    ${add_rechargerule_namedata}    ${add_recharge_amountdata}    ${add_recharge_giftdata} 
       # ${add_startdate_data}    ${addenddatedata}
    点击保存按钮
    验证元素期望值    ${list_name}    ${add_rechargerule_namedata}
    
新增充值规则-送金额和券
    点击充值规则菜单
    点击充值规则新增按钮
    输入充值规则信息    ${addrechargecoupondata}    ${add_recharge_amountdata}    ${add_recharge_giftdata}
    赠送券
    点击保存按钮
    验证元素期望值    ${list_name}    ${addrechargecoupondata}
    
修改充值规则-赠送规则
    点击充值规则菜单
    点击修改按钮
    修改赠送规则    ${edit_recharge_namedata}    ${edit_recharge_amountdata}    ${edit_recharge_giftdata} 
    点击保存按钮
    验证修改成功

禁用充值规则
    点击充值规则菜单
    点击禁用按钮
    验证禁用成功
    
启用充值规则
    点击充值规则菜单
    点击启用按钮
    验证启用成功    
         
删除充值规则    
    点击充值规则菜单
    点击禁用按钮
    点击删除按钮
    验证删除成功
    