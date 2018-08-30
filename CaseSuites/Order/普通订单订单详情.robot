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
散客普通入住
    点击普通入住菜单
    输入入住人姓名    ${checkin_person_data}
    输入入住人证件号码    ${checkin_idNo_data}
    选择房型间数-入住
    点击自动排房按钮
    点击入住-确定按钮
    交押金-入账
    关闭房卡操作弹窗

#普通订单    
更改客源
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击普通订单左侧订单信息
    房间-更改客源为单位
    验证更改客源成功
    
修改订单入住类型to自用
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击普通订单左侧订单信息
    点击修改订单按钮
    修改订单入住类型to自用
    输入订单备注    ${remark}
    点击修改订单确定按钮
    验证修改订单成功
    
修改订单入住类型to免费
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击普通订单左侧订单信息
    点击修改订单按钮
    修改订单入住类型to免费
    输入订单备注    ${remark}
    点击修改订单确定按钮
    验证修改订单成功
    
    
#修改销售员
修改客人信息
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击普通订单左侧订单信息
    点击客人信息tab
    修改客人信息    ${modicust_name}    ${modicust_tel}
    验证修改客人信息成功
    
添加黑名单
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击普通订单左侧订单信息
    点击客人信息tab
    添加黑名单    ${remark}
    验证添加黑名单成功
    
恢复白名单
    点击订单菜单
    点击订单查询菜单
    查看订单
    点击普通订单左侧订单信息
    点击客人信息tab
    恢复白名单
    验证恢复白名单成功
 