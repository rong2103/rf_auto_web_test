*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../PageObject/LoginResource.robot
Resource    ../../PageObject/Booking/RegularReservePage.robot
Resource    ../../ElementDao/Checkin/CheckinElement.robot
Resource    ../../PageObject/Checkin/CheckinPage.robot
Variables    ../../DataConfig/Checkin/CheckinData.py
Resource    ../../ElementDao/Order/OrderDetailElement.robot
Resource    ../../PageObject/Order/OrderListPage.robot
Resource    ../../PageObject/Order/OrderDetailPage.robot
Resource    ../../PageObject/Order/OrderRoomPage.robot
Variables    ../../DataConfig/Order/OrderData.py
Test Setup   BuiltIn.Run Keywords    
...           login     AND     
...           点击入住菜单     
Test Teardown    Selenium2Library.Close Browser

*** Test Cases ***
团队入住
    点击团队入住菜单
    输入团队名称    ${team_name_data}
    选择房型间数-入住
    选择房型间数-入住
    点击自动排房按钮
    添加入住人    ${checkin_name1}    ${checkin_idno1}    ${checkin_name2}    ${checkin_idno2}
    点击入住-确定按钮
    交押金-入账
    关闭房卡操作弹窗  
 
管理团队-减少团队房间
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击团队订单左侧订单信息
    点击管理团队按钮 
    团队减少房间
    验证管理团队成功
       
管理团队-增加团队房间
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击团队订单左侧订单信息
    点击管理团队按钮 
    团队增加房间
    验证管理团队成功
    

    
    
    
    
    