*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../ElementDao/Member/MemberTypeElement.robot
Resource    ../../PublicUitl/SysResource.robot
Variables    ../../DataConfig/Member/MemberType_datas.py


*** Keywords ***
点击会员类型管理
    Wait Until Element Is Visible    ${membertype_menue}
    Click Element    ${membertype_menue}
    Sleep    1    
   
点击新增按钮
    Wait Until Element Is Visible    ${membertype_new_button}
    Click Button    ${membertype_new_button}

输入会员类型信息
    Wait Until Element Is Visible    ${add_membertype_name}
    Wait Until Element Is Visible    ${add_membertype_level}
    Wait Until Element Is Visible    ${add_membertype_cost}
    Wait Until Element Is Visible    ${add_membertype_remark}
    Input Text    ${add_membertype_name}    ${newmembertypename}   
    Input Text    ${add_membertype_level}    ${newmembertypelevel}
    Input Text    ${add_membertype_cost}    ${newmembertypecost}
    Input Text     ${add_membertype_remark}   ${newmembertyperemark}

点击保存按钮    
    点击按钮    ${add_membertype_savebutton}
    Wait Until Element Is Not Visible    ${add_membertype_savebutton}              
       
点击修改按钮
    点击元素    ${edit_membertype_button}
    
点击禁用按钮
    Wait Until Element Is Visible    ${disable_membertype_button}
    Click Element    ${disable_membertype_button}
    Sleep    1    
    
点击启用按钮
    Wait Until Element Is Visible    ${disable_membertype_button}
    Click Element    ${enable_membertype_button}
    Sleep    1  
             
点击删除按钮
    Wait Until Element Is Visible    ${delete_membertype_button}
    click element    ${delete_membertype_button}
    Wait Until Element Is Visible    ${delete_confirm}
    click button    ${delete_confirm} 
    Sleep    1  
    
验证删除成功
    Wait Until Element Is Not Visible    ${delete_confirm}
    Sleep    1
    Page Should Not Contain    ${edit_membertype_name}             

    
    
    