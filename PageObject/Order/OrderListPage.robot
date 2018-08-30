*** Settings ***
Resource    ../../ElementDao/Order/OrderListElement.robot
Resource    ../../PublicUitl/SysResource.robot

*** Keywords ***
点击订单查询菜单
    点击元素    ${order_menu_button}
    
查看订单
    点击元素    ${list_oper_detail_button}