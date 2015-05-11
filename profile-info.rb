#variables
prompt = "> "
profile = Hash.new
name = Array.new(3)
dob = Array.new(3)
residence = Hash.new

# queries
puts "----------------"
puts "--Profile Info--"
puts "----------------"

print "What is your first name? #{prompt}"
name[0] = gets.chomp
print "Middle name? #{prompt}"
name[1] = gets.chomp
if gets.chomp == nil
  name[1] = "(N/A)"
end
print "Last name? #{prompt}"
name[2] = gets.chomp

print "What year were you born in? #{prompt}"
dob[0] = gets.chomp
print "Month? #{prompt}"
dob[1] = gets.chomp
print "Day? #{prompt}"
dob[2] = gets.chomp

print "What State do you live in? #{prompt}"
residence["state"] = gets.chomp
print "City? #{prompt}"
residence["city"] = gets.chomp
print "Zipcode? #{prompt}"
residence["zip"] = gets.chomp

profile = {
  "name" => name,
  "dob" => dob,
  "residence" => residence
}

#print profile
puts "----------------"
puts "Name:_#{profile[:name[0]]}__#{profile[:name[1]]}__#{profile[:name[2]]}"
