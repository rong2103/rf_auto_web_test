*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../ElementDao/Checkin/CheckinElement.robot
Resource    ../../PublicUitl/SysResource.robot

*** Keywords ***
点击普通入住菜单
    点击元素    ${normal_checkin_memu}

点击团队入住菜单
    点击元素    ${team_checkin_memu}  
    
点击时租入住菜单
    点击元素    ${hour_checkin_memu} 
    
点击早餐券管理菜单
    点击元素    ${foodticket_memu}
    
输入入住人姓名
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${checkin_username}  
    Input Text    ${checkin_username}    ${value}

输入手机号码
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${checkin_phone}  
    Input Text    ${checkin_phone}    ${value}

输入入住人证件号码
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${checkin_card_num}  
    Input Text    ${checkin_card_num}    ${value}
        
入住选择客源类别-会员
    点击元素    ${customerType_member_radio}
    
入住选择客源类别-单位
    点击元素    ${customerType_unit_radio} 
    
入住选择客源类别-中介
    点击元素    ${customerType_intermediary_radio}

入住选择单位中介
    点击元素    ${ch_guestusername_selector}
    点击元素    ${ch_guestusername_li} 
        
验证入住成功
    Sleep    2
    Page Should Contain    订单列表       
    
选择房型间数-入住
    Wait Until Element Is Visible    ${chec_add_room_type}   
    #需要几间就点击几次+
    Click Element    ${chec_add_room_type} 

# 点击自动排房按钮
    # 点击元素    ${auto_selectroom_button}

添加入住人
    [Arguments]    ${name1}    ${idno1}    ${name2}    ${idno2}
    点击元素    ${chec_add_checperson_button} 
    输入值    ${add_checperson_name_input1}    ${name1}
    输入值    ${add_checperson_idno_input1}    ${idno1}
    输入值    ${add_checperson_name_input2}    ${name2}
    输入值    ${add_checperson_idno_input2}    ${idno2}
    点击元素    ${add_checperson_confbtn}
                
点击入住-确定按钮
    点击元素    ${reserv_confirm_button}
    
交押金-入账
    点击元素    ${into_account_button}
    
关闭房卡操作弹窗
    点击元素    ${close_roomcard}
        
    
    
#------------------------------团队入住
输入团队名称
    [Arguments]    ${name} 
    输入值    ${team_name_input}    ${name}        
    
    
    
    
    