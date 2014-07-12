fname = raw_input("Enter file name:")
fh = open(fname)
values = 0
count = 0
for line in fh :
    if not line.startswith("X-DSPAM-Confidence:") : continue
    count = count + 1
    pos = line.find(':')
    value = float(line[pos+1:])
    values = values + value
print "Average spam confidence:", values/count
