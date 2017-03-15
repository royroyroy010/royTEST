from selenium import webdriver

driver = webdriver.Chrome()
driver.get('http://www.python.org/')
# driver.save_screenshot('roy.png') #直接儲存在桌面
	
driver.get_screenshot_as_file('C:/Users/QA-1/Desktop/截圖/roy.png') #儲存到指定路徑
driver.quit()