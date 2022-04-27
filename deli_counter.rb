# Write your code here.
# katz_deli = []
user_input = gets.chomp

def line(katz_deli)
  line_num = []
    if katz_deli == []
      puts "The line is currently empty."
    else 
      katz_deli.each_with_index do |name, index|
      line_num << "#{index+1}. #{name}"
    end
      line_num[0] = "The line is currently: " + line_num[0]
      puts line_num.join(" ")
    end
end

def take_a_number(katz_deli, user_input)
  greeting = []
  katz_deli << user_input
  katz_deli.each_with_index do |name, index|
      greeting << "Welcome, #{name}. You are number #{index+1} in line."
  end
puts greeting[-1]
end

def now_serving(katz_deli)
  if katz_deli == [] 
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end

