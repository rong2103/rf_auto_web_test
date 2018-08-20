# coding:utf-8
# 协议单位数据维护

# Agreementunit单位管理
# -----------单位列表查询/高级查询
SelectUnitName = 'AutoTestUnit'  # 单位名称查询
SelectUnitContact = 'AutoTest'  # 联系人查询
SelectUnitPhone = '13388888888'  # 手机号码查询
SelectUnitPaymentAmountBegin = '1'  # 挂账额度开始
SelectUnitPaymentAmountEnd = '100000'  # 挂账额度结束
SelectUnitHaveUsedLimitBegin = '1'  # 已用额度开始
SelectUnitHaveUsedLimitEnd = '100'  # 已用额度结束
# -----------新增单位
AddUnitName = 'RobotUnit'  # 单位名称
AddUnitContact = 'Robot'  # 联系人
AddUnitPhone = '186888888888'  # 手机
AddUnitPaymentAmount = '888'  # 挂账额度
AddUnitBreakfast = '1'  # 早餐券
AddUnitBankNmber = '111'  # 银行账号
AddUnitDutyNmber = '222'  # 税号
AddUnitTelPhone = '0731-74806666'  # 电话
AddUnitContract = '333'  # 合同
AddUnitMall = '123@qq.com'  # 邮箱
AddUnitAddress = '444'  # 地址
AddUnitRemark = '555'  # 备注
# -----------修改单位
UpdateUnitName = 'AutoTestUnit'  # 单位名称
UpdateUnitContact = 'AutoTest'  # 联系人
UpdateUnitPhone = '13388888888'  # 手机
UpdateUnitPaymentAmount = '88888'  # 挂账额度
UpdateUnitBreakfast = '2'  # 早餐券
UpdateUnitBankNmber = '111111'  # 银行账号
UpdateUnitDutyNmber = '222222'  # 税号
UpdateUnitTelPhone = '0731-20180601'  # 电话
UpdateUnitContract = '20180601'  # 合同
UpdateUnitMall = 'AutoTestMall@qq.com'  # 邮箱
UpdateUnitAddress = 'AutoTest Address'  # 地址
UpdateUnitRemark = 'This is auto test remark'  # 备注

# Actionrecord行动记录
# -----------单位行动纪录列表查询
SelectUnitActionrecordUnitName = 'AutoTestUnit'  # 单位查询
SelectUnitActionrecordTotalConsumptionBegin = '1'  # 总消费开始
SelectUnitActionrecordTotalConsumptionEnd = '888'  # 总消费结束
SelectUnitActionrecordPaymentAmountBegin = '1'  # 挂账额度开始
SelectUnitActionrecordPaymentAmountEnd = '10000'  # 挂账额度结束
SelectUnitActionrecordHaveUsedLimitBegin = '1'  # 已用额度开始
SelectUnitActionrecordHaveUsedLimitEnd = '100'  # 已用额度结束
# -----------新增行动记录
AddUnitActionrecordTheme = 'RobotTheme'  # 主题
AddUnitActionrecordContact = 'Robot'  # 联络人
AddUnitActionrecordContent = 'This is robot test content'  # 具体内容
# -----------修改行动记录
UpdateUnitActionrecordTheme = 'AutoTestTheme'  # 主题
UpdateUnitActionrecordContact = 'AutoTest'  # 联络人
UpdateUnitActionrecordContent = 'This is auto test content'  # 具体内容

