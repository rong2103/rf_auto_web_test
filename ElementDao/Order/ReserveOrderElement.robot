*** Variables ***
#----------------------------------------------预订单信息li----------------------------------------------------
#预订单信息menue按钮
${reserv_info}    //a[contains(text(),'预订单信息')]

#----------------------------------------------预订单信息-订单基本信息tab--------------------------------------------------------
${reserorder_detaill_tab}    //span[text()='订单基本信息']/..
#预订单信息-订单基本信息tab-批量入住按钮
${batch_checkin_button}    //span[text()='批量入住']/..
#预订单信息-订单基本信息tab-批量入住-证件号码
${batch_checkin_idno_input}    //app-batchcheckin//table/tbody/tr/td[8]//input
#预订单信息-订单基本信息tab-批量入住——备注
${batch_checkin_remark_input}    //app-batchcheckin//table/tbody/tr/td[10]//input
#预订单信息-订单基本信息tab-批量入住确定按钮
${batch_checkin_confirm_button}    //div[@id="model"]//div[@class="sub"]//button

#预订单信息-订单基本信息tab-修改订单按钮
${modify_reservorder_button}    //span[text()='修改订单']/..
#预订单信息-订单基本信息tab-修改订单-预订人
${modify_reservorder_person}     //nz-input[@formcontrolname="resvPerson"]/input
#预订单信息-订单基本信息tab-修改订单-电话号码
${modify_reservorder_phone}     //nz-input[@formcontrolname="phone"]/input
#预订单信息-订单基本信息tab-修改订单-团队名
${modify_reservorder_teamname}    //nz-input[@formcontrolname="teamName"]/input
#预订单信息-订单基本信息tab-修改订单-确定按钮
${modify_reservorder_confirm_button}    //div[@class="ant-modal-body"]/form//button

#预订单信息-订单基本信息tab-更多操作
${detail_more_oper}    //button[text()='更多操作']
#预订单信息-订单基本信息tab-更多操作-取消预订
${cancel_reserv}    //div[@class='cdk-overlay-pane']//li[3]

#预订单信息-订单基本信息tab-更多操作-排房
${select_room_button}    //div[@class='cdk-overlay-pane']//li[1]

#预订单信息-订单基本信息tab-更多操作-更改客源
${change_guestsource}    //div[@class='cdk-overlay-pane']//li[2]
#预订单信息-订单基本信息tab-更多操作-更改客源-散客
${change_guestsource_tosample}    //app-guestsource//label/span
#预订单信息-订单基本信息tab-更多操作-更改客源-会员
${change_guestsource_tomember}    //app-guestsource//label[2]/span/span
#预订单信息-订单基本信息tab-更多操作-更改客源-单位
${changesource_tounit_radio}    //app-guestsource//label[3]/span/span
#预订单信息-订单基本信息tab-更多操作-更改客源-中介
${changesource_tointermediary_radio}    //app-guestsource//label[4]/span/span
#预订单信息-订单基本信息tab-更多操作-更改客源-中介下拉框
${reserorder_changesource_selector}    //app-guestsource//nz-select/div/div/div
#预订单信息-订单基本信息tab-更多操作-更改客源-中介下值
${reserorder_changesource_li}    //div[@style="overflow: auto;"]/ul/li
#预订单信息-订单基本信息tab-更多操作-更改客源-确定按钮
${changesource_confirm_button}    //app-guestsource/div[3]/button

#预订单信息-订单基本信息tab-更多操作-noshown
${resorder_noshown_btn}    //div[@class='cdk-overlay-pane']//li[4]
#预订单信息-订单基本信息tab-更多操作-noshown-入账
${resorder_noshown_confbtn}    //app-noshow//div[@class="sub"]/button
#-------------------------------------------------------------------预订单信息-客人信息tab------------------------------------------------------------------------------------
${customer_detail_tab}    //span[text()='客人信息']/..
#预订单信息-客人信息tab-预订人
${customer_reservperson}    //div[@class="ant-table-body"]//tbody/tr/td[4]
#预订单信息-客人信息tab-电话号码
${customer_reservphone}    //div[@class="ant-table-body"]//tbody/tr/td[8]

#-----------------------------------------------------------------------预订单信息-账务明细tab---------------------------------------------------
${account_detail_tab}    //span[text()='账务明细']/..
#预订单信息-账务明细tab-交订金按钮
${deposit_button}    //span[text()='订金']/..
#预订单信息-账务明细tab-交订金-方式
#预订单信息-账务明细tab-交订金-金额
${deposit_num}    //nz-input-number[@formcontrolname="inputAmount"]//input
#预订单信息-账务明细tab-交订金-入账按钮
${ruzhang_button}    //span[text()='入账']/..
#预订单信息-账务明细tab-订金列表复选框
${deposit_list_checkbox}    //div[@class="ant-table-body"]/table/tbody/tr/td/label/span
#预订单信息-账务明细tab-冲调按钮
${deposit_cancel_button}    //span[text()='冲调']/..
#预订单信息-账务明细tab-冲调原因
${chongtiao_reason}    //nz-input[@nztype="textarea"]/textarea
#预订单信息-账务明细tab-冲调确定按钮
${chongtiao_confirm_button}    //div[@id="model"]//span[text()='确定']/..



