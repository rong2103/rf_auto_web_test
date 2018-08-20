*** Settings ***
Library    Selenium2Library     timeout=10 
Resource    ../../ElementDao/Market/PointRoomRuleElement.robot
Resource    ../../PublicUitl/SysResource.robot
Variables    ../../DataConfig/Market/PointRoomRule_datas.py

*** Keywords ***
点击积分换房菜单
    Wait Until Element Is Visible    ${pointroomrule_memu}
    Click Element    ${pointroomrule_memu}
    
点击新增按钮
    Wait Until Element Is Visible    ${new_button} 
    Click Element    ${new_button}
    
输入规则名称
    [Arguments]    ${name}
    Wait Until Element Is Visible    ${rule_name}
    Input Text    ${rule_name}    ${name}    
    
选择兑换房型
    Wait Until Element Is Visible    ${roomtype_select} 
    Click Element    ${roomtype_select}
    Wait Until Element Is Visible    ${roomtype_li}   
    Click Element    ${roomtype_li} 
          
输入所属积分数
    [Arguments]    ${num}
    Wait Until Element Is Visible    ${point_num}
    Input Text    ${point_num}    ${num} 
       
选择适用对象
    Wait Until Element Is Visible    ${member_type_checknox}
    Click Element    ${member_type_checknox}
   
点击保存按钮
    Wait Until Element Is Enabled    ${savebutton}
    Click Button    ${savebutton} 
    
验证新增成功
    验证元素期望值    ${list_name}    ${rule_name_data}
    # Wait Until Element Is Visible    ${list_name}
    # Sleep    1    
    # ${a}   Get Text    ${list_name}
    # Return From Keyword If    ${a}==${rule_name_data}        

点击修改按钮
    点击元素    ${edit_button}

点击禁用按钮
    点击元素    ${disable_button}   

点击启用按钮
    点击元素    ${enable_button} 

点击删除按钮
    点击元素    ${delete_button}
    点击元素    ${delete_confirm_button}
        
验证修改成功
    验证元素期望值      ${list_name}    ${edit_name_data} 
    
验证禁用成功
    验证元素期望值    ${list_status}    禁用    
   
验证启用成功
    验证元素期望值    ${list_status}    启用 
    
验证删除成功
    Wait Until Element Is Not Visible    ${delete_confirm_button}
    sleep    1         
    Page Should Not Contain    ${edit_name_data}