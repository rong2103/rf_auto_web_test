*** Settings ***
Resource    ../../ElementDao/Order/ReserveListElement.robot
Resource    ../../PublicUitl/SysResource.robot

*** Keywords ***  
查看预订单
    点击元素    ${resorder_list_detail_button}
    
取消预订单
    点击元素    ${resorder_list_cancel_button}