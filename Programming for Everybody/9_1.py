data = dict()
handle = open('words.txt','r')
text = handle.read()
words = text.split()
for word in words:
    data[word] = 0
print data
