from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
from selenium.webdriver.common.action_chains import ActionChains #滑鼠鍵盤的模組
from tkinter import *   #視窗tool
import autoit,time,pymsgbox



def centerWindow(self):
  
    # client的大小
    w = 300
    h = 500
    #螢幕的大小
    sw = self.winfo_screenwidth()
    sh = self.winfo_screenheight()

    x = (sw - w)/2
    y = (sh - h)/2
    self.geometry('%dx%d+%d+%d' % (w, h, x, y)) #geometry幾何圖形用法

  
root = Tk(className="飯店管理系統")   #className set title name;創建一組Tk元件
w = Label(root, text="Type")
w.place(x=0,y=1)
e = Entry(root)
e.place(x=90,y=1,height=30)
w = Label(root, text="ID")
w.place(x=0,y=40)
e1 = Entry(root)
e1.place(x=90,y=35,height=30)
w = Label(root, text="Name")
w.place(x=0,y=70)
e2 = Entry(root)
e2.place(x=90,y=70,height=30)
w = Label(root, text="Sex")
w.place(x=0,y=110)
e3 = Entry(root)
e3.place(x=90,y=105,height=30)
w = Label(root, text="Birthday")
w.place(x=0,y=145)
e4 = Entry(root)
e4.place(x=90,y=140,height=30)




# var = StringVar() #追蹤變數的字串
# var.set("Firefox") # initial Browse;使用set去變更字串
# option = OptionMenu(root, var,"Firefox", "Chrome")    #combobox元件
# option.pack(padx=70, pady=10) #設定元件範圍
def ok():
    e.delete(0, 'end')	#刪除從0到最後的字串
    e1.delete(0, 'end')
    e2.delete(0, 'end')
    e3.delete(0, 'end')
    e4.delete(0, 'end')
    # e5.delete(0, 'end')
    # e6.delete(0, 'end')
    # e7.delete(0, 'end')
    # e8.delete(0, 'end')
    # e9.delete(0, 'end')
    # e10.delete(0, 'end')
    # root.quit()
button = Button(root, text="清除", command=ok)  #button元件
button.place(x=90,y=460,height=30,width=150)

centerWindow(root)  #置中
mainloop()  


print("pass")