*** Variables ***
#普通入住菜单
${normal_checkin_memu}    //a[text()='普通入住']
#团队入住菜单
${team_checkin_memu}    //a[text()='团队入住']
#时租入住菜单
${hour_checkin_memu}    //a[text()='时租入住']
#早餐券管理菜单
${foodticket_memu}    //a[text()='早餐券管理']
#客人类型
##会员
${customerType_member_radio}    //nz-radio-group[@formcontrolname="customer_type"]/label//span[text()='会员']
##单位
${customerType_unit_radio}    //nz-radio-group[@formcontrolname="customer_type"]/label//span[text()='单位']
##中介
${customerType_intermediary_radio}    //nz-radio-group[@formcontrolname="customer_type"]/label//span[text()='中介']

###会员单位中介输入框
${guestusername_selector}    //nz-select[@formcontrolname="gusetUsername"]/div/div/div
${guestusername_li}    //div[@style="overflow: auto;"]/ul/li
${guestusername_input}    //nz-select[@formcontrolname="gusetUsername"]/div/div/div[3]/div/input

#入住人姓名
${checkin_username}    //nz-input[@formcontrolname="checkin_username"]/input
#入住人证件号
${checkin_card_type}    //nz-select[@formcontrolname="card_type"]/div/span
${checkin_card_num}    //nz-input[@formcontrolname="card_num"]/input
#手机号码
${checkin_phone}    //nz-input[@formcontrolname="phone"]/input

##入住类型
${checkin_type_select}    //nz-select[@formcontrolname="checkinType"]/div/span
#自用
${checkin_type_li_ziyong}    //div[@style='overflow: auto;']/ul/li[2]
#免费
${checkin_type_li_free}    //div[@style='overflow: auto;']/ul/li[3]

#选择房型
${add_roomtype_input}   //tbody/tr/td[4]/input
${add_room_type}    //tbody/tr/td[4]/span[text()='+']
#自动排房按钮
${auto_selectroom_button}    //span[text()='自动排房']/..
#选择房间号
${select_room_number}    //div[@class="selectH"]/../div[3]/span
#确定按钮
${reserv_confirm_button}    //span[text()='确定']/..




#########################团队入住
#团名
${team_name}    //nz-input[@formcontrolname="teamName"]/input
#公付
${teamFeeType_selector}    //nz-select[@formcontrolname="teamFeeType"]/div/span
${teamFeeType_li_wu}    //div[@style='overflow: auto;']/ul/li
${teamFeeType_li_xiaofei}    //div[@style='overflow: auto;']/ul/li[3]




######################时租入住
#计费规则


#########################交押金
#入账按钮
${into_account_button}    //div[text()='交押金']/../app-enteraccount/form/div[3]/button
#//span[text()='入账']/..

######################房卡弹窗
${close_roomcard}    //div[text()='房卡操作']/span/i
