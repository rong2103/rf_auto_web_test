*** Settings ***
Library    Selenium2Library    timeout=10    
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../ElementDao/Order/OrderDetailElement.robot
Resource    ../../ElementDao/Order/OrderRoomElement.robot
Variables    ../../DataConfig/Order/OrderDatas.py

*** Keywords ***
点击左侧订单信息
    点击元素    ${order_info_li}
    
点击左侧房间订单详情
    点击元素    ${order_room_detail}

续住1天
    点击元素    ${xuzhu_button}
    点击元素    ${xuzhu_addday_button}
    点击元素    ${xuzhu_confirm_button}
    
验证续住成功
    Wait Until Element Is Visible    ${detail_checkin_days}  
    
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
            
# 修改预订人
    # [Arguments]    ${name}
    # Wait Until Element Is Visible    ${modify_reservorder_person}
    # Input Text    ${modify_reservorder_person}    ${name}
        
# 修改手机号码
    # [Arguments]    ${value}
    # Wait Until Element Is Visible    ${modify_reservorder_phone}
    # Input Text    ${modify_reservorder_phone}    ${value}    

# 修改团队名
    # [Arguments]    ${value}
    # Wait Until Element Is Visible    ${modify_reservorder_teamname}    
    # Input Text    ${modify_reservorder_teamname}    ${value}  
      
# # 修改公付为无
    # # 点击元素
    # # 点击元素
    
# 点击确定按钮-修改订单
    # 点击元素    ${modify_reservorder_confirm_button}

# 验证预订人和电话号码修改成功
    # 点击元素    ${customer_detail_tab}
    # 验证元素期望值    ${customer_reservperson}    ${modify_person_data}
    # 验证元素期望值    ${customer_reservphone}    ${modify_mobile_data}
                
# 点击批量入住
    # 点击元素    ${batch_checkin_button}
    
# 点击排房
    # Mouse Over    ${detail_more_oper}
    # 点击元素    ${select_room_button}
    

# 点击NoShown
    # Mouse Over    ${detail_more_oper}
    # 点击元素    ${guest_noshown}

# 点击订单基本信息tab
    # 点击元素    ${reserorder_detaill_tab} 
    
# 点击账务明细tab
    # 点击元素    ${account_detail_tab}
        
# 点击交订金按钮
    # 点击元素    ${deposit_button}
    
# 输入订金金额
    # Wait Until Element Is Visible    ${deposit_num}
    # Input Text    ${deposit_num}    10    

# 点击入账按钮
    # 点击元素    ${ruzhang_button}

# 勾选订金列表复选框
    # 点击元素    ${deposit_list_checkbox}
            
# 点击冲调按钮
    # 点击元素    ${deposit_cancel_button}
    
# 输入冲调原因
    # Wait Until Element Is Visible    ${chongtiao_reason}
    # Input Text    ${chongtiao_reason}    auto_test
    
# 点击确定按钮
    # 点击元素    ${chongtiao_confirm_button}  
    
    
# 点击改价按钮
    # Mouse Over    ${detail_more_oper}
    # 点击元素    ${reserv_room_changeprice}
    
# 输入新的价格
    # Wait Until Element Is Visible    ${price_input} 
    # Input Text    ${price_input}     88
    # Wait Until Element Is Visible    ${changeprice_beizhu} 
    # Input Text    ${changeprice_beizhu}     88
    # 点击元素    ${changeprice_confirm_button}
    
# 点击取消预留
    # Mouse Over    ${detail_more_oper}
    # 点击元素    ${reserv_room_cancelroom}
            
    
    