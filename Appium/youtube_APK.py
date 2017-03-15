import os
from time import sleep
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.action_chains import ActionChains #滑鼠鍵盤的模組
# Returns abs path relative to this file and not cwd
# PATH = lambda p: os.path.abspath(
#     os.path.join(os.path.dirname(__file__), p)
# )


desired_caps = {}
desired_caps['device'] = 'Android'
desired_caps['platformName'] = 'Android'
# desired_caps['platformVersion'] = '6.0'
desired_caps['deviceName'] = ''
# desired_caps['app'] = PATH('C:\\Users\\QA-1\\Desktop\\flipkart.apk')
# desired_caps['app-package'] = 'com.example.android.flipkart.apk'
# desired_caps['app-activity'] = '.flipkart.apk'


driver = webdriver.Remote('http://localhost:4723/wd/hub',desired_caps)

print('test-1')


#需複製整串ID
# driver.find_element_by_id('com.android.contacts:id/floating_action_button').click()
# sleep(2)

driver.find_element_by_id('menu_search').click()
driver.find_element_by_id('search_edit_text').click()
driver.find_element_by_id('search_edit_text').send_keys('CNN')
driver.find_element_by_name('cnn').click()
sleep(5)
driver.find_element_by_name("CNN's Jake Tapper: Why Trump's 'fake news' claim is wrong").click()
sleep(10)
driver.find_element_by_name('Download').click()
sleep(10)
driver.find_element_by_name('Download').click()


# driver.quit()



















