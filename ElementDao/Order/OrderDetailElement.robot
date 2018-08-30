*** Variables ***
#----------------------------------------------------------左侧订单信息与房间信息切换-----------------------------------------------------------------
${sample_order_info_li}    //span[text()='订单信息（普通）']/..
${union_order_info_li}    //span[text()='订单信息（联房）']/..
${team_order_info_li}    //span[text()='订单信息（团队）']/..

#-------------------------------------------订单基本信息tab-----------------------------------------------------------
#订单基本信息tab按钮
${order_detaill_tab}    //span[text()='订单基本信息']/..

#修改订单按钮
${modify_order_button}    //span[text()='修改订单']/..
#修改订单-入住类型
${modify_order_checkintype}    //div[text()='修改订单']/../..//nz-select[@formcontrolname="checkinType"]
#修改订单-入住类型-正常
${checkintype_samp_li}    //div[@class="cdk-overlay-pane"]//ul/li[2]
#修改订单-入住类型-自用
${checkintype_self_li}    //div[@class="cdk-overlay-pane"]//ul/li[2]
#修改订单-入住类型-免费
${checkintype_free_li}    //div[@class="cdk-overlay-pane"]//ul/li[2]
#修改订单-订单来源
${modify_ordersource_input}     //div[text()='修改订单']/../..//nz-select[@formcontrolname="orderSource"]
#修改订单-订单来源-步入
#修改订单-销售员
${modify_saleman_input}     //div[text()='修改订单']/../..//nz-select[@formcontrolname="promoter"]
#修改订单-订单备注
${modify_orderemark_input}     //div[text()='修改订单']/../..//textarea
#修改订单-确定按钮
${modify_order_conf_button}    //div[text()='修改订单']/../..//button[2]


#定位不能与OrderRoomElement中一致
#更改客源
${change_custsource_button}    //span[text()='更改客源']/..
#更改客源-散客
${change_guestsource_tosample}    //app-guestsource//label/span
#更改客源-会员
${change_guestsource_tomember}    //app-guestsource//label[2]//span[text()='会员']
#更改客源-会员-输入会员名   
#更改客源-单位
${changesource_tounit_radio}    //app-guestsource//label[3]//span[text()='单位']
#更改客源-单位-点击下拉框
${changesource_sele}    //app-guestsource//nz-select/div/div/div
#更改客源-单位-选择下拉值
${changesource_li}    //div[@style="overflow: auto;"]/ul/li 
#更改客源-中介
${changesource_tointermediary_radio}    //app-guestsource//label[4]//span[text()='中介']
#更改客源-确定按钮
${changesource_confirm_button}    //app-guestsource/div[3]/button 

#修改销售员
${change_saleman_button}    //span[text()='销售员：']/a
${change_saleman_select}    //div[text()='修改销售员']/../..//nz-select
${change_saleman_conf_button}    //div[text()='修改销售员']/../..//div[@class="ant-modal-footer ng-star-inserted"]/button[2]

#---------------------------联房订单
#设置主账房按钮
${more_oper_btn}    //button[text()='更多操作']
${set_mainroon_btn}    //div[@class='cdk-overlay-pane']//li[2]
${set_mainroon_room}    //div[text()='设置主账房']/../..//nz-radio-group[2]/label
${set_mainroon_confbtn}    //div[text()='设置主账房']/../../div[@class="ant-modal-footer ng-star-inserted"]/button[2]

#增发早餐券
${add_breakfast_ticket_btn}    //div[@class='cdk-overlay-pane']//li[4]
${add_breakfast_ticket_savebtn}    //span[text()='保存']/..

#-----------------------------团队订单
#管理团队按钮
${manage_team_btn}    //div[@class='cdk-overlay-pane']//li[2]  
${addroom_btn}    //app-jointeam/div/div[3]/div/span
${lessroom_btn}    //app-jointeam/div/div[4]/div/span
${manage_team_confbtn}    //app-jointeam/div[@class="sub"]/button  
#-------------------------------------------客人信息tab---------------------
#客人信息tab按钮
${cust_info_tab}    //span[text()='客人信息']/..

#修改客人信息
#修改客人信息按钮
${edit_cust_button}    //a[text()='修改 ']
#修改客人信息-姓名
${customer_name_input}    //div[text()='客人信息']/../..//tbody/tr/td//input
#修改客人信息-证件号码
${customer_idno_input}    //div[text()='客人信息']/../..//tbody/tr/td[3]//input
#修改客人信息-手机号码
${customer_phone_input}    //div[text()='客人信息']/../..//tbody/tr/td[5]//input
#修改客人信息-备注
${customer_remark_input}     //div[text()='客人信息']/../..//tbody/tr/td[6]//input
#修改客人信息-确定按钮
${customer_confirm_button}     //div[text()='客人信息']/../../div[@class="ant-modal-footer ng-star-inserted"]/button[2]

#添加黑名单
${add_blacklist_button}    //a[text()='添加黑名单']
#添加黑名单-备注
${blacklist_remark_input}    //div[text()='新增客人黑名单']/../..//input
#添加黑名单-确定按钮
${add_blacklist_confbutton}    //div[text()='新增客人黑名单']/../../div[@class="ant-modal-footer ng-star-inserted"]/button[2]

#恢复白名单
${add_whitelist_button}    //a[text()='恢复白名单']

#-------------------------------------------账务明细tab---------------------
#账务明细tab按钮
${acc_detail_tab}    //span[text()='账务明细']/..

#入账按钮
${ruzhang_button}    //span[text()='入账']/..
#订金列表复选框
${deposit_list_checkbox}    //div[@class="ant-table-body"]/table/tbody/tr/td/label/span

#冲调按钮
${deposit_cancel_button}    //span[text()='冲调']/..
#冲调原因
${chongtiao_reason_input}    //nz-input[@nztype="textarea"]/textarea
#冲调确定按钮
${chongtiao_confirm_button}    //div[@id="model"]//span[text()='确定']/..

#-------------------------------------------订单日志tab---------------------
#订单日志tab按钮
${order_log_tab}    //span[text()='订单日志']/..

