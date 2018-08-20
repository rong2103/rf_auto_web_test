*** Settings ***
Library    Selenium2Library    timeout=10
Library    DatabaseLibrary  
Resource    MemberInfoResource.robot
Resource    ../../ElementDao/Member/MemberChangesElement.robot  
Resource    ../../PublicUitl/SysResource.robot
#外部变量文件中引入变量
Variables    ../../DataConfig/Member/MemberInfo_datas.py


*** Keywords ***
点击换卡按钮
    Selenium2Library.Wait Until Element Is Visible    ${change_card_button}  
    Selenium2Library.Click Button    ${change_card_button}  
    
输入换卡的新卡号和备注
    [Arguments]    ${cardNo}    ${cardRemark}
    Selenium2Library.Wait Until Element Is Visible    ${new_card_input}  
    Selenium2Library.Wait Until Element Is Visible    ${new_card_remark}
    Selenium2Library.Input Text    ${new_card_input}     ${cardNo}
    Selenium2Library.Input Text    ${new_card_remark}   ${cardRemark}

在换卡弹窗点击确定按钮
    Selenium2Library.Wait Until Element Is Visible    ${changecard_cocnfirm_button}
    Selenium2Library.Click Button    ${changecard_cocnfirm_button}        
    
验证换卡成功
    # [Arguments]    ${cardno_value}
    Wait Until Element Is Not Visible    ${changecard_cocnfirm_button} 
    sleep    1
    ${cardno_value}    Get Text  ${detail_cardno_value_text}
    comment   ${cardno_value}
    #如果获取到的详情界面的卡号与换卡的卡号一致，返回
    Run Keyword If    ${cardno_value}==${changecard_cardno}    Return From Keyword
    Sleep    time_        
           
# 删除会员卡作废表中的卡号
    # Connect To Database Using Custom Params    pymysql    database='jte_pms_member', user='root', password='xyz11111111', host='192.168.10.203', port=3306
    # ${name}    BuiltIn.Set Variable    ${edit_member_name_data}
    # # Execute Sql String    select member_code from t_pms_member where name=${name}
    # # # Execute Sql String     delete from t_pms_member_card_no_cancel where member_code in (select member_code from t_pms_member where name=${name})
    # Disconnect From Database
    
点击修改类型按钮
    Selenium2Library.Wait Until Element Is Enabled    ${modify_type_button}    
    Selenium2Library.Click Button    ${modify_type_button}  

选择会员类型
    Selenium2Library.Wait Until Element Is Enabled    ${type_select}   
    Selenium2Library.Click Element    ${type_select}  
    Selenium2Library.Wait Until Element Is Enabled    ${type_value_li}  
    Selenium2Library.Click Element    ${type_value_li} 

输入修改类型原因
    [Arguments]    ${reason}
    Selenium2Library.Wait Until Element Is Visible    ${modify_type_reason}
    Selenium2Library.Input Text    ${modify_type_reason}    ${reason}    
    
点击修改类型保存按钮
    Selenium2Library.Wait Until Element Is Enabled    ${modifytype_cocnfirm_button}
    Selenium2Library.Click Button    ${modifytype_cocnfirm_button} 
    Sleep    2       
    
点击修改密码按钮
    Selenium2Library.Wait Until Element Is Enabled    ${modify_pwd_button}    
    Selenium2Library.Click Button    ${modify_pwd_button}
    
输入新密码-忘记密码
    [Arguments]    ${new_pwd}    ${confirm_newpwd}
    Selenium2Library.Wait Until Element Is Enabled    ${forgotpwd_chechbox}
    Selenium2Library.Click Element    ${forgotpwd_chechbox}
    Selenium2Library.Wait Until Element Is Enabled    ${newpwd_input}
    Selenium2Library.Input Text    ${newpwd_input}    ${new_pwd}
    Selenium2Library.Wait Until Element Is Enabled    ${newpwd_confirm_input}
    Selenium2Library.Input Text    ${newpwd_confirm_input}    ${confirm_newpwd}

输入新旧密码
    [Arguments]    ${old_pwd}    ${new_pwd}    ${confirm_newpwd}
    Selenium2Library.Wait Until Element Is Enabled    ${originalPws_input}
    Selenium2Library.Input Text    ${originalPws_input}    ${old_pwd}
    Selenium2Library.Wait Until Element Is Enabled    ${newpwd_input}
    Selenium2Library.Input Text    ${newpwd_input}    ${new_pwd}
    Selenium2Library.Wait Until Element Is Enabled    ${newpwd_confirm_input}
    Selenium2Library.Input Text    ${newpwd_confirm_input}    ${confirm_newpwd}

