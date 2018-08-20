*** Variables ***
#换卡
${change_card_button}    //span[text()='换卡']/..
${new_card_input}    //div[text()='换卡操作']/../..//form//nz-input[@formcontrolname="newCardNo"]/input
${new_card_remark}    //div[text()='换卡操作']/../..//form//nz-input[@formcontrolname="remark"]/textarea
${changecard_cocnfirm_button}    //div[text()='换卡操作']/../../div/button[2]
${changecard_cancel_button}    //div[text()='换卡操作']/../../div/button[1]
${changecard_close_button}    //div[text()='换卡操作']/../../button
#修改类型
${modify_type_button}    //span[text()='修改类型']/..
${type_select}    //nz-select[@formcontrolname="memberTypeCode"]/div/div/div
${type_value_li}    //div[@style='overflow: auto;']/ul/li
${modify_type_reason}    //nz-input[@formcontrolname="updateReason"]/input
${modifytype_cocnfirm_button}    //div[text()='修改会员类型']/../../div/button[2]
${modifytype_cancel_button}    //div[text()='修改会员类型']/../../div/button[1]
${modifytype_close_button}    //div[text()='修改会员类型']/../../button
#注销
${cancel_member_button}    //span[text()='注销']/..
${cancel_member_remark}    //div[text()='会员停用']/../..//nz-input/textarea
${cancel_member_savebutton}     //div[text()='会员停用']/../../div/button[2]
#挂失补卡
${Loss_card_button}    //span[text()='挂失补卡']/..
${oper_type_button}    //div[text()='挂失/补卡操作']/../..//form//nz-radio-group[@formcontrolname="operationType"]/label//span[text()='仅挂失']
${new_cardno_input}    //div[text()='挂失/补卡操作']/../..//nz-input[@formcontrolname="newCard"]/input
${score_payment_radio}    //div[text()='挂失/补卡操作']/../..//form//nz-radio-group[@formcontrolname="upgradeCost"]/label[2]//input
${score_payment_num}    //div[text()='挂失/补卡操作']/../..//form//nz-radio-group[@formcontrolname="upgradeCost"]/label[2]//nz-input-number//input
${cash_payment_radio}    //div[text()='挂失/补卡操作']/../..//form//nz-radio-group[@formcontrolname="upgradeCost"]/label[3]//input
${cash_payment_num}    //div[text()='挂失/补卡操作']/../..//form//nz-radio-group[@formcontrolname="upgradeCost"]/label[3]//nz-input-number//input
${loss_card_remark}    //div[text()='挂失/补卡操作']/../..//nz-input[@formcontrolname="remark"]/textarea
${losscard_cocnfirm_button}    //div[text()='挂失/补卡操作']/../../div/button[2]
${losscard_cancel_button}    //div[text()='挂失/补卡操作']/../../div/button[1]
${losscard_close_button}    //div[text()='挂失/补卡操作']/../../button
#恢复按钮
${recovery_button}    //span[text()='| 恢复']
#修改密码
${modify_pwd_button}    //span[text()='修改密码']/..
${originalPws_input}    //nz-input[@formcontrolname="originalPws"]/input
${forgotpwd_chechbox}    //div[text()='修改密码']/../..//form//label[@formcontrolname="isForgetPws"]/span/input
${newpwd_input}    //div[text()='修改密码']/../..//nz-input[@formcontrolname="newPws"]/input
${newpwd_confirm_input}    //div[text()='修改密码']/../..//nz-input[@formcontrolname="confirmPws"]/input
${modifypwd_savebutton}    //div[text()='修改密码']/../../div/button[2]
${modifypwd_cancelbutton}    //div[text()='修改密码']/../../div/button[1]
${modifypwd_closebutton}    //div[text()='修改密码']/../../button

#操作日志
${log_button}    //span[text()='操作日志']/..
