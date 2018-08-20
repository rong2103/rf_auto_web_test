*** Settings ***
Resource    ../../PageObject/Market/PointRoomRulePage.robot
Resource    ../../PageObject/LoginResource.robot
Variables    ../../DataConfig/Market/PointRoomRule_datas.py
Suite Setup    BuiltIn.Run Keywords    
...           login     AND     
...           点击市场活动菜单
Suite Teardown    Selenium2Library.Close Browser

*** Test Cases ***
新增积分换房规则
    点击积分换房菜单
    点击新增按钮
    输入规则名称    ${rule_name_data}
    选择兑换房型
    输入所属积分数    ${point_num_data}
    选择适用对象
    点击保存按钮
    验证元素期望值    ${list_name}    ${rule_name_data}
    
修改积分换房规则
    点击积分换房菜单
    点击修改按钮
    输入规则名称    ${edit_name_data}
    点击保存按钮
    验证修改成功
    
禁用积分换房规则
    点击积分换房菜单
    点击禁用按钮
    验证禁用成功
    
启用积分换房规则
    点击积分换房菜单
    点击启用按钮
    验证启用成功
    
删除积分换房规则
    点击积分换房菜单
    点击禁用按钮
    点击删除按钮
    验证删除成功
    