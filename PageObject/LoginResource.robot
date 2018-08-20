*** Settings ***
Library    Selenium2Library	    timeout=20
#外部变量文件中引入变量
Variables    ../DataConfig/login_data.py
Resource    ../ElementDao/PublicElement.robot  
  
*** Keywords ***
login 
    #使用用户名密码登录到预订界面  
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Input Text     ${user_ele}  ${user}
    Input Text    ${pwd_ele}    ${pwd}
    Click Button    ${login}
    
点击会员菜单
    Selenium2Library.Wait Until Element Is Enabled    ${member_Nag} 
    sleep    2    
    Selenium2Library.Click Element    ${member_Nag} 
    #点击2次，防止因为弹窗没有关闭导致点击一次无法打开页面
    Selenium2Library.Click Element    ${member_Nag} 

点击预订菜单
    Selenium2Library.Wait Until Element Is Visible    ${reserv_menu} 
    sleep    2      
    Selenium2Library.Click Element    ${reserv_menu} 
    #点击2次，防止因为弹窗没有关闭导致点击一次无法打开页面
    Selenium2Library.Click Element    ${reserv_menu}
    
点击入住菜单
    Selenium2Library.Wait Until Element Is Visible    ${checkin_menu} 
    sleep    2    
    Selenium2Library.Click Element    ${checkin_menu} 
    #点击2次，防止因为弹窗没有关闭导致点击一次无法打开页面
    # Selenium2Library.Click Element    ${checkin_menu}

点击订单菜单
    Selenium2Library.Wait Until Element Is Visible    ${order_menu}  
    sleep    2    
    Selenium2Library.Click Element    ${order_menu} 
    #点击2次，防止因为弹窗没有关闭导致点击一次无法打开页面
    Selenium2Library.Click Element    ${order_menu}
              
点击市场活动菜单
    Selenium2Library.Wait Until Element Is Visible    ${market_Nag}  
    sleep    2   
    Selenium2Library.Click Element    ${market_Nag} 
    #点击2次，防止因为弹窗没有关闭导致点击一次无法打开页面
    Selenium2Library.Click Element    ${market_Nag} 

切换到集团
    Wait Until Element Is Visible    ${change_hotel_select}
    sleep    2
    Click Element    ${change_hotel_select}
    Wait Until Element Is Visible    ${change_jituan_li}
    sleep    2
    Click Element    ${change_jituan_li}        
          