点击修改密码保存按钮
    Selenium2Library.Wait Until Element Is Enabled    ${modifypwd_savebutton}
    Selenium2Library.Click Button    ${modifypwd_savebutton}
       
验证修改密码成功
    Selenium2Library.Wait Until Element Is Not Visible      ${modifypwd_savebutton}
    Sleep    1    
    
点击挂失补卡按钮
    点击按钮    ${Loss_card_button}   

输入新卡号
    [Arguments]    ${carNo}
    Selenium2Library.Wait Until Element Is Enabled    ${new_cardno_input}
    Selenium2Library.Input Text    ${new_cardno_input}    ${carNo}  
选择积分支付
    [Arguments]     ${scorenum} 
    Wait Until Element Is Enabled    ${score_payment_radio}
    Click Element    ${score_payment_radio}
    Wait Until Element Is Enabled    ${score_payment_num}
    Input Text    ${score_payment_num}    ${scorenum} 

选择现金支付
    [Arguments]     ${cashnum} 
    Wait Until Element Is Enabled    ${cash_payment_radio}
    Click Element    ${cash_payment_radio}
    Wait Until Element Is Enabled    ${cash_payment_num}
    Input Text    ${cash_payment_num}    ${cashnum}
                
输入备注
    [Arguments]    ${remark}
    Selenium2Library.Wait Until Element Is Enabled    ${loss_card_remark}
    Selenium2Library.Input Text    ${loss_card_remark}    ${remark}
    
点击挂失补卡确定按钮         
    Selenium2Library.Wait Until Element Is Enabled    ${losscard_cocnfirm_button}
    Selenium2Library.Click Button    ${losscard_cocnfirm_button}       

验证挂失补卡成功
    Wait Until Element Is Not Visible    ${losscard_cocnfirm_button}
    点击会员信息管理
    Sleep    1    
    ${a}    Get Text    ${list_cardno}
    Run Keyword If    ${a}==${new_cardno_data1}    Return From Keyword 
    Sleep    1  

查询-选择会员类型为所有类型
    Sleep    1 
    #会员类型为所有
    Wait Until Element Is Visible    ${member_type_search_sel}
    Click Element    ${member_type_search_sel}
    Wait Until Element Is Visible    ${member_type_search_li}
    Click Element    ${member_type_search_li} 
                  
查询该卡号的会员
    [Arguments]    ${no}
    Sleep    1   
    #查询状态为挂失得数据
    #卡号
    Wait Until Element Is Visible    ${cardno_search}
    Input Text    ${cardno_search}    ${no}
    #会员状态为全部
    Wait Until Element Is Visible    ${member_state_search_sel}
    Click Element    ${member_state_search_sel}
    Wait Until Element Is Enabled    ${member_state_search_li}
    Sleep    1    
    Click Element    ${member_state_search_li}
    #点击查询按钮
    点击按钮    ${search_button}

查询状态为正常的会员
    Sleep    1   
    #会员状态为正常
    Wait Until Element Is Visible    ${member_state_search_sel}
    Click Element    ${member_state_search_sel}
    Wait Until Element Is Enabled    ${member_state_search_li2}
    Sleep    1    
    Click Element    ${member_state_search_li2}
    # #点击查询按钮
    # 点击按钮    ${search_button}

查询状态为挂失的会员
    Sleep    1   
    #会员状态为挂失
    Wait Until Element Is Visible    ${member_state_search_sel}
    Click Element    ${member_state_search_sel}
    Wait Until Element Is Enabled    ${member_state_search_li3}
    Sleep    1    
    Click Element    ${member_state_search_li3}
    
点击查询按钮
    点击按钮    ${search_button}
            
点击仅挂失按钮
    点击元素    ${oper_type_button}            

点击恢复按钮
    点击元素    ${recovery_button} 
            
点击注销按钮-修改界面
    Wait Until Element Is Enabled    ${cancel_member_button}
    Click Element    ${cancel_member_button}

在注销弹窗输入备注并点击确定按钮
    [Arguments]    ${remark}
    Wait Until Element Is Visible    ${cancel_member_remark}  
    Input Text    ${cancel_member_remark}      ${remark}
    Wait Until Element Is Enabled    ${cancel_member_savebutton}
    Click Button    ${cancel_member_savebutton}           
    
