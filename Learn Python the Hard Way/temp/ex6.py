# I notice that the "f" format string character is kinda like
# convering info to plain text for printing.
# If 'f' is omitted, then it prints the variable name
# instead of the text in the format string.

# left out assignment for types_of_people mentioned in intro
# defining the variable types of people to equal 10.
types_of_people = 10
# change variable from 10 to types_of_people
# the variable x equals the sentence below.
# This is a string in a string 1/4
x = f"There are {types_of_people} type of people."

#defining the variable binary with the word binary
binary = "binary"
#defining the variable do_not with the word "don't"
do_not = "don't"
# defining variable y with the sentence below
# this is a string in a string:
y = f"Those who know {binary} abd those who {do_not}."

#prints x and y as defined above, on separate lines:
print(x)
print(y)

# left out f in front of string and omit extra period
print(f"I said: {x}")
# left of f in front of string and omit extra period
# This prints a the '' quotemarks around formatted variable y
print(f"I also said: '{y}'")

hilarious = False
# If you leave out the brackets
# THen print(joke_evalutation) won't fill in
# the results from variable "hilarious"
joke_evalutation = "Isn't that joke so funny?! {}"

# prints "isnt that joke so funny", then
# .format(hilarious) translates to " False"
# How are 'f' and .format different?
print(joke_evalutation.format(hilarious))

w = "This is the left side of..."
e = "a string with a right side."

print (w + e)

# change "What You Should See" snapshot to reflect changes
