try :
    input = raw_input('What is your score?')
    score = float(input)
except :
    print 'Bad score'
    quit()
if score < 0 or score > 1 :
    print 'Bad score'
elif score  >= 0.9 :
    print 'A'
elif score >= 0.8 and score < 0.9 :
    print 'B'
elif score >= 0.7 and score < 0.8 :
   print 'C'
elif score >= 0.6 and score < 0.7 :
    print 'D'
elif score < 0.6 :
    print 'F'