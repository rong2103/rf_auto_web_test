*** Variables ***
${membertype_menue}    //a[text()='会员类型管理']
#列表
#会员名
${list_type_name}    //tbody/tr/td
#状态
${list_type_status}    //tbody/tr/td[9]/span
#新增
${membertype_new_button}    //button[text()='+ 新增']
${add_membertype_name}    //input[@id='memberTypeName']
${add_membertype_level}    //nz-input[@name='level']//input
${add_membertype_cost}    //nz-input-number[@name='cardCost']//input
${add_membertype_remark}    //nz-input[@name='remark']//input
${add_membertype_savebutton}    //button[text()='保存']
#修改
${edit_membertype_button}    //span[text()='修改']
#禁用
${disable_membertype_button}    //span[text()='禁用']
${enable_membertype_button}    //span[text()='启用']
#删除
${delete_membertype_button}    //nz-popconfirm/span
${delete_confirm}    //span[text()='确定']/..
