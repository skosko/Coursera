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
    email = words[1]
    if email not in counts :
        counts[email] = 1
    else :
        counts[email] += 1
# print max(counts, key = lambda k:counts[k]), max(counts.values())

bigcount  = None
bigemail = None
for email, count in counts.items():
    if bigcount is None or count > bigcount:
        bigcount = count
        bigemail = email
print bigemail, bigcount
