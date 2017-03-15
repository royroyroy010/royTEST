from selenium import webdriver	#load selenium webdriver
from selenium.webdriver.common.by import By	#load webdriver.common.by for local element
from selenium.webdriver.common.keys import Keys	#load webdriver.common.keys for sendkey
from selenium.webdriver.support.ui import Select	#load webdriver.suppprt.ui for select item button
from selenium.common.exceptions import NoSuchElementException	#examine element whether appear
from selenium.common.exceptions import NoAlertPresentException	#examine alert whether present
import unittest,time,re 	#unittest=load uinttest,time=use sleep,re=rule express

driver = webdriver.Firefox()
driver.get("https://accounts.google.com/ServiceLogin?sacu=1&scc=1&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&hl=zh-TW&service=mail#identifier")
driver.find_element_by_id("Email").clear()
driver.find_element_by_id("Email").send_keys("royroyroy010@gmail.com")
driver.implicitly_wait(5)
driver.find_element_by_id("next").click()
driver.implicitly_wait(5)
driver.find_element_by_id("Passwd").send_keys("123456789")
driver.find_element_by_id("signIn").click()
string_password=driver.find_element_by_id("errormsg_0_Passwd").text
if string_password == "您所輸入的電子郵件和密碼不相符。" :
	driver.find_element_by_id("Passwd").clear()
	driver.find_element_by_id("Passwd").send_keys("0972002508")
	driver.find_element_by_id("signIn").click()
else :
	print("the string_password is wrong")





