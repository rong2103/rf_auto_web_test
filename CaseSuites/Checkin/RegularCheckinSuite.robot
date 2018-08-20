*** Settings ***
Library    Selenium2Library    timeout=10
Resource    ../../ElementDao/Checkin/CheckinElement.robot
Resource    ../../PageObject/Checkin/CheckinPage.robot
Resource    ../../PageObject/Booking/RegularReservePage.robot
Resource    ../../PageObject/LoginResource.robot
Variables    ../../DataConfig/Checkin/CheckinData.py
Suite Setup   BuiltIn.Run Keywords    
...           login     AND     
...           点击入住菜单     
Suite Teardown    Selenium2Library.Close Browser

*** Test Cases ***
散客入住
    点击普通入住菜单
    输入入住人姓名    ${checkin_person_data}
    输入入住人证件号码    ${checkin_idNo_data}
    选择房型间数-入住
    在房间筛选中选择一个房间号
    点击预订-确定按钮
    