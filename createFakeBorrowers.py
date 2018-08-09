# need format: ('Card no', 'Borrower name', 'Address', 'Phone')
# print(rand.randint(1000000000,9999999999))


def fakeNumber():
    import random as rand
    fakeNumber = str( rand.randint(100,999) ) + '-' + str( rand.randint(100,999) ) + '-' + str( rand.randint(1000,9999) )
    return fakeNumber
    
openFile = open('createFakeBorrowerData.txt','w')
from faker import Faker

count = 0
    
while count < 100:
    phone = fakeNumber()
    fake = Faker()
    name = fake.name()
    address = fake.address().replace("\n",", ")
    if count == 0:
        appendLine = "('" + name + "', '" + address + "', '" + phone + "')" + ","
    else:
        appendLine = "\n('" + name + "', '" + address + "', '" + phone + "')" + ","
    #print(appendLine)
    openFile.write(appendLine)
    count += 1

openFile.close()
print(count)
