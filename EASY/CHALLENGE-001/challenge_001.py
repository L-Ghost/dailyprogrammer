
name = raw_input("Hello. What is your name?")
age = int(raw_input("How old are you?"))
reddit = raw_input("What is your Reddit username?")

text = "Your name is %s, you are %d years old, and your username is %s." % (name, age, reddit)

file = open("output_test.txt", "w")
file.write(text)
file.close

print text