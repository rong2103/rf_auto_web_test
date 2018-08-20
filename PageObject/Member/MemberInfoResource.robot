*** Settings ***
Library    Selenium2Library    timeout=10
# Library    DatabaseLibrary
Resource    ../../ElementDao/Member/MemberInfoElement.robot 
Resource    ../../PublicUitl/SysResource.robot   
#外部变量文件中引入变量
Variables    ../../DataConfig/Member/MemberInfo_datas.py


*** Keywords ***
点击会员信息管理
    Selenium2Library.Wait Until Element Is Visible    ${memberinfo_menu}
    Sleep    1    
    Selenium2Library.Click Element    ${memberinfo_menu}
    
点击新增按钮
    Selenium2Library.Wait Until Element Is Visible    ${new_button}    
    Selenium2Library.Click Button    ${new_button}  
    
输入会员信息-必填字段
    [Arguments]    ${cardno_data}    ${idno_data}    ${name_data}    ${mobile_data}
    #输入卡号
    Selenium2Library.Wait Until Element Is Visible    ${card_no} 
    Selenium2Library.Input Text    ${card_no}    ${cardno_data}
    #身份证
    Selenium2Library.Wait Until Element Is Visible    ${id_no}    
    Selenium2Library.Input Text    ${id_no}    ${idno_data}
        #选择会员类型
    Selenium2Library.Wait Until Element Is Visible    ${member_type_sel}  
    Selenium2Library.Click Element    ${member_type_sel}  
    Selenium2Library.Wait Until Element Is Visible    ${member_type_li} 
    Selenium2Library.Click Element    ${member_type_li}  
    #姓名
    Selenium2Library.Wait Until Element Is Visible    ${name}    
    Selenium2Library.Input Text    ${name}    ${name_data}
    #电话
    Selenium2Library.Wait Until Element Is Visible    ${mobile}    
    Selenium2Library.Input Text    ${mobile}    ${mobile_data}
  

点击创建按钮
    Selenium2Library.Wait Until Element Is Enabled    ${create_button}
    Selenium2Library.Click Button    ${create_button}    
       
判断会员列表存在数据
    #判断成功跳转到列表界面
    #判断列表存在卡号
    [Arguments]    ${text}
    点击会员信息管理
    Selenium2Library.Wait Until Element Is Visible    ${search_button}
    Selenium2Library.Wait Until Element Is Visible    ${list_cardno}
    ${a}    Get Text    ${list_cardno}
    Return From Keyword If    ${a}==${text} 

# 会员卡号自增
    # ${card_no_data}    evaluate   int(${card_no_data})
    # ${card_no_data}    Set Variable    ${card_no_data}+1
    # ${card_no_data}    evaluate    str(${card_no_data})
    # # ${card_No}    Set Variable    Convert To String    ${card_No}    

# 电话号码自增  
    
点击详情按钮
    Selenium2Library.Wait Until Element Is Visible    ${detail_button} 
    Selenium2Library.Click Element    ${detail_button} 
    
验证详情界面跳转成功
    Selenium2Library.Wait Until Element Is Visible    ${detail_cardno}    
 
#TODO
验证详情界面数据显示正确
    Selenium2Library.Wait Until Page Contains    text    
    
点击修改按钮
    Selenium2Library.Wait Until Element Is Visible    ${edit_button} 
    Selenium2Library.Click Element     ${edit_button}   
    
修改必填字段
    [Arguments]    ${name}    ${phone}    ${idno}
    #输入姓名
    Selenium2Library.Wait Until Element Is Visible    ${edit_membername}      
    Selenium2Library.Input Text    ${edit_membername}     ${name} 
    #输入电话号码
    Selenium2Library.Wait Until Element Is Visible    ${edit_memberphone}}     
    Selenium2Library.Input Text    ${edit_memberphone}    ${phone} 
    #输入身份证号码
    Selenium2Library.Wait Until Element Is Visible    ${edit_member_cardid}      
    Selenium2Library.Input Text    ${edit_member_cardid}     ${idno} 
    
修改会员姓名
    [Arguments]    ${name}
    Selenium2Library.Wait Until Element Is Visible    ${edit_membername}      
    Selenium2Library.Input Text    ${edit_membername}     ${name} 
    
    
