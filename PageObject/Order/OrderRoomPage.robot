*** Settings ***
Library    Selenium2Library    timeout=10    
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../ElementDao/Order/OrderDetailElement.robot
Resource    ../../ElementDao/Order/OrderRoomElement.robot
# Variables    ../../DataConfig/Order/OrderDatas.py

*** Keywords ***
点击普通订单左侧订单信息
    点击元素    ${sample_order_info_li}

点击联房订单左侧订单信息
    点击元素    ${union_order_info_li} 
    
点击团队订单左侧订单信息 
    点击元素    ${team_order_info_li} 
          
点击左侧房间订单详情
    点击元素    ${order_room_detail}

续住1天
    点击元素    ${xuzhu_button}
    点击元素    ${xuzhu_addday_button}
    点击元素    ${xuzhu_confirm_button}

按昨日价格续住1天
    点击元素    ${xuzhu_button}
    点击元素    ${xuzhu_addday_button}
    点击元素    ${xuzhu_preprice_checkbox} 
    点击元素    ${xuzhu_confirm_button}
        
验证续住成功
    Wait Until Element Is not Visible    ${xuzhu_confirm_button}  
    
# 点击更改客源按钮
    # 点击元素    ${change_custsource}
    
房间-更改客源为单位
    点击元素    ${change_custsource}
    点击元素    ${changesource_tounit_radio}
    点击元素    ${changesource_sele}
    点击元素    ${changesource_li}
    点击元素    ${changesource_confirm_button}
           
验证客源为单位
    Sleep    2    
    Page Should Contain Element    ${detail_source}

验证更改客源成功
    Wait Until Element Is Not Visible    ${changesource_confirm_button}                    
换房
    [Return]    ${roomNo}
    Mouse Over    ${detail_more_oper}
    点击元素    ${more_changeroom_button}
    Wait Until Element Is Visible    ${changeroom_reason_input}    
    Input Text    ${changeroom_reason_input}    autotest
    点击元素    ${changeroom_select_roomtype}
    ${roomNo}    Get Text    ${changeroom_select_roomnum}
    点击元素    ${changeroom_select_roomnum}
    点击元素    ${changeroom_confirm_button}

获取当前房间房号
    获取元素的值    ${fangjian_detail_li}

修改外部订单号
    [Arguments]    ${param}
    Mouse Over    ${detail_more_oper}
    点击元素    ${outer_order_button}
    Wait Until Element Is Visible    ${outer_order_input} 
    Input Text    ${outer_order_input}     ${param}  
    点击元素    ${out_order_confirm_button}

验证修改外部订单号成功  
    Wait Until Element Is Not Visible    ${out_order_confirm_button}        

修改价格
    [Arguments]    ${param}
    Mouse Over    ${detail_more_oper}
    点击元素    ${change_price_button}
    Wait Until Element Is Visible    ${changeprice_newprice_input} 
    Input Text    ${changeprice_newprice_input}     ${param}  
    点击元素    ${change_price_confirm_button}

验证改价成功
    Wait Until Element Is Not Visible    ${change_price_confirm_button}
                            
点击修改订单
    点击元素    ${modify_order_button}

点击同来宾客按钮
    Mouse Over    ${detail_more_oper}
    点击元素    ${guets_button}

输入同来宾客姓名
    [Arguments]    ${name}
    #姓名
    Wait Until Element Is Visible    ${guests_name_input}
    Input Text    ${guests_name_input}    ${name}
    
输入同来宾客证件号码
    [Arguments]    ${idno}
    #证件号码
    Wait Until Element Is Visible    ${guests_number_input} 
    Input Text    ${guests_number_input}    ${idno}
    
输入同来宾客备注
    [Arguments]    ${text}
    #证件号码
    Wait Until Element Is Visible    ${guests_remark_input}  
    Input Text    ${guests_remark_input}     ${text}
    
点击同来宾客确定按钮
    点击元素    ${guests_confirm_button}

验证修改同来宾客成功
    Wait Until Element Is Not Visible    ${guests_confirm_button}
                    
#####联房
点击联房按钮
    Mouse Over    ${detail_more_oper}
    点击元素    ${union_rooms_button}
            
选择一个联房房间并确定
    点击元素    ${selectedroom_button}  
    点击元素    ${union_rooms_savebutton}

验证联房成功
    Wait Until Element Is Not Visible    ${union_rooms_savebutton}
         
点击开发票按钮
    Mouse Over    ${detail_more_oper}
    点击元素    ${invoice_button}
    
输入发票抬头
    [Arguments]    ${text}
    输入值    ${invoice_title_input}    ${text}
    
输入开票金额
    [Arguments]    ${text}
    输入值    ${invoice_money_input}    ${text}
    
输入发票号码
    [Arguments]    ${text}
    输入值    ${invoice_code_input}    ${text}
    
输入开票备注
    [Arguments]    ${text}
    输入值    ${invoice_remark_input}    ${text}
    
点击开票确定按钮   
    点击元素    ${invoice_confirm_button} 

#开发票弹窗操作    
开增值税普通发票
    [Arguments]    ${title}    ${money}    ${no}    ${remark}
    输入发票抬头    ${title}
    输入开票金额    ${money}
    输入发票号码    ${no}
    输入开票备注    ${remark}
    点击开票确定按钮
    
点击房间备注
    点击元素    ${room_remark_a}
    
修改房间备注 
    [Arguments]      ${parm}  
    输入值    ${modify_remark_input}    ${parm}  
    点击元素    ${modify_remark_conf_btn}
    
验证修改房间备注成功
    Wait Until Element Is Not Visible    ${modify_remark_conf_btn}              
    