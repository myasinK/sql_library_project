# need (bookID, branchID, num copies)

import random as rand
count = 1
string_to_print = "";
while (count <= 103):
    branchID = rand.randint(1,6)
    copies = rand.randint(1,10)
    string_to_print = string_to_print + "(" + str(count) + "," + str(branchID) + "," + str(copies) + ")" + "," + "\n"                                            
    count += 1
    
textFile = open('book_copies.txt','w')
textFile.write(string_to_print)
textFile.close()