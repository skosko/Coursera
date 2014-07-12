fname = raw_input("Enter file name: ")
if len(fname) < 1 : fname = "mbox-short.txt"
try:
    fhand = open(fname)
except:
    print 'File cannot be opened:', fname
    exit()

counts = dict()
result = list()

for line in fhand:
    words = line.split()
    if len(words) == 0 : continue
    if words[0] != 'From' : continue
    time = words[5]
    hrs, mins, secs = time.split(":")
    if hrs not in counts:
        counts[hrs] = 1
    else:
        counts[hrs] +=1
for key, val in counts.items():
    result.append( (key, val) )
result.sort()
for key, val in result:
    print key, val
