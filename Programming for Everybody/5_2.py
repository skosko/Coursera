total = 0
count = 0
smallest = None
largest = None
list = []

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
        list.append(num)
for i in list :
    if smallest is None or i < smallest:
            smallest = i
    if largest is None or i > largest:
            largest = i


print 'the total is', total
print 'the count is', count
print 'the smallest number is', smallest
print 'the largest number is', largest
