import os
from time import sleep
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.action_chains import ActionChains #滑鼠鍵盤的模組
"""手機的webdriver需從appium匯入webdriver"""
from appium import webdriver   

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

"""網路的操作與使用selenium一樣"""
driver.get('https://www.google.com.tw/webhp?hl=zh-TW&sa=X&ved=0ahUKEwjG49-g79nRAhXEI5QKHV5qCDkQPAgD')

print('test-1')
sleep(2)


driver.find_element_by_class_name("gsfi").send_keys('123456789')

# driver.keyevent(3)
sleep(2)
# driver.keyevent(15)
# driver.keyevent(64)

# driver.keyevent(28)

#需複製整串ID
# driver.find_element_by_id('com.android.contacts:id/floating_action_button').click()
# sleep(2)

# driver.find_element_by_name("More fields").click()

# driver.keyevent(61) #keyevent TAB 是'61'
# driver.find_element_by_name("First name").send_keys(Keys.TAB)




# driver.find_element_by_name("First name").send_keys('roy')

# driver.find_element_by_name("Home").click()
# sleep(2)
# driver.find_element_by_name("Mobile").click()
# sleep(2)
# driver.find_element_by_name("Phone").send_keys('roy@gmail.com')
# sleep(2)
# driver.find_element_by_name("Mobile").click()
# sleep(2)
# driver.find_element_by_name("Work").click()
# sleep(2)
# driver.find_element_by_name("Phone").send_keys('123456789')
# sleep(2)

# driver.find_element_by_name("Save").click()
# sleep(5)

# driver.keyevent(4) #keyevent back 是'4'
# driver.keyevent(4) #keyevent TAB 是'61'


# driver.quit()



















