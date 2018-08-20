*** Variables ***
##################左侧预订单信息tab#########################
${reserv_info}    //a[contains(text(),'预订单信息')]
#1,预订单信息-订单基本信息tab
${reserorder_detaill_tab}    //span[text()='订单基本信息']/..
#批量入住按钮
${batch_checkin_button}    //span[text()='批量入住']/..
${batch_checkin_confirm_button}    //div[@id="model"]//div[@class="sub"]//button
#修改订单按钮
${modify_reservorder_button}    //span[text()='修改订单']/..
#修改订单-预订人
${modify_reservorder_person}     //nz-input[@formcontrolname="resvPerson"]/input
#修改订单-电话号码
${modify_reservorder_phone}     //nz-input[@formcontrolname="phone"]/input
#修改订单-团队名
${modify_reservorder_teamname}    //nz-input[@formcontrolname="teamName"]/input
# #修改订单-公付
# ${modify_teamfee_sel}
# ${modify_teamfee_val}
#修改订单-确定按钮
${modify_reservorder_confirm_button}    //div[@class="ant-modal-body"]/form//button
#更多操作
${detail_more_oper}    //button[text()='更多操作']
#更多操作-取消预订
${cancel_reserv}    //div[@class='cdk-overlay-pane']//li[3]
#更多操作-排房
${select_room_button}    //div[@class='cdk-overlay-pane']//li[1]
#更多操作-更改客源
${change_guestsource}    //div[@class='cdk-overlay-pane']//li[2]
#更多操作-更改客源-散客
${change_guestsource_tosample}    //app-guestsource//label/span
#更多操作-更改客源-会员
${change_guestsource_tomember}    //app-guestsource//label[2]/span/span
#更多操作-更改客源-单位
${changesource_tounit_radio}    //app-guestsource//label[3]/span/span
#更多操作-更改客源-中介
${changesource_tointermediary_radio}    //app-guestsource//label[4]/span/span
#更多操作-更改客源-确定按钮
${changesource_confirm_button}    //app-guestsource/div[3]/button
#更多操作-noshown
${guest_noshown}    //div[@class='cdk-overlay-pane']//li[4]
#客人信息tab
${customer_detail_tab}    //span[text()='客人信息']/..
#客人信息tab-预订人
${customer_reservperson}    //div[@class="ant-table-body"]//tbody/tr/td[4]
#客人信息tab-电话号码
${customer_reservphone}    //div[@class="ant-table-body"]//tbody/tr/td[8]
#账务明细tab
${account_detail_tab}    //span[text()='账务明细']/..
#交订金按钮
${deposit_button}    //span[text()='订金']/..
#订金金额
${deposit_num}    //nz-input-number[@formcontrolname="inputAmount"]//input
#入账按钮
${ruzhang_button}    //span[text()='入账']/..
#订金列表复选框
${deposit_list_checkbox}    //div[@class="ant-table-body"]/table/tbody/tr/td/label/span
#冲调按钮
${deposit_cancel_button}    //span[text()='冲调']/..
#冲调原因
${chongtiao_reason}    //nz-input[@nztype="textarea"]/textarea
#冲调确定按钮
${chongtiao_confirm_button}    //div[@id="model"]//span[text()='确定']/..


############################左侧房间详情列表########################################################
${reserv_room_detail}    //nz-sider/ul/li[3]
#入住    
${reserv_room_checkin_button}    //span[text()='入住']/..
#修改预留
${reserv_room_}    //span[text()='修改预留']/..
#更多操作
#同预订单详情的更多操作元素
#更多操作-改价
${reserv_room_changeprice}    //div[@class='cdk-overlay-pane']//li[1]
${price_input}    //nz-input-number//input
${changeprice_beizhu}    //div[@id="model"]//textarea
${changeprice_confirm_button}    //span[text()='确定']/..
#更多操作-取消预留
${reserv_room_cancelroom}    //div[@class='cdk-overlay-pane']//li[3]

