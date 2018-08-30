*** Settings ***
Library    Selenium2Library    timeout=10

*** Keywords ***
点击按钮
    [Arguments]    ${element}
    sleep    1
    Wait Until Element Is Visible    ${element}
    Wait Until Element Is Enabled    ${element} 
    Click Button    ${element}
    Sleep    1     
    
点击元素
    [Arguments]    ${element}
    sleep    2
    Wait Until Element Is Visible    ${element}
    Wait Until Element Is Enabled    ${element} 
    Click Element    ${element}
    Sleep    1 
    
输入值
    [Arguments]    ${element}    ${text}
    Wait Until Element Is Visible    ${element}  
    sleep    1
    Input Text    ${element}    ${text}  

刷新界面
    Reload Page

验证操作成功   
    [Arguments]    ${element}  
    Wait Until Element Is Not Visible    ${element}     
    
获取元素的值
    #获取元素的text值并返回
    [Arguments]    ${element}
    [Return]    ${b}
    Wait Until Element Is Visible    ${element} 
    ${b}    Get Text    ${element} 

            
验证元素期望值
    #判断元素的text值和自己${value}中的值是否相等，不包含数字
    [Arguments]    ${element}    ${value}
    sleep    2
    Wait Until Element Is Visible    ${element}
    ${a}   Get Text    ${element} 
    log    ${a}
    log    ${value}
    Should Be Equal    ${a}	    ${value}  
    
验证两字符串相等 
    [Arguments]    ${element}    ${value}
    sleep    2
    Wait Until Element Is Visible    ${element}
    ${a}   Get Text    ${element} 
    log    ${a}
    log    ${value}
    Should Be Equal As Strings    ${a}	    ${value}

    
