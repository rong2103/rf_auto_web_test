*** Variables ***
#---------------------------------------------------------------左侧房间li
${reserv_room_detail}    //nz-sider/ul/li[3]
#入住按钮    
${reserv_room_checkin_button}    //span[text()='入住']/..
#入住-证件号码
#修改预留按钮
${modify_resvroom_button}    //span[text()='修改预留']/..
#更多操作
${detail_more_oper}    //button[text()='更多操作']
#更多操作-改价按钮
${change_price_button}    //div[@class='cdk-overlay-pane']//li[1]
#更多操作-改价-新房价
${price_input}    //nz-input-number//input
#更多操作-改价-原因
${changeprice_beizhu}    //div[@id="model"]//textarea
#更多操作-改价-确定按钮
${changeprice_confirm_button}    //span[text()='确定']/..

#更多操作-取消预留按钮
${cancel_resvroom_button}    //div[@class='cdk-overlay-pane']//li[3]
#更多操作-恢复预留按钮
${recov_resvroom_button}    //div[@class='cdk-overlay-pane']//li[3]
