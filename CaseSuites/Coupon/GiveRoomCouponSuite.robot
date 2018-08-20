*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../PublicUitl/SysResource.robot
Resource    ../../PageObject/LoginResource.robot
Resource    ../../PageObject/Coupon/GiveRoomCouponPage.robot
Resource    ../../ElementDao/Coupon/GiveRoomCouponElement.robot
Variables    ../../DataConfig/Coupon/GiveRoomCouponData.py
Suite Setup   BuiltIn.Run Keywords    
...           login     AND
...           切换到集团         AND 
...           点击会员菜单
Suite Teardown    Selenium2Library.Close Browser

*** Test Cases ***
新增赠房券
    点击赠房券菜单
    点击新增按钮
    输入券名称    ${coupon_name_data}  
    输入券张数    ${coupon_add_total}
    选择适用酒店
    点击新增确定按钮
    
查看详情界面
    # 点击无门槛券菜单
    点击查询按钮
    点击详情按钮
    验证元素期望值    ${detail_coupon_name}    ${coupon_name_data} 
    关闭详情弹窗
    
修改赠房券张数
    # 点击无门槛券菜单
    点击查询按钮
    点击修改按钮
    修改券张数    ${coupon_edit_totaldata}
    点击修改确定按钮
    #验证修改无门槛券张数成功
    点击详情按钮
    验证元素期望值    ${detail_coupon_total}    ${coupon_edit_totaldata} 张
    关闭详情弹窗
    
 修改赠房券名称
    # 点击无门槛券菜单
    点击查询按钮
    点击修改按钮
    修改券名称    ${coupon_edit_namedata}
    点击修改确定按钮
    #验证修改无门槛券张数成功
    点击详情按钮
    验证元素期望值    ${detail_coupon_name}    ${coupon_edit_namedata} 
    关闭详情弹窗
    
使赠房券失效
    # 点击无门槛券菜单
    点击查询按钮
    点击使失效按钮
    点击使失效确定按钮
    验证元素期望值    ${list_status}    已失效
    
    
    