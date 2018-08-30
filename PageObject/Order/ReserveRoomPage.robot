*** Settings ***
Library    Selenium2Library    
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../ElementDao/Order/ReserveRoomElement.robot
Variables    ../../DataConfig/Order/ReserveOrderDatas.py

*** Keywords ***
点击左侧预订房间信息
    点击元素    ${reserv_room_detail}
    
点击入住按钮
    点击元素    ${reserv_room_checkin_button}
    
# 批量入住
    # 输入值    
    
点击修改预留按钮
    点击元素    ${modify_resvroom_button}
    
点击改价按钮
    Mouse Over    ${detail_more_oper}
    点击元素    ${change_price_button} 

修改房价
    [Arguments]    ${newprice}    ${remark}
    输入值    ${price_input}    ${newprice}
    输入值    ${changeprice_beizhu}    ${remark}
    点击元素    ${changeprice_confirm_button}

验证修改房价成功
    Wait Until Element Is Not Visible    ${changeprice_confirm_button}
               
点击取消预留按钮
    Mouse Over    ${detail_more_oper}
    点击元素    ${cancel_resvroom_button}
    
点击恢复预留按钮
    Mouse Over    ${detail_more_oper}
    点击元素    ${recov_resvroom_button} 
    
    
    
    
    