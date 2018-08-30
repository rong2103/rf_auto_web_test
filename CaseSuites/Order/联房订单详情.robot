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
#联房入住
散客联房入住
    点击普通入住菜单
    # 输入入住人姓名    ${checkin_person_data}
    # 输入入住人证件号码    ${checkin_idNo_data}
    选择房型间数-入住
    选择房型间数-入住
    点击自动排房按钮
    添加入住人    ${checkin_name1}    ${checkin_idno1}    ${checkin_name2}    ${checkin_idno2}
    点击入住-确定按钮
    交押金-入账
    关闭房卡操作弹窗    
  
#有预订单时，批量入住
设置主账房
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击联房订单左侧订单信息
    设置主账房
    验证设置主账房成功
        
增发早餐券
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击联房订单左侧订单信息
    增发早餐券
    验证增发早餐券成功
    
 
    