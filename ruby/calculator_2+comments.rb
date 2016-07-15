# Write a calculate method that takes three parameters: an integer, an operator string (example: "+"), and another integer. The method should execute the operation and return the result, an integer. The method should be able to handle the +, -, *, and / operations. For example, calculate(4, '+', 5) should return 9.

# allow the user to do as many calculations as they want (so the user might enter 3 + 4, receive the answer, and then enter 7 - 1 as the next calculation, and so on). When the user types "done" instead of a calculation, the program can exit.

def calculate_input(x)
  if x == 'done'
    puts "Thank you, this has been awesome."
    exit
  else
    ## There's no need to initialize this variable with an empty array, since you just replace the value on the next line.
    operation = []
    operation = x.split
    p operation
    a = operation[0]
    op = operation[1]
    c = operation[2]

    ## .to_i doesn't change the value of a; it returns a new value, which you'd need to store in a variable to use later. For example, you could have done
    ## 
    ##   a = operation[0].to_i

    a.to_i
    c.to_i

    ## Splitting and then evaling doesn't really accomplish much; you almost might as well just eval the input directly. 
    ## 
    ## I think what they're going for here is for you to check the operator string yourself (using if/elsif) and do the appropriate thing with the operands. That's both more flexible (you could support custom operators) and safer (evaling user input is basically always a bad idea, since it could do anything, like delete all your files)

    p eval "#{a} #{op} #{c}"

    ## A function calling itself is a good way to keep it going, but this is a little backwards. You're asking for and taking input after you process it.  What I would do is probably split this function into two: 
    ## - a function that just attempts to calculate the math
    ## - a function that handles the input loop (asking for input, deciding when to exit vs. repeat) and calls the other function if necessary

    puts " Request an operation, like '4 + 5':\nOr type 'done' to exit."
    next_operation = gets.chomp
    calculate_input(next_operation)
  end
end