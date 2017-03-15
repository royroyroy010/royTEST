from selenium import webdriver
import time,autoit,copy

p = open('input.txt','r')	
p1 = p.readlines()
# w = open('output.txt','w')
# w1 = w.writelines(p1[5])
driver = webdriver.Chrome()
driver.get("https://docs.google.com/spreadsheets/d/1IXj92rLZKLIdn0NJWv1xT41g3iS6HnAujN_nf4ViQwk/edit#gid=0")
driver.find_element_by_id("Email").send_keys("royroyroy010@gmail.com")
driver.find_element_by_id("next").click()
time.sleep(1)
driver.find_element_by_id("Passwd").send_keys("0972002508")
time.sleep(1)
driver.find_element_by_id("signIn").click()
time.sleep(5)
autoit.send("{down}")	#往下一格
time.sleep(5)
#湯姆克魯斯
autoit.clip_put(p1[1])	#Name
autoit.send("^v")
time.sleep(3)
autoit.send("{Right}")	#往右一格
time.sleep(2)
autoit.clip_put(p1[3])	#ID
autoit.send("^v")
time.sleep(2)
autoit.send("{Right}")	#往右一格
time.sleep(2)
autoit.clip_put(p1[5])	#Date
autoit.send("^v")
time.sleep(2)
autoit.send("{Right}")	#往右一格
time.sleep(2)
autoit.clip_put(p1[7])	#Address
autoit.send("^v")
time.sleep(2)
#貝克漢
autoit.send("{down}")	#往下一格
time.sleep(5)
autoit.send("{Left 10}")
time.sleep(2)
autoit.clip_put(p1[9])	#Address
autoit.send("^v")
time.sleep(2)
autoit.send("{Right}")	#往右一格
time.sleep(2)
autoit.clip_put(p1[11])	#Address
autoit.send("^v")
time.sleep(2)
autoit.send("{Right}")	#往右一格
time.sleep(2)
autoit.clip_put(p1[13])	#Address
autoit.send("^v")
time.sleep(2)
autoit.send("{Right}")	#往右一格
time.sleep(2)
autoit.clip_put(p1[15])	#Address
autoit.send("^v")
#柯瑞

