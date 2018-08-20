*** Settings ***
Library    Selenium2Library    
Variables    ../../DataConfig/UnitData/Unit_DataConfig.py
Resource    ../../ElementDao/UnitDao/AgreementUnit_Element.robot

#单位管理操作步骤
*** Keywords ***
进入单位模块
    Wait Until Element Is Enabled    ${Navigation_Bar_Unit}    
    Click Element    ${Navigation_Bar_Unit}
    Set Selenium Implicit Wait    5
    Click Element    ${Unit_Agreement_Unit}
    ${value}    Get Text    ${Unit_Agreement_GetAg}
    Should Be Equal    ${value}    单位管理 
    

输入单位名称
    Wait Until Element Is Enabled    ${Init_Unit_Name}        
    Click Element    ${Init_Unit_Name}
    Input Text    ${Init_Unit_Name}    ${SelectUnitName}
    ${value}    Get Text    ${Init_Unit_Name}
    Should Be Equal    ${value}    ${SelectUnitName} 

点击单位状态下拉框
    Wait Until Element Is Enabled    ${Init_Unit_State}
    Click Element    ${Init_Unit_State_All}
    Page Should Contain Element    ${Init_Unit_State_Start}    
    Page Should Contain Element    ${Init_Unit_State_Forbidden}    
    Page Should Contain Element    ${Init_Unit_State_Pass}    

点击单位状态启用
    Click Element    ${Init_Unit_State_Start} 
    ${value}    Get Text    ${Init_Unit_State}
    Should Be Equal    ${value}    启用
    
点击单位状态禁用
    Click Element    ${Init_Unit_State_Forbidden} 
    ${value}    Get Text    ${Init_Unit_State}
    Should Be Equal    ${value}    禁用
    
点击单位状态过期
    Click Element    ${Init_Unit_State_Pass} 
    ${value}    Get Text    ${Init_Unit_State}
    Should Be Equal    ${value}    过期
    
点击单位是否共享
    Wait Until Element Is Enabled    ${Init_Unit_Share}
    Click Element    ${Init_Unit_Share_All}
    Page Should Contain Element    ${Init_Unit_Share_All}  
    Page Should Contain Element    ${Init_Unit_Share_Yes}    
    Page Should Contain Element    ${Init_Unit_Share_Not}
    
单位是否共享 - 是
    Click Element    ${Init_Unit_Share_Yes} 
    ${value}    Get Text    ${Init_Unit_Share}
    Should Be Equal    ${value}    是
    
单位是否共享 - 否
    Click Element    ${Init_Unit_Share_Not} 
    ${value}    Get Text    ${Init_Unit_Share}
    Should Be Equal    ${value}    否
    
点击查询按钮
    Wait Until Element Is Enabled    ${Init_Unit_Select_Button}
    Click Element    ${Init_Unit_Select_Button}
    Sleep    1    
    Set Selenium Implicit Wait    ${Init_Unit_Select_Button}
    
展开高级查询
    Wait Until Element Is Enabled    ${Init_Unit_HighSelect_Button}
    Click Element    ${Init_Unit_HighSelect_Button}
    Page Should Contain Element    ${Init_Unit_Contact}
    Page Should Contain Element    ${Init_Unit_MobilePhone}    

合并高级查询
    Wait Until Element Is Enabled    ${Init_Unit_HighSelect_Button}
    Click Element    ${Init_Unit_HighSelect_Button}
    Page Should Not Contain Element    ${Init_Unit_Contact}    
    Page Should Not Contain Element    ${Init_Unit_MobilePhone}
    
输入联系人
    Wait Until Element Is Enabled    ${Init_Unit_Contact}        
    Click Element    ${Init_Unit_Contact}
    Input Text    ${Init_Unit_Contact}    ${SelectUnitContact}
    ${value}    Get Text    ${Init_Unit_Contact}
    Should Be Equal    ${value}    ${SelectUnitContact} 
        
输入手机号码
    Wait Until Element Is Enabled    ${Init_Unit_MobilePhone}        
    Click Element    ${Init_Unit_MobilePhone}
    Input Text    ${Init_Unit_MobilePhone}    ${SelectUnitPhone}
    ${value}    Get Text    ${Init_Unit_MobilePhone}
    Should Be Equal    ${value}    ${SelectUnitPhone} 
    
输入挂账额度
    Wait Until Element Is Enabled    ${Init_Unit_PaymentAmount_Begin}        
    Click Element    ${Init_Unit_PaymentAmount_Begin}
    Input Text    ${Init_Unit_PaymentAmount_Begin}    ${SelectUnitPaymentAmountBegin}
    ${value}    Get Text    ${Init_Unit_PaymentAmount_Begin}
    Should Be Equal    ${value}    ${SelectUnitPaymentAmountBegin} 
    Wait Until Element Is Enabled    ${Init_Unit_PaymentAmount_End}        
    Click Element    ${Init_Unit_PaymentAmount_End}
    Input Text    ${Init_Unit_PaymentAmount_End}    ${SelectUnitPaymentAmountEnd}
    ${value}    Get Text    ${Init_Unit_PaymentAmount_End}
    Should Be Equal    ${value}    ${SelectUnitPaymentAmountEnd} 
    
输入已用额度
    Wait Until Element Is Enabled    ${Init_Unit_HaveUsedLimit_Begin}        
    Click Element    ${Init_Unit_HaveUsedLimit_Begin}
    Input Text    ${Init_Unit_HaveUsedLimit_Begin}    ${SelectUnitHaveUsedLimitBegin}
    ${value}    Get Text    ${Init_Unit_HaveUsedLimit_Begin}
    Should Be Equal    ${value}    ${SelectUnitHaveUsedLimitBegin} 
    Wait Until Element Is Enabled    ${Init_Unit_HaveUsedLimit_End}        
    Click Element    ${Init_Unit_HaveUsedLimit_End}
    Input Text    ${Init_Unit_HaveUsedLimit_End}    ${SelectUnitHaveUsedLimitEnd}
    ${value}    Get Text    ${Init_Unit_HaveUsedLimit_End}
    Should Be Equal    ${value}    ${SelectUnitHaveUsedLimitEnd} 
    

    
    