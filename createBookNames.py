# need ('book name', 'publisher name')

nounsFile = open('nouns.txt')
adjectivesFile = open('adjectives.txt')
publishers = ['Random House','Penguin','Simon and Schuster','Hachette','Macmillan']
def randPublisher(publisherList):
    import random as rand
    return publishers[rand.randint(0,len(publisherList)-1)]
#print(randPublisher(publishers))
lineNoun = nounsFile.readline()
lineAdj = adjectivesFile.readline()
bookNames = []
string_to_print = ""
count = 0
import random as rand
while lineNoun:
    lineNoun = lineNoun.replace("\n","")
    lineAdj = lineAdj.replace("\n","")
    publisherName = randPublisher(publishers)
    # create string to save to file 
    string_to_print = string_to_print + "(" + str(count+1) + "," + "'" + lineAdj + " " + lineNoun + "'" + "," + "'" + publisherName + "'" + ")" + "," + "\n"         
    
    # if I want to create copies:
    # for i in range(rand.randint(0,10)):
    #     string_to_print = string_to_print + string_to_print
    
    # the following conditional creates a list - not used for output
    if count == 0:
        bookNames.append(lineAdj + " " + lineNoun)  
    else:
        bookNames.append("\n" + lineAdj + " " + lineNoun) 
        
    # next line
    lineNoun = nounsFile.readline()
    lineAdj = adjectivesFile.readline()
    count += 1

fakeBookNamesFile = open('fakeBookNames.txt', 'w')
fakeBookNamesFile.write(string_to_print)
fakeBookNamesFile.close()
nounsFile.close()
adjectivesFile.close()

