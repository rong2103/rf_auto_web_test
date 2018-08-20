*** Settings ***
Library    Selenium2Library    timeout=10
Variables         ../../DataConfig/login_data.py    #外部变量文件中引入数据变量
Variables         ../../DataConfig/Member/MemberType_datas.py
Resource          ../../PageObject/LoginResource.robot    #从外部资源文件中引入资源
Resource          ../../ElementDao/Member/MemberTypeElement.robot
Resource          ../../PageObject/Member/MemberTypeResource.robot
Resource        ../../PublicUitl/SysResource.robot
Suite Setup   BuiltIn.Run Keywords    
...           login     AND
...           切换到集团         AND 
...           点击会员菜单
Suite Teardown    Selenium2Library.Close Browser

*** Test Cases ***
新增会员类型
    点击会员类型管理  
    点击新增按钮
    输入会员类型信息
    点击保存按钮
    验证元素期望值    ${list_type_name}    ${new_membertype_name}

修改会员类型
    点击会员类型管理
    点击修改按钮
    Wait Until Element Is Visible    ${add_membertype_name} 
    Wait Until Element Is Visible    ${add_membertype_remark}    
    Input Text    ${add_membertype_name}    ${editmembertypename}
    Input Text    ${add_membertype_remark}    ${editmembertyperemark}
    点击保存按钮
    验证元素期望值    ${list_type_name}    ${edit_membertype_name}

禁用会员类型
    点击会员类型管理
    点击禁用按钮
    验证元素期望值    ${list_type_status}    禁用 
    
    
启用会员类型
    点击会员类型管理
    点击启用按钮
    验证元素期望值    ${list_type_status}    启用 
 
删除会员类型
    点击会员类型管理    
    点击删除按钮
    验证删除成功    
    