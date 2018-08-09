# need format: ('BranchName', 'Address')

openFile = open('createBranches.txt','w')
from faker import Faker

listBranchNames = ['Sharpstown', 'Central', 
    'Eastern', 'Western', 'Northern', 'Southern']
count = 0
    
for branchName in listBranchNames:
    fake = Faker()
    fakeAddress = fake.address()
    fakeAddress = fakeAddress.replace("\n",", ")
    if (count == 0):
        string = "("+"'"+branchName+"'"+","+"'"+fakeAddress+"'"+")"
        openFile.write(string)
        print(string)
    else:
        string = "\n("+"'"+branchName+"'"+","+"'"+fakeAddress+"'"+")"
        openFile.write(string)
        print(string)
    count += 1
    
openFile.close()