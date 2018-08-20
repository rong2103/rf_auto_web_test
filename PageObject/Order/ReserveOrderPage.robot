*** Settings ***
Library    Selenium2Library    
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../ElementDao/Order/ReserveOrderElement.robot
Variables    ../../DataConfig/Order/OrderDatas.py
*** Keywords ***
点击左侧预订单信息
    点击元素    ${reserv_info}
    
点击左侧预订房间信息
    点击元素    ${reserv_room_detail}
    
取消预订
    点击元素    ${reserv_info}
    Mouse Over    ${detail_more_oper}
    点击元素    ${cancel_reserv}
    
点击修改订单
    点击元素    ${modify_reservorder_button}

修改预订人
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${modify_reservorder_person}
    Input Text    ${modify_reservorder_person}    ${name}
        
修改手机号码
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${modify_reservorder_phone}
    Input Text    ${modify_reservorder_phone}    ${value}    

修改团队名
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${modify_reservorder_teamname}    
    Input Text    ${modify_reservorder_teamname}    ${value}  
      
# 修改公付为无
    # 点击元素
    # 点击元素
    
点击确定按钮-修改订单
    点击元素    ${modify_reservorder_confirm_button}

验证预订人和电话号码修改成功
    点击元素    ${customer_detail_tab}
    验证元素期望值    ${customer_reservperson}    ${modify_person_data}
    验证元素期望值    ${customer_reservphone}    ${modify_mobile_data}
                
点击批量入住
    点击元素    ${batch_checkin_button}
    
点击排房
    Mouse Over    ${detail_more_oper}
    点击元素    ${select_room_button}
    
点击更改客源
    Mouse Over    ${detail_more_oper}
    点击元素    ${change_guestsource}
    
更改客源-选择散客
    点击元素    ${change_guestsource_tosample}
    点击元素    ${changesource_confirm_button}
    
更改客源-选择会员
    点击元素    ${change_guestsource_tomember}
    
更改客源-选择单位
    点击元素    ${changesource_tounit_radio}
 
更改客源-选择中介
    点击元素    ${changesource_tointermediary_radio}

验证更改客源成功
    点击元素    ${reserv_room_detail}
    Sleep    1    
    Page Should Contain    客户类别：散客    
           
点击NoShown
    Mouse Over    ${detail_more_oper}
    点击元素    ${guest_noshown}

点击订单基本信息tab
    点击元素    ${reserorder_detaill_tab} 
    
点击账务明细tab
    点击元素    ${account_detail_tab}
        
点击交订金按钮
    点击元素    ${deposit_button}
    
输入订金金额
    Wait Until Element Is Visible    ${deposit_num}
    Input Text    ${deposit_num}    10    

点击入账按钮
    点击元素    ${ruzhang_button}

勾选订金列表复选框
    点击元素    ${deposit_list_checkbox}
            
点击冲调按钮
    点击元素    ${deposit_cancel_button}
    
输入冲调原因
    Wait Until Element Is Visible    ${chongtiao_reason}
    Input Text    ${chongtiao_reason}    auto_test
    
点击确定按钮
    点击元素    ${chongtiao_confirm_button}  
    
    
点击改价按钮
    Mouse Over    ${detail_more_oper}
    点击元素    ${reserv_room_changeprice}
    
输入新的价格
    Wait Until Element Is Visible    ${price_input} 
    Input Text    ${price_input}     88
    Wait Until Element Is Visible    ${changeprice_beizhu} 
    Input Text    ${changeprice_beizhu}     88
    点击元素    ${changeprice_confirm_button}
    
点击取消预留
    Mouse Over    ${detail_more_oper}
    点击元素    ${reserv_room_cancelroom}
            
    
    