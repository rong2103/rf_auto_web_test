*** Variables ***
#登录用户名密码
${pwd_ele}    //input[@id='password']
${user_ele}    //input[@id='username']
${login}    //input[@id='submit']
#切换酒店集团
${change_hotel_select}    //nz-select/div/div/div
${change_jituan_li}    //div[@style="overflow: auto;"]/ul/li
#横向导航栏
${member_Nag}   //a[text()='会员']
${market_Nag}    //a[text()='市场活动']
${memberinfo_menu}    //*[text()="会员信息管理"]
${reserv_menu}    //a[text()='预订']
${checkin_menu}    //a[text()='入住']
${order_menu}    //a[text()='订单']
