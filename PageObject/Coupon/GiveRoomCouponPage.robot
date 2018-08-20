*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../ElementDao/Coupon/GiveRoomCouponElement.robot

*** Keywords ***
点击赠房券菜单
    点击元素    ${coupon_management}
    点击元素    ${giveroomcoupon_menue}
    
点击新增按钮
    点击元素    ${add_button} 
    
输入券名称
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${coupon_name} 
    Input Text    ${coupon_name}    ${name} 
    
输入券张数
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${coupon_total} 
    Input Text    ${coupon_total}    ${value}      
    
选择适用酒店
    点击元素    ${select_hotel_button}
    点击元素    ${select_hotel}
    点击元素    ${select_roomtype}
    点击元素    ${select_hotel_confirmbutton}
    
点击新增确定按钮
    点击元素    ${add_coupon_confirmbutton}

点击查询按钮
    点击元素    ${search_coupon_button}    
    
点击详情按钮
    点击元素    ${list_detail_button}
    
关闭详情弹窗
    点击元素    ${detail_close_button}

点击修改按钮
    点击元素    ${list_modify_button}
    
点击使失效按钮
    点击元素    ${list_expire_button}
    
修改券张数
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${modify_coupon_total} 
    Input Text    ${modify_coupon_total}    ${value}  
    
修改券名称
    [Arguments]    ${value}
    Wait Until Element Is Visible    ${modify_coupon_name} 
    Input Text    ${modify_coupon_name}    ${value}   

点击修改确定按钮
    点击元素    ${modify_coupon_confirm_button}  

点击使失效确定按钮    
    点击元素    ${expire_confirm_button}