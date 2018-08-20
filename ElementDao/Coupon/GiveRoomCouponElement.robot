*** Variables ***
${coupon_management}    //span[text()='券管理']/..
${giveroomcoupon_menue}    //a[text()='赠房券']
${add_button}    //button[text()='+ 新增']
#新增
${coupon_name}    //nz-input[@formcontrolname="coupon_name"]/input
${coupon_total}    //nz-input-number[@formcontrolname="coupon_total"]//input
${select_hotel_button}    //span[text()='选择酒店/房型']/..
${select_hotel}   //div[text()='选择酒店/房型']/../../div[2]/div/div/div[2]/span
${select_roomtype}     //div[text()='选择酒店/房型']/../../div[2]/div/div/div[3]/span
${select_hotel_confirmbutton}    //div[text()='选择酒店/房型']/../../div[3]/button[2]

${add_coupon_confirmbutton}    //div[text()='新增赠房券']/../../div[3]/button[2]

#列表元素
${search_coupon_button}    //span[text()='查询']/..
${list_coupon_name}    //div[@class="ant-table-body"]//td
${list_detail_button}    //span[text()='详情']
${list_modify_button}    //span[text()='修改']
${list_expire_button}    //span[text()='使失效']
${list_status}      //div[@class="ant-table-body"]//td[8]/span


#详情
${detail_close_button}    //div[text()='赠房券详情']/../../button
${detail_coupon_name}    //div[text()='赠房券详情']/../../div[@class="ant-modal-body"]/form/div/div[2]/div/span
${detail_coupon_total}     //div[text()='赠房券详情']/../../div[@class="ant-modal-body"]/form/div[3]/div[2]/div/span


#修改
${modify_coupon_name}    //div[text()='修改赠房券']/../..//nz-input/input     
${modify_coupon_total}    //div[text()='修改赠房券']/../..//nz-input-number//input
${modify_coupon_confirm_button}    //div[text()='修改赠房券']/../../div[3]/button[2]

#使失效
${expire_confirm_button}    //div[text()='确定让这组优惠券失效？']/../../div[3]/button[2]
