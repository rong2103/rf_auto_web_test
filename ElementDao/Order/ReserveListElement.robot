*** Variables ***   
#订单中所有左侧菜单栏
${reserve_menu_button}    //a[text()='预订单'] 
${teammanage_menu_button}    //a[text()='团队管理'] 
${invoice_menu_button}    //a[text()='发票查询'] 

#操作列表
#查看按钮
${resorder_list_detail_button}    //a[text()='详情']
${resorder_list_cancel_button}     //a[text()='取消']
${resorder_list_more_button}     //nz-table//nz-dropdown//i
${resorder_list_deposit_button}     //div[@class='cdk-overlay-pane']//li[1]
${resorder_list_noshown_button}     //div[@class='cdk-overlay-pane']//li[2]