# Accountgroup账套管理
# -----------列表账套查询
SelectUnitAccountgroupName = 'AutoTestAccountgroup'  # 查询的账套名
SelectUnitAccountgroupForName = ''  # 循环查询的账套名
SelectUnitAccountgroupRandomName = ''  # 随机生成Arsst的账套名
# -----------新增账套
AddUnitAccountgroupName = 'RobotTestAccountgroup'  # 新增固定的账套名
AddUnitAccountgroupRandomName = ''  # 随机生成的账套名
# -----------编辑账套
UpdateUnitAccountgroupName = 'AutoTestAccountgroup'  # 修改固定的账套名
UpdateUnitAutoTestAccountgroupRandomName = ''  # 随机生成的账套名
# -----------账套结账
UnitAccountgroupPaymentMoney = ''  # 结算收款金额
UnitAccountgroupPaymentRemark = 'This auto test remark'  # 结算收款备注
UnitAccountgroupWeChatPayMoney = '0.01'  # 微信收款金额
UnitAccountgroupWeChatPayCode = ''  # 微信收款授权码
UnitAccountgroupWeChatPayRemark = 'This auto test remark'  # 微信收款备注
UnitAccountgroupAliPayMoney = '0.01'  # 支付宝收款金额
UnitAccountgroupAliPayCode = ''  # 支付宝收款授权码
UnitAccountgroupAliPayReamrl = 'This auto test remark'  # 支付宝收款备注
UnitAccountgroupRefundMoney = ''  # 退款金额
UnitAccountgroupRefundRemark = 'This auto test remark'  # 退款备注
UnitAccountgroupNoSingleMoney = ''  # 免单金额
UnitAccountgroupNoSingleRemark = 'This auto test remark'  # 免单备注
UnitAccountgroupAdvancesReceivedMoney = ''  # 预收款金额
UnitAccountgroupAdvancesReceivedRemark = 'This auto test remark'  # 预收款备注
UnitAccountgroupChequeUmber = '20180601'  # 支票号
UnitAccountgroupChequeMoney = ''  # 支票金额
UnitAccountgroupChequeRemrk = 'This auto test remark'  # 支票备注

# Financialtreatment账务处理
# -----------账务处理列表查询
UnitFinancialtreatmentName = 'AutoTestUnit'  # 单位名称
# -----------单位预收款
UnitFinancialtreatmentAdvancesReceivedMoney = '100'  # 预收款金额
UnitFinancialtreatmentAdvancesReceivedChequeUmber = '20180601'  # 预付款支票号
UnitFinancialtreatmentAdvancesReceivedWeChaPayCode = ''  # 微信授权码
UnitFinancialtreatmentAdvancesReceivedAliPayCode = ''  # 支付宝授权码
UnitFinancialtreatmentAdvancesReceivedRemark = 'This auto test remark'  # 预收款备注
# -----------单位账务结算
UnitFinancialtreatmentPaymentMoney = ''  # 结算收款金额
UnitFinancialtreatmentPaymentRemark = 'This auto test remark'  # 结算收款备注
UnitFinancialtreatmentWeChatPayMoney = '0.01'  # 微信收款金额
UnitFinancialtreatmentWeChatPayCode = ''  # 微信收款授权码
UnitFinancialtreatmentWeChatPayRemark = 'This auto test remark'  # 微信收款备注
UnitFinancialtreatmentAliPayMoney = '0.01'  # 支付宝收款金额
UnitFinancialtreatmentAliPayCode = ''  # 支付宝收款授权码
UnitFinancialtreatmentAliPayReamrl = 'This auto test remark'  # 支付宝收款备注
UnitFinancialtreatmentRefundMoney = ''  # 退款金额
UnitFinancialtreatmentRefundRemark = 'This auto test remark'  # 退款备注
UnitFinancialtreatmentNoSingleMoney = ''  # 免单金额
UnitFinancialtreatmentNoSingleRemark = 'This auto test remark'  # 免单备注
UnitFinancialtreatmentArMoney = ''  # 预收款金额
UnitFinancialtreatmentArRemark = 'This auto test remark'  # 预收款备注
UnitFinancialtreatmentChequeUmber = '20180601'  # 支票号
UnitFinancialtreatmentChequeMoney = ''  # 支票金额
UnitFinancialtreatmentChequeRemrk = 'This auto test remark'  # 支票备注

# Accountdetails账务查询
# -----------账务列表查询
UnitAccountdetailsName = 'AutoTest'  # 查询姓名
UnitAccountdetailsRoomNmber = ''  # 查询房间号
