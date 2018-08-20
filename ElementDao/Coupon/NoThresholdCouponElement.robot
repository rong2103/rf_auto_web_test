*** Variables ***
${coupon_management}    //span[text()='券管理']/..
${nothresholdcoupon_menue}    //a[text()='无门槛券']
${add_button}    //button[text()='+ 新增']
#新增无门槛
${coupon_name}    //nz-input[@formcontrolname="coupon_name"]/input
${coupon_total}    //nz-input-number[@formcontrolname="coupon_total"]//input
${coupon_face_value}    //nz-input-number[@formcontrolname="coupon_face_value"]//input
${select_hotel}    //span[text()='选择酒店']/..
${select_jituan}    //b[text()='集团']/../../span
${select_jituan_confirmbutton}    //div[text()='选择酒店']/../../div[3]/button[2]
${add_coupon_confirmbutton}    //div[text()='新增无门槛券']/../../div[3]/button[2]

#列表元素
${search_coupon_button}    //span[text()='查询']/..
${list_coupon_name}    //div[@class="ant-table-body"]//td
${list_detail_button}    //span[text()='详情']
${list_modify_button}    //span[text()='修改']
${list_expire_button}    //span[text()='使失效']
${list_distribute_button}     //span[text()='发放']
${list_status}      //div[@class="ant-table-body"]//td[7]/span
#//div[@class="ant-table-body"]//td[8]/span[2]

#详情
${detail_close_button}    //div[text()="无门槛券详情"]/../../button
${detail_coupon_name}    //div[text()='无门槛券详情']/../../div[@class="ant-modal-body"]/form/div/div[2]/div/span
${detail_coupon_total}     //div[text()='无门槛券详情']/../../div[@class="ant-modal-body"]/form/div[2]/div[2]/div/span
#修改
${modify_coupon_name}    //div[text()='修改无门槛券']/../..//nz-input/input     
${modify_coupon_total}    //div[text()='修改无门槛券']/../..//nz-input-number//input
${modify_coupon_confirm_button}    //div[text()='修改无门槛券']/../../div[3]/button[2]
#使失效
${expire_confirm_button}    //div[text()='确定让这组优惠券失效？']/../../div[3]/button[2]
#发放
${distri_number}    //div[text()='优惠券发放']/../..//nz-input-number//input
${distri_member}    //div[text()='优惠券发放']/../..//label/span
${distri_confirm_button}    //div[text()='优惠券发放']/../../div[3]/button[2]