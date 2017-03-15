from selenium import webdriver
import time,autoit,copy

p = open('input.txt','r')	
p1 = p.readlines()
# w = open('output.txt','w')
# w1 = w.writelines(p1[5])
driver = webdriver.Firefox()
driver.get("https://docs.google.com/spreadsheets/d/1IXj92rLZKLIdn0NJWv1xT41g3iS6HnAujN_nf4ViQwk/edit#gid=0")
driver.find_element_by_id("Email").send_keys("royroyroy010@gmail.com")
driver.find_element_by_id("next").click()
time.sleep(1)
driver.find_element_by_id("Passwd").send_keys("0972002508")
time.sleep(1)
driver.find_element_by_id("signIn").click()
time.sleep(5)
autoit.send("{down}")	#往下一格
time.sleep(3)
loop = 1
odd = 1
while loop<=3:
	autoit.clip_put(p1[odd])	#Name
	autoit.send("^v")
	time.sleep(1)
	autoit.send("{Right}")	#往右一格
	time.sleep(3)
	autoit.clip_put(p1[odd+2])	#ID
	autoit.send("^v")
	time.sleep(1)
	autoit.send("{Right}")	#往右一格
	time.sleep(3)
	autoit.clip_put(p1[odd+4])	#Date
	autoit.send("^v")
	time.sleep(1)
	autoit.send("{Right}")	#往右一格
	time.sleep(3)
	autoit.clip_put(p1[odd+6])	#Address
	autoit.send("^v")
	time.sleep(1)
	autoit.send("{down}")	#往下一格
	autoit.send("{Left 10}")
	odd += 8
	loop += 1
