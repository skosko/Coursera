def computegrade(score) :
    if score < 0 or score > 1 :
        grade <- 'Bad score'
    elif score  >= 0.9 :
        grade <- A
    elif score >= 0.8 and score < 0.9 :
        grade <- B
    elif score >= 0.7 and score < 0.8 :
        grade <- C
    elif score >= 0.6 and score < 0.7 :
        grade <- D
    elif score < 0.6 :
        grade <- F
    return grade

try :
    input = raw_input('What is your score?')
    inp = float(input)
except :
    print 'Bad score'
    quit()

computegrade(inp)

print grade