点击保存按钮
    Selenium2Library.Wait Until Element Is Enabled    ${edit_save_btton}
    Selenium2Library.Click Button    ${edit_save_btton}

验证字段保存成功
    [Arguments]    ${data} 
    #页面不包含修改的保存按钮
    Selenium2Library.Wait Until Page Does Not Contain Element    ${edit_save_btton}
    点击会员信息管理   
    #页面包含查询按钮、和电话号码元素
    Selenium2Library.Wait Until Element Is Visible    ${search_button}
    Selenium2Library.Wait Until Element Is Visible    ${list_name}
    Page Should Contain    ${data}    
    # ${a}    Get Text    ${list_name}
    # Return From Keyword If    ${a}==${data}

点击积分增减按钮
    Selenium2Library.Wait Until Element Is Visible    ${add_score_button}
    Selenium2Library.Click Element    ${add_score_button}
    
输入增减积分数
    [Arguments]    ${number}    ${remark}
    Wait Until Element Is Visible    ${score_number}  
    Sleep    1        
    Input Text    ${score_number}     ${number} 
    Wait Until Element Is Visible    ${oper_reason}      
    Input Text    ${oper_reason}     ${remark}   

点击增减积分确定按钮
    Wait Until Element Is Enabled    ${operscore_cocnfirm_button}   
    Click Button    ${operscore_cocnfirm_button} 
# ${decrease_score_radio}    //nz-radio-group[@formcontrolname="operation"]/label[2]//input

点击减少积分选项
    Wait Until Element Is Visible    ${decrease_score_radio}
    Click Element    ${decrease_score_radio}

点击积分明细
    Wait Until Element Is Enabled    ${score_detail_link}
    Sleep    1     
    Click Element    ${score_detail_link} 
        
验证增减积分成功
    [Arguments]    ${flag}
    Wait Until Element Is Not Visible    ${operscore_cocnfirm_button}
    点击积分明细
    Wait Until Element Is Visible    ${add_score_num} 
    Wait Until Element Is Visible    ${decrease_score_num}   
    ${a}     Get Text    ${add_score_num}
    ${b}     Get Text    ${decrease_score_num}
    Run Keyword If    ${flag}=='Add'    Return From Keyword If    ${a}==${add_score_num_data} 
    ...    ELSE IF    ${flag}=='Del'     Return From Keyword If    ${b}==${decrease_score_num_data}    
    
验证正确跳转到积分明细界面
    Wait Until Element Is Visible    ${score_detail_title}           

点击积分换房按钮
    点击元素    ${point_room_button} 
    
点击积分换房确定按钮
    点击按钮    ${pointroom_cocnfirm_button}
    
在积分换房弹窗上获取扣除的积分数
    [Return]    ${cost_point_num}
    ${cost_point_num}    Get Text    ${cost_point}

在积分换房弹窗上获取剩余的积分数
    [Return]    ${cost_point_num}
    ${cost_point_num}    Get Text    ${remained_point}
    
获取明细中扣除积分数
    [Return]    ${b}
    Wait Until Element Is Visible    ${decrease_score_num}
    ${b}     Get Text    ${decrease_score_num}   

判断两个数字是否相等
    [Arguments]    ${a}    ${b}
    Should Be Equal As Numbers    ${a}    ${b}

判断两个值是否相等
    [Arguments]    ${a}    ${b}
    Should Be Equal   ${a}    ${b}
    Sleep    1    
        
# 获取会员列表中剩余积分数
    

点击列表充值按钮
    点击元素    ${list_recharge_button} 
    
输入充值金额
    [Arguments]    ${money}    ${remark}
    Wait Until Element Is Visible    ${recharge_num}
    Input Text    ${recharge_num}    ${money}
    Wait Until Element Is Visible    ${recharge_remark}
    Input Text    ${recharge_remark}    ${remark} 
    
点击充值确定按钮
    点击按钮    ${recharge_confirm_button}
      
判断充值界面是否关闭
    Sleep    1    
    Wait Until Element Is Not Visible    ${recharge_confirm_button}    
        
点击修改界面充值按钮
    点击元素    ${recharge_button}
    
点击账单按钮
    点击元素    ${recharge_bill_button}  
    
获取账单列表中金额
    [Return]    ${value}
    ${value}    获取元素的值    ${bill_value}                  