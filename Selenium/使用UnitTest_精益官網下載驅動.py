"""此範例使用unittest執行selenium"""



from selenium import webdriver	#load selenium webdriver
from selenium.common.exceptions import NoSuchElementException	#examine element whether appear
from selenium.common.exceptions import NoAlertPresentException	#examine alert whether present
import unittest,time,re 	#unittest=load uinttest,time=use sleep,re=rule express

class PlustekDownload(unittest.TestCase):
	
	#建立環境
	def setUp(self):
		self.driver = webdriver.Chrome()	#開啟chrome 
		self.driver.implicitly_wait(30)	 #等待30秒
		self.verificationError = []		#將verificationError設定為一個空串列 
		self.accept_next_alert = True	#true is pass ,fail is NG
	
	#執行主要內容
	def test_plustek_download(self):
		driver = self.driver	#需指派
		driver.get("https://www.google.com.tw/")	#開啟網頁

		#透過ID定位
		driver.find_element_by_id("lst-ib").clear()	
		driver.find_element_by_id("lst-ib").send_keys("plustek")
		time.sleep(3)
		#透過xpath定位
		driver.find_element_by_xpath('//input[@value="Google 搜尋"]').click()
		time.sleep(5)
		#透過link_text定位
		driver.find_element_by_link_text('精益科技 - Plustek').click()
		#透過xpath定位
		driver.find_element_by_xpath('//div[8]/div/a/span[1]').click()
		#透過link_text定位
		driver.find_element_by_link_text('驅動程式與下載').click()
		#透過ID定位
		driver.find_element_by_id('searchThis').clear()
		driver.find_element_by_id('searchThis').send_keys('PS406')
		#透過xpath定位
		driver.find_element_by_xpath("//input[@value='Search']").click()
		driver.find_element_by_xpath('//select[@id="productBox"]/option[1]').click()
		driver.find_element_by_xpath('//img[@src="/images/zip.gif"]').click()

	def tearDown(self):
		pass


if __name__ == '__main__':
	unittest.main()