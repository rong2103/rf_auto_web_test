*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../PageObject/LoginResource.robot
Resource    ../../PageObject/Booking/RegularReservePage.robot
Resource    ../../ElementDao/Booking/RegularReserveElement.robot
Resource    ../../PageObject/Member/MemberInfoResource.robot
Resource    ../../PageObject/Order/ReserveOrderPage.robot
Variables    ../../DataConfig/Member/MemberInfo_datas.py
Variables   ../../DataConfig/Booking/RegularReserveData.py 
Variables    ../../DataConfig/Order/OrderDatas.py
# Suite Setup   BuiltIn.Run Keywords    
# ...           login          
# # ...           点击预订菜单 
Test Setup    BuiltIn.Run Keywords    
...           login          
...           点击预订菜单        
Test Teardown    Close Browser    
# Suite Teardown    Selenium2Library.Close Browser

*** Test Cases ***
修改订单-预订人和手机号码
    #会员预订
    #先预订后修改订单
    # 点击预订菜单
    # 点击普通预订按钮
    选择客源类别-会员
    选择会员    ${reserv_register_name}
    选择房型间数
    在房间筛选中选择一个房间号
    点击预订-确定按钮 
    点击左侧预订单信息
    点击修改订单
    修改预订人    ${modify_person_data}
    修改手机号码    ${modify_mobile_data}
    点击确定按钮-修改订单
    验证预订人和电话号码修改成功
    
交订金冲调并取消订单
    #散客预订-免费
    #先预订
    点击预订菜单
    点击普通预订按钮
    输入预订人    ${reserv_person_data}
    输入手机号码    ${reserv_mobile_data}
    选择入住类型为免费
    选择房型间数
    在房间筛选中选择一个房间号
    点击预订-确定按钮 
    点击左侧预订单信息
    点击账务明细tab
    点击交订金按钮
    输入订金金额
    点击入账按钮
    勾选订金列表复选框
    点击冲调按钮
    输入冲调原因
    点击确定按钮
    

改价
    #散客预订-自用
    #先预订再改价
    点击预订菜单
    点击普通预订按钮
    输入预订人    ${reserv_person_data}
    输入手机号码    ${reserv_mobile_data}
    选择入住类型为自用
    选择房型间数
    在房间筛选中选择一个房间号
    点击预订-确定按钮 
    点击左侧预订房间信息
    点击改价按钮
    输入新的价格
        
NOSHOWN
    #散客预订
    点击预订菜单
    点击普通预订按钮
    输入预订人    ${reserv_person_data}
    输入手机号码    ${reserv_mobile_data}
    选择房型间数
    在房间筛选中选择一个房间号
    点击预订-确定按钮 
    点击左侧预订单信息
    点击账务明细tab
    点击交订金按钮
    输入订金金额
    点击入账按钮
    点击左侧预订单信息
    点击订单基本信息tab
    点击NoShown
    点击入账按钮
    
批量入住
    #会员预订-自用
    点击预订菜单
    点击普通预订按钮
    选择客源类别-会员
    选择会员    ${reserv_register_name}
    选择入住类型为自用
    选择房型间数
    在房间筛选中选择一个房间号
    点击预订-确定按钮
    点击批量入住
    
更改客源
    点击预订菜单
    # 点击普通预订按钮
    选择客源类别-会员
    选择会员    ${reserv_register_name}
    选择入住类型为免费
    选择房型间数
    在房间筛选中选择一个房间号
    点击预订-确定按钮
    点击左侧预订单信息
    点击更改客源
    更改客源-选择散客
    验证更改客源成功
    
取消预留
    点击预订菜单
    点击普通预订按钮
    选择客源类别-单位
    选择单位中介
    选择房型间数
    在房间筛选中选择一个房间号
    点击预订-确定按钮 
    点击左侧预订房间信息
    点击取消预留
   
修改团队名
    点击预订菜单
    点击团队预订按钮
    输入预订人    ${reserv_person_data}
    输入手机号码    ${reserv_mobile_data}
    输入团名    ${team_name_data}
    选择房型间数
    在房间筛选中选择一个房间号
    点击预订-确定按钮 
    点击左侧预订单信息
    点击修改订单
    修改团队名    teamname

#等夏老师改完控件之后再调试    
# 修改预订单公付项目   
    # 点击预订菜单
    # 点击团队预订按钮
    # 输入预订人    ${reserv_person_data}
    # 输入手机号码    ${reserv_mobile_data}
    # 输入团名    ${team_name_data}
    # 选择房型间数
    # 在房间筛选中选择一个房间号
    # 点击预订-确定按钮 
    # 点击左侧预订单信息
    # 点击修改订单
    # #改公付：房费->无
    # 选择公付为无
    # # 修改预订人    ${modify_person_data}
    # # 修改手机号码    ${modify_mobile_data}
    # 点击确定按钮-修改订单
    # # 验证预订人和电话号码修改成功  