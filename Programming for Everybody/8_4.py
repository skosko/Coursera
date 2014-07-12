inp = raw_input('Enter a file:')
data = open(inp)
uniques = []
for line in data :
    words = line.split()
    for word in words :
        if word not in uniques :
            uniques.append(word)
uniques.sort()
print uniques
