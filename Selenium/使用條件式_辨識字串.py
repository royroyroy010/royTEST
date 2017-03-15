from selenium import webdriver	#load selenium webdriver

driver = webdriver.Chrome()
driver.get("http://plustek.com/tc/products/audio-office-series/")

#抓取字串並儲存在string
string = driver.find_element_by_class_name("product_series_content").text  #TEXT不加()								

#辨識字串
if string == "Plustek BookReader，文字轉語音的最佳設備。擁有書角掃描的最佳設計，讓有聲書的製作不再困難重重。" :
	print("pass")
else:
	print("NG")

