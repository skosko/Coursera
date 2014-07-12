fname = raw_input("Enter file name: ")
if len(fname) < 1 : fname = "mbox-short.txt"
try:
    fhand = open(fname)
except:
    print 'File cannot be opened:', fname
    exit()

counts = dict()

for line in fhand:
    words = line.split()
    if len(words) == 0 : continue
    if words[0] != 'From' : continue
    day = words[2]
    if day not in counts :
        counts[day] = 1
    else :
        counts[day] += 1
print counts
