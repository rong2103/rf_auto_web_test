*** Variables ***
#普通预订菜单
${normal_reserv_memu}    //a[text()='普通预订']
#团队预订菜单
${team_reserv_memu}    //a[text()='团队预订']
#长包房预订菜单
${long_reserv_memu}    //a[text()='长包房预订']
#客人类型
##会员
${guestSourceType_member_radio}    //nz-radio-group[@formcontrolname="guestSourceType"]/label//span[text()='会员']
#//nz-radio-group[@formcontrolname="guestSourceType"]/label[2]//input
##单位
${guestSourceType_unit_radio}    //nz-radio-group[@formcontrolname="guestSourceType"]/label//span[text()='单位']
#//nz-radio-group[@formcontrolname="guestSourceType"]/label[3]//input
##中介
${guestSourceType_intermediary_radio}    //nz-radio-group[@formcontrolname="guestSourceType"]/label//span[text()='中介']
#//nz-radio-group[@formcontrolname="guestSourceType"]/label[4]//input
###会员单位中介输入框
${guestusername_selector}    //nz-select[@formcontrolname="gusetUsername"]/div/div/div
${guestusername_li}    //div[@style="overflow: auto;"]/ul/li
${guestusername_input}    //nz-select[@formcontrolname="gusetUsername"]/div/div/div[3]/div/input
##注册会员按钮
${register_member_button}    //span[text()='注册会员']/../..
${member_type_sel}    //nz-select[@formcontrolname="memberTypeCode"]/div/div/div
${member_type_li}    //div[@style='overflow: auto;']/ul/li
#卡号
${register_card_no}    //nz-input[@formcontrolname="cardNo"]/input
#身份证号
${register_id_no}    //nz-input[@formcontrolname="idNo"]/input
#会员名
${register_name}    //nz-input[@formcontrolname="name"]/input
#会员号码
${register_mobile}    //nz-input[@formcontrolname="mobile"]/input
#注册确定按钮
${register_confirm_button}    //app-register-member//button[@type='submit']
#预订信息
##预订人
${reserv_person}    //nz-input[@formcontrolname="resvPerson"]/input
${reserv_phone}    //nz-input[@formcontrolname="phone"]/input
##入住类型
${checkin_type_select}    //nz-select[@formcontrolname="checkinType"]/div/span
#自用
${checkin_type_li_ziyong}    //div[@style='overflow: auto;']/ul/li[2]
#免费
${checkin_type_li_free}    //div[@style='overflow: auto;']/ul/li[3]
#预订房间
##输入房间个数
${add_roomtype_input}   //tbody/tr/td[5]/input
${add_room_type}    //tbody/tr/td[5]/span[text()='+']
#选择房间号
${select_room_number}    //div[@class="selectH"]/../div[3]/span

#预订确定按钮
${reserv_confirm_button}    //span[text()='确定']/..

#验证预订成功
##跳转到预订单详情界面
${reserv_detail_Title}    //span[text()='订单信息']
#自动排房按钮
${auto_selectroom_button}    //span[text()='自动排房']/..



#团队预订
#团名
${team_name}    //nz-input[@formcontrolname="teamName"]/input
#公付
${teamFeeType_selector}    //nz-select[@formcontrolname="teamFeeType"]/div/span
${teamFeeType_li_wu}    //div[@style='overflow: auto;']/ul/li
${teamFeeType_li_xiaofei}    //div[@style='overflow: auto;']/ul/li[3]

