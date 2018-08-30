*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../PageObject/LoginResource.robot
Resource    ../../ElementDao/Checkin/CheckinElement.robot
Resource    ../../PageObject/Checkin/CheckinPage.robot
Resource    ../../ElementDao/Order/OrderDetailElement.robot
Resource    ../../PageObject/Order/OrderRoomPage.robot
Variables    ../../DataConfig/Checkin/CheckinData.py
Variables    ../../DataConfig/Order/OrderData.py

Suite Setup   BuiltIn.Run Keywords    
...           login     AND     
...           点击入住菜单     
Suite Teardown    Selenium2Library.Close Browser

*** Test Cases ***
#入住1天续住1天
续住
    点击普通入住菜单
    输入入住人姓名    ${checkin_person_data}
    输入入住人证件号码    ${checkin_idNo_data}
    选择房型间数-入住
    点击自动排房按钮
    点击入住-确定按钮
    交押金-入账
    关闭房卡操作弹窗
    点击左侧房间订单详情
    续住1天
    交押金-入账
    关闭房卡操作弹窗
    验证续住成功
    
#散客入住改客源
更改客源
    # 点击普通入住菜单
    # 输入入住人姓名    ${checkin_person_data}
    # 输入入住人证件号码    ${checkin_idNo_data}
    # 选择房型间数-入住
    # 点击自动排房按钮
    # 点击入住-确定按钮
    # 交押金-入账
    # 关闭房卡操作弹窗
    点击左侧房间订单详情
    房间-更改客源为单位
    验证客源为单位
    
换房
    # 点击普通入住菜单
    # 输入入住人姓名    ${checkin_person_data}
    # 输入入住人证件号码    ${checkin_idNo_data}
    # 选择房型间数-入住
    # 点击自动排房按钮
    # 点击入住-确定按钮
    # 交押金-入账
    # 关闭房卡操作弹窗
    点击左侧房间订单详情
    ${room}    换房
    关闭房卡操作弹窗
    # ${b}    获取当前房间房号
    # Should Be Equal As Strings    (${room})    ${b}    
    
添加外部订单号
    点击左侧房间订单详情
    修改外部订单号    ${outer_order_number}
    验证修改外部订单号成功
    
改价
    点击左侧房间订单详情
    修改价格    88
    
修改同来宾客
    点击同来宾客按钮
    输入同来宾客姓名    ${tonglai_name}
    输入同来宾客证件号码    ${tonglai_idno}
    输入同来宾客备注    ${remark}
    点击同来宾客确定按钮

订单-联房
    点击左侧房间订单详情
    点击联房按钮
    选择一个联房房间并确定
    
# 增发早餐券
    
订单详情-开发票
    点击开发票按钮
    开增值税普通发票    ${title}    ${money}    ${no}    ${remark}
    
      
    
     
    
    
    
    
    
    
