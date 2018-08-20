*** Variables ***
${memberinfo_menu}    //a[text()="会员信息管理"]
${new_button}    //button[text()="新增"]
#新增
${member_type_sel}    //nz-select[@formcontrolname="memberTypeCode"]/div/div/div
${member_type_li}    //div[@style='overflow: auto;']/ul/li
${card_no}    //nz-input[@formcontrolname="cardNo"]/input
${id_no}    //nz-input[@formcontrolname="idNo"]/input
${name}    //nz-input[@formcontrolname="name"]/input
${mobile}    //nz-input[@formcontrolname="mobile"]/input
${create_button}    //button[text()="创建"]
#查询条件
${member_type_search_sel}    //div[@class="pull-left"]/nz-select/div/div/div
${member_type_search_li}    //div[@style="overflow: auto;"]/ul/li
${member_state_search_sel}    //div[@class="pull-left"]/nz-select[2]/div/div/div
###状态为全部
${member_state_search_li}    //div[@style="overflow: auto;"]/ul/li
###状态为正常
${member_state_search_li2}    //div[@style="overflow: auto;"]/ul/li[2]
###状态为挂失
${member_state_search_li3}    //div[@style="overflow: auto;"]/ul/li[3]
###状态为停用
${member_state_search_li4}    //div[@style="overflow: auto;"]/ul/li[4]
#卡号
${cardno_search}    //div[@class="pull-left"]/nz-input[2]/input
#列表
${list_cardno}     //tbody/tr/td
${list_name}    //tbody/tr/td[2]
${list_phone}    //tbody/tr/td[4]
${list_remain_point}    //tbody/tr/td[5]
${list_available_money}    //tbody/tr/td[6]
${list_recharge_button}    //span[text()='| 充值'] 
${search_button}    //span[text()='查询']/..
${list_state}    //tbody/tr/td[8]
#详情界面
#列表详情按钮
${detail_button}    //span[text()='详情 | '] 
${detail_cardno}    //label[text()='会员卡号'] 
#详情界面的卡号值
${detail_cardno_value_text}    //label[text()='会员卡号']/../../div[2]//span
#详情界面会员类型
${detail_membertype_text}    //label[text()='会员类型']/../../div[2]//span
#修改
${edit_button}    //tr[1]/td/span[text()='修改 '] 
${edit_membername}    //nz-input[@formcontrolname="name"]/input
${edit_memberphone}    //nz-input[@formcontrolname="mobile"]/input
# ${edit_remaining_point}    //a[text()='增减']/../../text()
#身份证号码
${edit_member_cardid}    //nz-input[@formcontrolname="idNo"]/input
${edit_save_btton}    //span[text()='保存']/..
#增减积分
${add_score_button}    //a[text()='增减']
${decrease_score_radio}    //nz-radio-group[@formcontrolname="operation"]/label[2]/span
${score_number}    //nz-input-number[@formcontrolname="productFraction"]//input
${oper_reason}    //nz-input[@formcontrolname="operationReasons"]/textarea
${operscore_cocnfirm_button}    //div[text()='会员积分增减']/../../div/button[2]
${operscore_cancel_button}    //div[text()='会员积分增减']/../../div/button[1]
${operscore_close_button}    //div[text()='会员积分增减']/../../button
#积分明细
${score_detail_link}    //a[text()='增减']/../a[text()='明细']
${score_detail_title}    //span[text()='积分查询']
${add_score_num}    //table/tbody/tr/td[4]/span
${decrease_score_num}    //table/tbody/tr/td[5]/span
#积分换房
${point_room_button}    //a[text()='积分换房']
#所需积分
${cost_point}    //label[text()='所需积分']/../../div[2]
#剩余积分
${remained_point}    //label[text()='剩余积分']/../../div[4]    
${pointroom_cocnfirm_button}    //div[text()='积分换房']/../../div/button[2]
#累计消费明细
${consume_detail_link}    //span[text()='明细']
#验证跳转成功-
${consume_detail_title}    //span[text()='会员历史消费记录']

#储值余额-账单
${recharge_bill_button}    //a[text()='账单']
${bill_value}    //tr/td[5]
#储值余额-充值
${recharge_button}    //a[text()='充值']
${recharge_num}    //div[text()='会员充值']/../..//nz-input-number//input
${recharge_remark}    //div[text()='会员充值']/../..//nz-input/textarea
${recharge_confirm_button}    //div[text()='会员充值']/../../div/button[2]    
#优惠券-发券

#优惠券-查看
