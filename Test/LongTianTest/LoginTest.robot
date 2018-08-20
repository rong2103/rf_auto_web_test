*** Settings ***
#引用包
Library        Selenium2Library

*** Variables ***
#数据 
${url}   https://login.tianehui.net/
${userName}    zl123456
${password}    123456
${driver}    D:\Python27\chromedriver.exe
#元素
${user}    //*[@id="username"]
${psw}    //*[@id="password"]
${button}    //*[@id="submit"]

*** Keywords ***
#关键字，操作元素的步骤
打开浏览器
    Create Webdriver    ${driver}
    Open Browser    ${url}    
输入用户名
    Wait Until Element Is Enabled    ${user}
    Input Text    ${user}    ${userName}
    
输入密码
    Wait Until Element Is Enabled    ${psw}
    Input Text    ${psw}    ${password}
点击登陆
    Wait Until Element Is Enabled    ${button}
    Click Button    ${button}    
    
*** Test Cases ***
#可执行的测试用例
Login Case
    [Documentation]    Hello Robot
    打开浏览器
    输入用户名
    输入密码
    点击登陆
    