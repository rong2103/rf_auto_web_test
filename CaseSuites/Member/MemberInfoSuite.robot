*** Settings ***
Library    Selenium2Library    timeout=10
Variables   ../../DataConfig/login_data.py    #外部变量文件中引入数据变量
Variables   ../../DataConfig/Member/MemberInfo_datas.py
Resource    ../../PageObject/LoginResource.robot   #从外部资源文件中引入资源
Resource    ../../PageObject/Member/MemberInfoResource.robot
Resource    ../../PageObject/Member/MemberChangesResource.robot
Test Setup   Run Keywords    
...           login     AND     
...           点击会员菜单     
Test Teardown    Close Browser

*** Test Cases ***
新增会员
    # login_reserve
    # 点击会员菜单
    点击会员信息管理
    点击新增按钮
    输入会员信息-必填字段    ${card_no_data}    ${new_member_idno}    ${new_member_name}    ${member_mobile_data}
    点击创建按钮
    判断会员列表存在数据    ${card_no_data}
    # 会员卡号自增

# 查看会员详情
    # # login_reserve
    # # 点击会员菜单
    # 点击会员信息管理
    # 点击详情按钮
    # 验证详情界面跳转成功
    # # 验证详情界面数据显示正确
    
修改会员信息-姓名
    # login_reserve
    # 点击会员菜单
    点击会员信息管理
    点击修改按钮
    修改会员姓名    ${edit_member_name_data}
    点击保存按钮
    验证字段保存成功    ${edit_member_name_data}


增加积分
    点击会员信息管理
    点击修改按钮
    点击积分增减按钮
    输入增减积分数    ${add_score_num_data}    ${remark_data}
    点击增减积分确定按钮
    验证增减积分成功    'Add'
    
减少积分
    点击会员信息管理
    点击修改按钮
    点击积分增减按钮
    点击减少积分选项
    输入增减积分数    ${decrease_score_num_data}    ${remark_data}
    点击增减积分确定按钮
    验证增减积分成功    'Del'
    
积分换房
    点击会员信息管理
    点击修改按钮
    点击积分换房按钮
    ${a}    在积分换房弹窗上获取剩余的积分数
    ${b}    在积分换房弹窗上获取扣除的积分数
    log    ${a}
    Log    ${b}
    ${tmp}    Evaluate    ${a}-${b}        
    点击积分换房确定按钮
    点击会员信息管理
    ${c}    获取元素的值    ${list_remain_point}
    log    ${c}
    判断两个数字是否相等    ${tmp}    ${c}
    
    
充值-列表
    点击会员信息管理
    #获取充值前的可用金额
    ${money_before_recharge}    获取元素的值    ${list_available_money}
    点击列表充值按钮
    输入充值金额    ${recharge_money_data}    ${remark_data}
    点击充值确定按钮
    判断充值界面是否关闭
    # ${b}    Evaluate    ${money_before_recharge}+${recharge_money_data} 
    # #获取充值后的可用金额 
    # ${money_after_recharge}    获取元素的值    ${list_available_money}  
    # 判断两个数字是否相等    ${b}    ${money_after_recharge}

充值-修改界面 
    # 刷新界面  
    点击会员信息管理
    点击修改按钮
    点击修改界面充值按钮
    输入充值金额    ${recharge_money_data2}    ${remark_data}
    点击充值确定按钮
    点击账单按钮
    ${a}    获取账单列表中金额
    判断两个数字是否相等    ${a}    ${recharge_money_data2}
    
# 发放优惠券
    
# 查看优惠券
           
换卡
    点击会员信息管理
    点击修改按钮
    点击换卡按钮
    输入换卡的新卡号和备注    ${changecard_cardno}    ${changecard_remrk}
    在换卡弹窗点击确定按钮
    验证换卡成功
    # 删除会员卡作废表中的卡号

修改会员类型   
    点击会员信息管理
    点击修改按钮
    点击修改类型按钮
    选择会员类型
    #获取选择会员类型名称
    ${a}    Get Text    ${type_value_li}
    输入修改类型原因    ${remark_data}
    点击修改类型保存按钮
    #获取修改界面的会员类型信息
    ${b}   Get Text    ${detail_membertype_text}
    判断两个值是否相等    ${a}    ${b}
    
修改密码-忘记密码
    点击会员信息管理
    点击修改按钮
    点击修改密码按钮
    输入新密码-忘记密码    ${new_pwd_data}    ${new_pwd_data}
    点击修改密码保存按钮
    验证修改密码成功

#经常在点击列表操作按钮时，无法判断到底是点击哪条记录的按钮
# 修改密码-记得原密码
    # 点击会员信息管理
    # 点击修改按钮
    # 点击修改密码按钮
    # 输入新旧密码    ${new_pwd_data}    ${new_pwd_data2}    ${new_pwd_data2}
    # 点击修改密码保存按钮
    # 验证修改密码成功
    
挂失补卡-无费用
    点击会员信息管理
    点击修改按钮
    点击挂失补卡按钮
    输入新卡号    ${new_cardno_data1}
    输入备注    ${remark_data}
    点击挂失补卡确定按钮
    验证挂失补卡成功
   
挂失补卡-积分
    点击会员信息管理
    点击修改按钮
    点击挂失补卡按钮
    输入新卡号    ${new_cardno_data2}
    选择积分支付    ${loss_score_fee}   
    输入备注    ${remark_data}
    点击挂失补卡确定按钮
    验证挂失补卡成功
    
挂失补卡-现金
    点击会员信息管理
    点击修改按钮
    点击挂失补卡按钮
    输入新卡号    ${new_cardno_data3}
    选择现金支付    ${loss_cash_fee}   
    输入备注    ${remark_data}
    点击挂失补卡确定按钮 
    验证挂失补卡成功
    
挂失-不补卡
    点击会员信息管理
    点击修改按钮
    ${a}    Get Text    ${detail_cardno_value_text}
    Comment    ${a}
    点击挂失补卡按钮
    点击仅挂失按钮
    输入备注    ${remark_data}
    点击挂失补卡确定按钮
    查询该卡号的会员    ${a}
    ${b}    Get Text    ${list_state}
    Comment    ${b}
    判断两个值是否相等    挂失    ${b}
    
恢复会员
    点击会员信息管理 
    查询-选择会员类型为所有类型
    查询状态为挂失的会员
    点击查询按钮
    点击恢复按钮
    ${b}    Get Text    ${list_state}
    Comment    ${b}
    判断两个值是否相等    正常    ${b}    

注销  
    点击会员信息管理
    点击新增按钮
    输入会员信息-必填字段    ${card_no_data_off}    ${new_member_idno}    ${member_name_data_off}    ${member_mobile_data_off}
    点击创建按钮
    点击会员信息管理
    # 查询所有正常状态的会员
    点击修改按钮
    ${a}    Get Text    ${detail_cardno_value_text}
    Comment    ${a}
    点击注销按钮-修改界面
    在注销弹窗输入备注并点击确定按钮    ${remark_data}
    查询该卡号的会员    ${a}
    ${b}    Get Text    ${list_state}
    Comment    ${b}
    判断两个值是否相等    停用    ${b}
    
    
        