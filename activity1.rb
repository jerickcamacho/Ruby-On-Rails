#1) 
    numberArray = [1,2,3,4,5,6,7,8,9,10] 

    # one line version
    numberArray.each{|number| puts number}

    # multi-line version
    numberArray.each do |number|
        puts number    
    end

#2) 
    h = {a:1, b:2, c:3, d:4}  
    puts h[:b]

    puts h.merge!({e:5}) 

    # or 

    #  h[:b]

    #  h[:e] = 5
    
    #  puts h


#3)  
contact_data = [["jerickcamacho42@email.com", "2164 Leveriza St.", "0905-333-5041"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Jerick Camacho" => {}, "Avion School" => {}}
 
contacts["Jerick Camacho"][:email] = contact_data[0][0]
contacts["Jerick Camacho"][:address] = contact_data[0][1]
contacts["Jerick Camacho"][:phone] = contact_data[0][2] 

contacts["Avion School"][:email] = contact_data[1][0]
contacts["Acion School"][:address] = contact_data[1][1]
contacts["Avion School"][:phone] = contact_data[1][2] 

puts contacts

#4) 
# def age_count (*age) 
#     puts "How old are you?"
#     for in 0...age.length
#         puts "In #{age[i]} years you will be:"
#         puts age[i] + 20
#     end
#  end

#  age_count 10,20,30,40

print "How old are you?"
age = gets.to_i 

puts "In 10 years, you will be: #{age + 10}"

puts "In 20 years, you will be: #{age + 20}"

puts "In 30 years, you will be: #{age + 30}"

puts "In 10 years, you will be: #{age + 40}"