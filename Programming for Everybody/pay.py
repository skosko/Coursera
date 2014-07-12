def computepay(h, r) :
	if h <= 40 :
   	 p = h * r
	else :
    	p = 40 * r + ((h - 40) * (r * 1.5))  
	return p	

try:
    input = raw_input ('How many hours: ')
    hours = float(input)
    input = raw_input ('How much per hour: ')
    rate = float(input)
except:
    print 'Error. Please enter a numeric value'
    quit()

pay = computepay (hours, rate)
print 'In total this is:', pay