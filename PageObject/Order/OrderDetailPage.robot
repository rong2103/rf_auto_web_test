*** Settings ***
Library    Selenium2Library    timeout=10    
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../ElementDao/Order/OrderDetailElement.robot

*** Keywords ***
点击修改订单按钮
    点击元素    ${modify_order_button}
    
修改订单入住类型to自用
    点击元素    ${modify_order_checkintype}
    点击元素    ${checkintype_self_li} 

修改订单入住类型to免费
    点击元素    ${modify_order_checkintype}
    点击元素    ${checkintype_free_li} 
       
输入订单备注
    [Arguments]    ${param} 
    输入值    ${modify_orderemark_input}      ${param}  
    
点击修改订单确定按钮
    点击元素    ${modify_order_conf_button}
    
验证修改订单成功
    Wait Until Element Is Not Visible    ${modify_order_conf_button}
    
点击客人信息tab
    点击元素    ${cust_info_tab}
           
修改客人信息
    [Arguments]    ${name}    ${tel}
    #点击修改客人信息按钮
    点击元素    ${edit_cust_button} 
    输入值    ${customer_name_input}    ${name}
    输入值    ${customer_phone_input}   ${tel} 
    点击元素    ${customer_confirm_button} 
    
验证修改客人信息成功
    Wait Until Element Is Not Visible    ${customer_confirm_button}     

添加黑名单
    [Arguments]    ${remark}
    点击元素    ${add_blacklist_button}
    输入值    ${blacklist_remark_input}    ${remark}
    点击元素    ${add_blacklist_confbutton}
    
验证添加黑名单成功
    Wait Until Element Is Not Visible    ${add_blacklist_confbutton}
    
恢复白名单
    点击元素    ${add_whitelist_button}
    
验证恢复白名单成功
    Page Should Not Contain    恢复白名单   

#联房    
设置主账房
    Wait Until Element Is Visible    ${more_oper_btn}      
    Mouse Over    ${more_oper_btn}  
    点击元素    ${set_mainroon_btn} 
    点击元素    ${set_mainroon_room}
    点击元素    ${set_mainroon_confbtn}

验证设置主账房成功  
    Wait Until Element Is Not Visible    ${set_mainroon_confbtn}      
    
增发早餐券 
    Wait Until Element Is Visible    ${more_oper_btn}      
    Mouse Over    ${more_oper_btn}  
    点击元素    ${add_breakfast_ticket_btn}
    点击元素    ${add_breakfast_ticket_savebtn}    

验证增发早餐券成功
    Wait Until Element Is Not Visible    ${add_breakfast_ticket_savebtn} 
    
#团队
点击管理团队按钮
    Wait Until Element Is Visible    ${more_oper_btn}      
    Mouse Over    ${more_oper_btn}  
    点击元素    ${manage_team_btn}
    
团队增加房间
    点击元素    ${addroom_btn}
    点击元素    ${manage_team_confbtn}
    
团队减少房间 
    点击元素    ${lessroom_btn}
    点击元素    ${manage_team_confbtn}  
        
验证管理团队成功
    Wait Until Element Is Not Visible    ${manage_team_confbtn}          
    
                            