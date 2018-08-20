*** Variables ***
###订单详情界面-房间详情页面
#-----------------------------------------------左侧房间选择li--------------------------------------------------------
${order_room_detail}    //nz-sider/ul/li[3]
#获取房间房号
${fangjian_detail_li}    //nz-sider//li[5]/span[2]
#--------------------------------------------最上层操作按钮及其弹窗界面--------------------------------------------------
#续住
#续住按钮
${xuzhu_button}    //span[text()='续住']/..
#续住-增加天数的+号
${xuzhu_addday_button}    //span[text()='+']
#续住-按昨日价格续住勾选框
${xuzhu_preprice_checkbox}    //div[text()='续住']/../app-stayover//label//input
#续住-确定按钮
${xuzhu_confirm_button}    //div[text()='续住']/../app-stayover//div[@class='sub']/button
#续住-取消按钮
${xuzhu_cancel_button}    //div[text()='续住']/../app-stayover//div[@class='sub']/button[2]

#更改客源
${change_custsource}    //span[text()='更改客源']/..
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

#更多操作元素定位与OrderElement中一样
#更多操作
${detail_more_oper}    //button[text()='更多操作']
#更多操作-提前离店
${more_earlydep_button}    //div[@class='cdk-overlay-pane']//li[1]

#更多操作-换房
${more_changeroom_button}    //div[@class='cdk-overlay-pane']//li[2]
#更多操作-换房-换房原因
${changeroom_reason_input}    //div[@class="changeRoom"]/div/nz-input/input
#更多操作-换房-换房选择房型
${changeroom_select_roomtype}    //div[@class="changeRoom"]/app-roominfo//tbody/tr
#更多操作-换房-换房选择房号
${changeroom_select_roomnum}    //div[@class="changeRoom"]/app-roominfo/div[2]/div[3]/div[3]/span 
#更多操作-换房-确定按钮
${changeroom_confirm_button}    //div[@class="changeRoom"]/app-roominfo/div[3]/div[5]/button

#更多操作-外部订单号
${outer_order_button}    //div[@class='cdk-overlay-pane']//li[3]
#更多操作-外部订单号输入框
${outer_order_input}    //div[text()='修改外部订单号']/../../div[2]//nz-input/input
#更多操作-外部订单号-确定按钮
${outorder_confirm_button}    //div[text()='修改外部订单号']/../../div[3]/button[2]

#更多操作-改价
${change_price_button}    //div[@class='cdk-overlay-pane']//li[4]
#更多操作-改价-新房价
${changeprice_newprice_input}    //app-changeprice-inhouse//nz-input-number//input
#更多操作-改价-确定按钮
${changeprice_confirm_button}    //app-changeprice-inhouse//div[3]/buttons

#更多操作-同来宾客
${guets_button}    //div[@class='cdk-overlay-pane']//li[5]
#更多操作-同来宾客-姓名
${guests_name_input}    //div[text()='同来宾客']/../../div[2]//tbody/tr/td[2]//inputs    
#更多操作-同来宾客-证件号码
${guests_number_input}    //div[text()='同来宾客']/../../div[2]//tbody/tr/td[4]//input
#更多操作-同来宾客-备注
${guests_remark_input}    //div[text()='同来宾客']/../../div[2]//tbody/tr/td[6]//input
#更多操作-同来宾客-确定按钮
${guests_confirm_button}    //div[text()='同来宾客']/../../div[3]/button[2]

#更多操作-联房
${union_rooms_button}    //div[@class='cdk-overlay-pane']//li[7]
#更多操作-联房-选择房间
${selectedroom_button}    //app-jointroom//div[@class="leftRoom"]/span
#更多操作-联房-保存按钮
${union_rooms_savebutton}    //app-jointroom//button

#更多操作-增发早餐券
${breakfast_voucher_button}    //div[@class='cdk-overlay-pane']//li[8]
#更多操作-开发票
${invoice_button}    //div[@class='cdk-overlay-pane']//li[9]
#更多操作-开发票-发票抬头
${invoice_title_input}    //span[contains(text(),'开发票')]/../../../div[@class='ant-modal-body']/nz-input/input
#更多操作-开发票-开票金额
${invoice_money_input}    //span[contains(text(),'开发票')]/../../../div[@class='ant-modal-body']/nz-input-number[3]//input
#更多操作-开发票-发票代码
${invoice_code_input}     //span[contains(text(),'开发票')]/../../../div[@class='ant-modal-body']/nz-input[2]/input
#更多操作-开发票-备注
${invoice_remark_input}    //span[contains(text(),'开发票')]/../../../div[@class='ant-modal-body']/nz-input[3]/input
#更多操作-开发票-确定按钮
${invoice_confirm_button}     //span[contains(text(),'开发票')]/../../../div[@class='ant-modal-footer ng-star-inserted']/button


#---------------------------------------------中间房间的订单信息---------------------------
#入住天数：2天 
${detail_checkin_days}    //div[text()='入住天数：2天'] 
${detail_source}    //div[text()='客源类别：单位']


#-------------------------------------------下面订单入账部分-----------------------------------


