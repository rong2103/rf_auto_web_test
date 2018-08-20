*** Variables ***
#积分换房菜单
${pointroomrule_memu}    //a[text()='积分换房']
#新增按钮
${new_button}    //button[@routerlink='/market/point-room-rule/edit-point-room-rule/0']
${rule_name}    //input[@id='pointRoomRuleName']
${roomtype_select}    //nz-select[@formcontrolname='roomTypeCode']
${roomtype_li}    //ul[@class='ant-select-dropdown-menu ant-select-dropdown-menu-vertical ant-select-dropdown-menu-root']/li
${point_num}    //nz-input-number//input
${member_type_checknox}    //label[@formcontrolname='allChecked']/span
${savebutton}    //button[text()='保存']
#list
${list_name}    //tr/td[2]
${list_status}    //tr[1]/td[8]/span

#修改
${edit_button}    //span[text()='修改']

#禁用
${disable_button}    //span[text()='禁用']

#启用
${enable_button}    //span[text()='启用']

#删除
${delete_button}    //span[text()='删除']/..
${delete_confirm_button}    //span[text()='确定']/..   
