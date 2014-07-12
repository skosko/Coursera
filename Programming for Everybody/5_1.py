total = 0
count = 0

while True :
        inp = raw_input('Enter a number:')
        if inp == "done" :
            break
        try :
            num = float(inp)
        except :
            print 'Invalid input'
            continue
        count = count + 1
        total = total + num

print total
print count
print total / count