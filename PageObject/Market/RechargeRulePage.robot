*** Settings ***
Library    Selenium2Library
Resource    ../../ElementDao/Market/RechargeRuleElement.robot 
Resource    ../../PublicUitl/SysResource.robot  
Variables    ../../DataConfig/Market/RrechargeRule_datas.py

*** Keywords ***
点击充值规则菜单
    Wait Until Element Is Visible    ${rechargerule_menu}  
    Click Element    ${rechargerule_menu}

点击充值规则新增按钮
    Wait Until Element Is Visible    ${add_rechargerule_button}
    Click Button    ${add_rechargerule_button}  
    
输入充值规则信息
    [Arguments]    ${name}    ${amount}    ${gift} 
       # ${startdate}      ${enddate} 
    Wait Until Element Is Visible    ${add_rechargerule_name}
    Input Text    ${add_rechargerule_name}    ${name}  
    #shijian
    Wait Until Element Is Visible    ${add_rechargerule_startdate}
    Click Element    ${add_rechargerule_startdate}
    Wait Until Element Is Visible    ${add_rechargerule_startdate_v}
    Click Element    ${add_rechargerule_startdate_v}
    sleep     2
    #end date
    Wait Until Element Is Visible    ${add_rechargerule_enddate}
    Click Element    ${add_rechargerule_enddate}
    Wait Until Element Is Visible    ${add_rechargerule_enddate_v}
    Click Element    ${add_rechargerule_enddate_v}
    Wait Until Element Is Visible    ${add_rechargerule_amount}
    Input Text    ${add_rechargerule_amount}    ${amount}  
    Wait Until Element Is Visible    ${add_rechargerule_gift}
    Input Text    ${add_rechargerule_gift}    ${gift} 
    Wait Until Element Is Visible    ${add_rechargerule_membertype}  
    Click Element    ${add_rechargerule_membertype}               

赠送券
    #点击送券设置
    点击元素    ${coupon_setting}
    点击元素    ${add_coupon_button}
    点击元素    ${coupontype_selector}
    点击元素    ${coupontype_li}
    点击元素    ${couponname_selector}
    点击元素    ${couponname_li}
    点击元素    ${coupon_confirm_button}
    
点击保存按钮
    Wait Until Element Is Enabled    ${save_button}
    Click Button    ${save_button}

验证新增成功
    Wait Until Element Is Visible    ${list_name}
    #
    验证元素期望值    ${list_name}    ${add_rechargerule_namedata}
    # ${a}     Get Text    ${list_name}
    # Comment    ${a}
    # Return From Keyword If    ${a}==${add_rechargerule_namedata}
             
点击修改按钮
    Wait Until Element Is Visible    ${edit_button}
    Click Element    ${edit_button} 
    
修改赠送规则
    [Arguments]    ${name}    ${amount}    ${gift}
    Wait Until Element Is Visible    ${add_rechargerule_name}
    Input Text    ${add_rechargerule_name}    ${name}
    Wait Until Element Is Visible    ${add_rechargerule_amount}
    Input Text    ${add_rechargerule_amount}    ${amount}  
    Wait Until Element Is Visible    ${add_rechargerule_gift}
    Input Text    ${add_rechargerule_gift}    ${gift}

验证修改成功
    Wait Until Element Is Visible    ${list_name} 
    验证元素期望值    ${list_name}    ${edit_recharge_namedata}
    #
    # ${a}     Get Text    ${list_name}
    # log    ${a}
    # Return From Keyword If    ${a}==${edit_recharge_namedata}  
    
点击删除按钮
    # Wait Until Element Is Visible    ${list_status}
    Wait Until Element Is Visible    ${enable_button}
    # ${a}    Set Variable    Get Text    ${list_status}
    # log    ${a}
    # Run Keyword If    ${a}=='启用'    Click Element    ${disable_button} 
    # Wait Until Element Is Visible    ${delete_button}  
    点击元素    ${delete_button}     
    # Wait Until Element Is Visible    ${delete_confirm_button}
    点击元素    ${delete_confirm_button}
    
验证删除成功
    Wait Until Element Is Not Visible    ${delete_confirm_button}
    sleep    1         
    Page Should Not Contain    ${edit_recharge_namedata}   
    
点击禁用按钮
    Wait Until Element Is Visible    ${disable_button}
    Click Element    ${disable_button}
        
验证禁用成功  
    Wait Until Element Is Visible    ${list_status}
    ${a}   Set Variable     Get Text    ${list_status}
    Return From Keyword If    ${a}=='禁用' 
       
点击启用按钮
    Wait Until Element Is Visible    ${enable_button}
    Click Element    ${enable_button}

验证启用成功  
    Wait Until Element Is Visible    ${list_status}
    ${a}   Set Variable     Get Text    ${list_status}
    Return From Keyword If    ${a}=='启用'             