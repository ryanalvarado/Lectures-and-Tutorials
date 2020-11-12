# notice how {} is the same as %r?
# the word "formatter" is a string
# passing four arguments
formatter = "{} {} {} {}"

# .format converts to characters?
# we are calling the format function
# command line terminal has a similar format function
# matching the four agruments from above
# Calling 'format' on 'formatter' to
# make a new string.
print(formatter.format(1, 2, 3, 4))
print(formatter.format("one", "two", "three", "four"))
print(formatter.format(True, False, False, True))
# printing a string in a string
print(formatter.format(formatter, formatter, formatter, formatter))
print(formatter.format(
    # This doesn't work without commas at end.
    # printing ignores the lines
    # It just prints as space separated
    "I had this thing.",
    "That you could type up right.",
    "But it didn't sing.",
    "So I said goodnight.",
))
