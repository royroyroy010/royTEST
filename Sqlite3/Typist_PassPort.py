from tkinter import *   #視窗tool
import sqlite3



def centerWindow(self):
  
    # client的大小
    w = 1000
    h = 500
    #螢幕的大小
    sw = self.winfo_screenwidth()
    sh = self.winfo_screenheight()

    x = (sw - w)/2
    y = (sh - h)/2
    self.geometry('%dx%d+%d+%d' % (w, h, x, y)) #geometry幾何圖形用法

  
root = Tk(className="飯店管理系統")   #className set title name;創建一組Tk元件
w = Label(root, text="類別")
w.place(x=0,y=1)
e = Entry(root)
e.place(x=90,y=1,height=30)
w = Label(root, text="ID")
w.place(x=0,y=40)
e1 = Entry(root)
e1.place(x=90,y=35,height=30)
w = Label(root, text="Sex")
w.place(x=0,y=70)
e2 = Entry(root)
e2.place(x=90,y=70,height=30)
w = Label(root, text="Birtherday")
w.place(x=0,y=110)
e3 = Entry(root)
e3.place(x=90,y=105,height=30)
w = Label(root, text="護照號碼")
w.place(x=0,y=145)
e4 = Entry(root)
e4.place(x=90,y=140,height=30)
w = Label(root, text="MRTDs")
w.place(x=0,y=180)
e5 = Entry(root)
e5.place(x=90,y=175,height=30,width=1000)
w = Label(root, text="英文姓")
w.place(x=0,y=210)
e6 = Entry(root)
e6.place(x=90,y=210,height=30)
w = Label(root, text="英文名")
w.place(x=0,y=250)
e7 = Entry(root)
e7.place(x=90,y=245,height=30)
w = Label(root, text="國籍")
w.place(x=0,y=285)
e8 = Entry(root)
e8.place(x=90,y=280,height=30)
w = Label(root, text="有效日期")
w.place(x=0,y=320)
e9 = Entry(root)
e9.place(x=90,y=315,height=30)
w = Label(root, text="發照地")
w.place(x=0,y=355)
e10 = Entry(root)
e10.place(x=90,y=350,height=30)
w = Label(root, text="發照日期")
w.place(x=0,y=390)
e11 = Entry(root)
e11.place(x=90,y=385,height=30)




def clear():
    e.delete(0, 'end')	#刪除從0到最後的字串
    e1.delete(0, 'end')
    e2.delete(0, 'end')
    e3.delete(0, 'end')
    e4.delete(0, 'end')
    e5.delete(0, 'end')
    e6.delete(0, 'end')
    e7.delete(0, 'end')
    e8.delete(0, 'end')
    e9.delete(0, 'end')
    e10.delete(0, 'end')
    e11.delete(0, 'end')
    # root.quit()

#將欄位資料填入DB
def export_():
    get_e = e.get()
    get_e1 = e1.get()
    get_e2 = e2.get()
    get_e3 = e3.get()
    get_e4 = e4.get()
    get_e5 = e5.get()
    get_e6 = e6.get()
    get_e7 = e7.get()
    get_e8 = e8.get()
    get_e9 = e9.get()
    get_e10 = e10.get()
    get_e11 = e11.get()

    db = sqlite3.connect("PassPort.db")
    iterator = db.cursor()
    # iterator.execute("create table PassPort (類別, ID, Sex, Birthday, MRTDs,護照號碼 ,英文姓 ,英文名" 
    # ",國籍 ,有效日期 ,發照地 ,發照日期)")  #創建table
    iterator.execute("insert into PassPort values (?,?,?,?,?,?,?,?,?,?,?,?)",
    (get_e,get_e1,get_e2,get_e3,get_e4,get_e5,get_e6,get_e7,get_e8,get_e9,get_e10,get_e11))  #插入資料
    db.commit() #提交後才會寫入
#比對DB與原始資料
def compare_():
    db = sqlite3.connect("PassPort.db")
    iterator = db.cursor()

    iterator.execute("select * from PassPort ")

    error_count = []
    error_index = []
    passport_list = ['P','T123788291', 'M', '10-17-87', '310305145', 
            'P<TWNLIU<<CHUAN<CHANG<<<<<<<<<<<<<<<<<<<<<<<3103051454TWN8710178M2501051T123788291<<<<60','LIU' ,
            'CHUAN CHANG', 'TW', '01-05-25', 'TW', '01-05-15']
    #取出table 資料
    for customer in iterator.fetchall(): 
        #比對資料,正確pass,不正確error
        for  i in customer:
            if i == passport_list[0]:
                error_count.append('pass')
            elif i == passport_list[1]:
                error_count.append('pass')
            elif i == passport_list[2]:
                error_count.append('pass')
            elif i == passport_list[3]:
                error_count.append('pass')
            elif i == passport_list[4]:
                error_count.append('pass')
            elif i == passport_list[5]:
                error_count.append('pass')
            elif i == passport_list[6]:
                error_count.append('pass')
            elif i == passport_list[7]:
                error_count.append('pass')
            elif i == passport_list[8]:
                error_count.append('pass')
            elif i == passport_list[9]:
                error_count.append('pass')
            elif i == passport_list[10]:
                error_count.append('pass')
            elif i == passport_list[11]:
                error_count.append('pass')
            else:
                error_count.append('error')


    #計算串列error_count個數      
    number = error_count.__len__()
    number_1 = number//12

    for i in range(number) :
        #將error填入error_count
        if error_count[i] == 'error':
            i += 1 
            error_index.append(i)
        else:
            pass

    #number超過12個就換行
    for error_number in range(number_1) :
        print('\n',error_count[error_number*12:error_number*12+12])

    print('Error Count:',error_count.count('error'))
    print(error_index)

#清除DB資料
def clear_BD():
    db = sqlite3.connect("PassPort.db")
    db.execute("DELETE from PassPort ")
    db.commit()


button = Button(root, text="清除欄位", command=clear)  #button元件
button.place(x=0,y=430,height=30,width=120)

button1 = Button(root, text="Export_DB", command=export_)	
button1.place(x=130,y=430,height=30,width=120)

button2 = Button(root, text="Compare", command=compare_)   
button2.place(x=260,y=430,height=30,width=120)

button3 = Button(root, text="Clear_BD", command=clear_BD)   
button3.place(x=390,y=430,height=30,width=120)


centerWindow(root)  #置中
mainloop()  


print("done")