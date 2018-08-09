# need (bookid, branchid, card no, date out, due date)

import random as rand
import time
openCopies = open('book_copies.txt','r')
line = openCopies.readline();
print(line)
branchID = line.split(",")[1]
bookID = line.split(",")[0]
print(branchID)
count = 1 
string_to_print = ""
def ranDate():
    from datetime import datetime
    import random as rand
    day = rand.randint(1,28)
    month = rand.randint(1,4)
    year = 2018
    dateOut = datetime(year, month, day).strftime('%Y-%m-%d')
    due = datetime(year, month+3, day).strftime('%Y-%m-%d')
    return dateOut, due

while (line):
    if (count < 7):
        cardnum = 5003
        branchID = line.split(",")[1]
        bookID = line.split(",")[0]
        dateOut,due = ranDate()
        tempString = "("+str(bookID[1:])+","+str(branchID)+","+str(cardnum)+","+"'"+dateOut+"'"+","+"'"+due+"'"+")"+","+"\n"
        string_to_print += tempString
        line = openCopies.readline();
    elif (count >=7 and count <= 15):
        cardnum = 5020
        branchID = line.split(",")[1]
        bookID = line.split(",")[0][1:]
        dateOut,due = ranDate()
        tempString = "("+str(bookID[1:])+","+str(branchID)+","+str(cardnum)+","+"'"+dateOut+"'"+","+"'"+due+"'"+")"+","+"\n"
        string_to_print += tempString
        line = openCopies.readline();
    else:
        branchID = line.split(",")[1]
        bookID = line.split(",")[0]
        cardnum = rand.randint(5000,5102)
        dateOut,due = ranDate()
        tempString = "("+str(bookID[1:])+","+str(branchID)+","+str(cardnum)+","+"'"+dateOut+"'"+","+"'"+due+"'"+")"+","+"\n"
        string_to_print += tempString
        line = openCopies.readline();
    line = openCopies.readline();
    count += 1
    
openCopies.close()
loans = open('loans.txt','w')
loans.write(string_to_print)
loans.close()