*** Settings ***
Library    Selenium2Library    
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../ElementDao/Order/ReserveOrderElement.robot
Variables    ../../DataConfig/Order/OrderData.py

*** Keywords ***
点击左侧预订单信息
    点击元素    ${reserv_info}

#------------------------------------------------------------------------订单基本信息tab
点击订单基本信息tab
    点击元素    ${reserorder_detaill_tab} 
    
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
    
点击确定按钮-修改订单
    点击元素    ${modify_reservorder_confirm_button}

验证预订人和电话号码修改成功
    点击元素    ${customer_detail_tab}
    验证元素期望值    ${customer_reservperson}    ${modify_person_data}
    验证元素期望值    ${customer_reservphone}    ${modify_mobile_data}
                
点击批量入住
    点击元素    ${batch_checkin_button}    

批量入住输入身份证号码
    [Arguments]    ${num}
    输入值    ${batch_checkin_idno_input}     ${num}
    
批量入住输入备注
    [Arguments]    ${num}
    输入值    ${batch_checkin_remark_input}     ${num}  
     
点击批量入住确定按钮
    点击元素    ${batch_checkin_confirm_button}
    
点击排房
    Mouse Over    ${detail_more_oper}
    点击元素    ${select_room_button}
    
点击更改客源按钮
    Mouse Over    ${detail_more_oper}
    点击元素    ${change_guestsource}
    
更改客源-选择散客
    点击元素    ${change_guestsource_tosample}
    点击元素    ${changesource_confirm_button}
    
更改客源-选择会员
    点击元素    ${change_guestsource_tomember}
    
更改客源-选择单位
    点击元素    ${changesource_tounit_radio}
    点击元素    ${reserorder_changesource_selector}
    点击元素    ${reserorder_changesource_li}
    点击元素    ${changesource_confirm_button}
     
更改客源-选择中介
    点击元素    ${changesource_tointermediary_radio}
    点击元素    ${reserorder_changesource_selector}
    点击元素    ${reserorder_changesource_li}
    点击元素    ${changesource_confirm_button}

验证更改客源成功
    Wait Until Element Is Not Visible    ${changesource_confirm_button}       

           
点击NoShown
    Mouse Over    ${detail_more_oper}
    点击元素    ${resorder_noshown_btn}

NoShown预订单
    点击元素    ${resorder_noshown_confbtn}

验证预订单NoShown成功
    Wait Until Element Is Not Visible    ${resorder_noshown_confbtn}
            
预订单-取消预订
    Mouse Over    ${detail_more_oper}
    点击元素    ${cancel_reserv}        

验证取消预订单成功
    #取消成功之后 批量入住按钮就不显示了
    Wait Until Element Is Not Visible    ${batch_checkin_button}     
         
                
#---------------------------------------------------  账务明细tab  
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
    
点击冲调确定按钮
    点击元素    ${chongtiao_confirm_button}     

    
    