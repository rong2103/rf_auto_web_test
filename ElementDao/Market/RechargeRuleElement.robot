*** Variables ***
#充值规则菜单
${rechargerule_menu}    //a[text()='充值规则']
#列表
${list_name}    //*[@class="ant-table-tbody"]/tr/td
${list_status}    //*[@class="ant-table-tbody"]/tr/td[7]/span
#新增
${add_rechargerule_button}    //button[@class='addNew cp']
${add_rechargerule_name}    //input[@id='rechargeRuleName']
${add_rechargerule_membertype}    //label[@formcontrolname='allChecked']/span
${add_rechargerule_amount}    //nz-input[@name="rechargeAmount"]/input
${add_rechargerule_gift}    //nz-input[@name='giftAmount']/input
${add_rechargerule_startdate}    //nz-datepicker[@name="beginDate"]/span
${add_rechargerule_startdate_v}    //tbody[@class='ant-calendartbody']/tr/td/div
# //nz-datepicker[@name="beginDate"]//input
${add_rechargerule_enddate}    //nz-datepicker[@name="endDate"]/span
${add_rechargerule_enddate_v}    //tbody[@class='ant-calendartbody']/tr[6]/td[7]/div
# //nz-datepicker[@name="endDate"]//input
${save_button}    //button[text()='保存']
#送券设置
${coupon_setting}    //span[text()='送券设置']
#送券设置-继续添加按钮
${add_coupon_button}    //span[text()=' 继续添加']/i
#券类型
${coupontype_selector}    //div[@class="ant-table-content"]//nz-select//span
${coupontype_li}    //div[@style="overflow: auto;"]/ul/li[2]
#券名称
${couponname_selector}    //div[@class="ant-table-content"]//tr/td[2]/nz-select//span
${couponname_li}    //div[@style="overflow: auto;"]/ul/li[2]
#送券设置确定按钮
${coupon_confirm_button}    //div[@class="ant-modal-footer"]/button
#修改
${edit_button}    //span[text()='修改']
#定位同新增

#禁用
${disable_button}    //span[text()='禁用']
${enable_button}    //span[text()='启用']
#删除
${delete_button}    //span[text()='删除']/..
${delete_confirm_button}    //span[text()='确定']/..