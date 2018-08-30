*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../PageObject/LoginResource.robot
Resource    ../../PageObject/Booking/RegularReservePage.robot
Variables   ../../DataConfig/Booking/RegularReserveData.py 
Resource    ../../PageObject/Order/ReserveListPage.robot
Resource    ../../PageObject/Order/ReserveRoomPage.robot
Variables    ../../DataConfig/Order/ReserveOrderDatas.py
Test Setup    BuiltIn.Run Keywords    
...           login          
...           点击预订菜单        
Test Teardown    Close Browser    

*** Test Cases ***
#房间：入住、修改预留、改价、操作房卡、取消预留
改价
    点击订单菜单
    查看预订单
    点击左侧预订房间信息
    点击改价按钮
    修改房价    ${new_room_price}    ${remark}
    验证修改房价成功
   
# 修改预留
    # 点击订单菜单
    # 查看预订单
    # 点击左侧预订房间信息
    # 点击修改预留按钮
    
取消预留
    点击订单菜单
    查看预订单
    点击左侧预订房间信息
    点击取消预留按钮

恢复预留
    点击订单菜单
    查看预订单
    点击左侧预订房间信息
    点击恢复预留按钮
        
# 入住

    


