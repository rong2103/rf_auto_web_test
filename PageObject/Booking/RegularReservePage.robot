*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../ElementDao/Booking/RegularReserveElement.robot
Resource    ../../PublicUitl/SysResource.robot

*** Keywords ***
点击普通预订按钮
    点击元素    ${normal_reserv_memu}
    
点击团队预订按钮
    点击元素    ${team_reserv_memu}

点击长包房预订按钮
    点击元素    ${long_reserv_memu}
        
点击注册会员按钮
    点击元素    ${register_member_button}

点击注册确定按钮
    点击按钮    ${register_confirm_button}
    
输入预订人
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${reserv_person}  
    Input Text    ${reserv_person}    ${value}  
    
输入手机号码
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${reserv_phone}  
    Input Text    ${reserv_phone}    ${value}
    
选择房型间数
    Wait Until Element Is Visible    ${add_room_type}  
    #需要几间就点击几次+
    Click Element    ${add_room_type}
    
在房间筛选中选择一个房间号
    点击元素    ${select_room_number}
    
点击预订-确定按钮
    点击按钮    ${reserv_confirm_button}
    
验证预订成功
    Sleep    2
    Wait Until Element Is Visible    ${reserv_detail_Title}  
    
选择客源类别-会员
    点击元素    ${guestSourceType_member_radio}
    
选择客源类别-单位
    点击元素    ${guestSourceType_unit_radio} 
    
选择客源类别-中介
    点击元素    ${guestSourceType_intermediary_radio}

选择单位中介
    点击元素    ${guestusername_selector}
    点击元素    ${guestusername_li} 
    
选择会员
    [Arguments]    ${name}
    点击元素    ${guestusername_selector}
    Wait Until Element Is Visible    ${guestusername_input}    
    Input Text    ${guestusername_input}    ${name}
    点击元素    ${guestusername_li}    
    
选择入住类型为自用
     点击元素    ${checkin_type_select}
     点击元素    ${checkin_type_li_ziyong}   

选择入住类型为免费
     点击元素    ${checkin_type_select}
     点击元素    ${checkin_type_li_free}     
    
点击自动排房按钮
    点击按钮    ${auto_selectroom_button}

输入团名
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${team_name}
    Input Text    ${team_name}    ${name} 
    
选择公付为无
    点击元素    ${teamFeeType_selector}
    点击元素    ${teamFeeType_li_wu}
    
选择公付为房费+消费
    点击元素    ${teamFeeType_selector}
    点击元素    ${teamFeeType_li_xiaofei}    
    
    
               