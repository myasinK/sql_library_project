count = 1 
from faker import Faker
string_to_print = ""
while (count <= 103):
    fake = Faker()
    author = fake.name()
    string_to_print += "(" + str(count) + "," + "'" + author + "'" + ")" + "," + "\n"
    count += 1 

openFile = open('author.txt','w')
openFile.write(string_to_print)
openFile.close()