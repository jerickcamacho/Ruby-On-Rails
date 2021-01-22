#1 In the right side we have given you an array and a number. 
# Write a program that checks to see if the number appears in the array. 

arr = [1, 2, 3, 5, 7, 9, 11] 

number = 3 

    if arr.index(number) #// get index array 
        p "Is #{number} in the array?" #// concatenate value of number variable 
        p true #// if there has a value of number = 3? print true
    end


#2 Write a program that takes a number from the user between 0 and 100 and reports back whether the number 
# is between 0 and 50, 51 and 100 or above 100

p "Put in a number" 
number = gets.chomp.to_i #// gets.chomp takes input from the user through the keyboard and store it in the variable number.

if number < 0 
    p "You can't enter a negative number!" 

  elsif number <= 50
    p "#{number} is between 0 and 50"

  elsif number <= 100
    p "#{number} is between 51 and 100"

  else
    p "#{number} is above 100"
end

#3 Write a while loop that takes input from the user, performs an action and only stops when the user types 
#"STOP". Each loop can get info from the user. 

p "Type anything below:"
X = gets.chomp.to_i

while x != "STOP"
    p "Keep typing"
end

#4 Write a program that checks to see if the number in the given array is divisible by 2 and store them into a new array.

arr = [6, 3, 1, 8, 4, 2, 10, 65, 102]

newArray = [] 

arr.each do |i| (p i)
    if i % 2 == 0 
        newArray.push(i)
    end   
end

