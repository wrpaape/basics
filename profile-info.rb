#require 'irbtools/binding'; binding.irb
#variables
prompt = "> "
month_name = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"]
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
if name[1] == ""
  name[1] = "(N/A)"
end
print "Last name? #{prompt}"
name[2] = gets.chomp

print "What year were you born in (YYYY)? #{prompt}"
dob[0] = gets.chomp
print "Month (MM)? #{prompt}"
dob[1] = gets.chomp
dob[1] = dob[1].to_i - 1
print "Day (DD)? #{prompt}"
dob[2] = gets.chomp

print "What State do you live in? #{prompt}"
residence["state"] = gets.chomp
print "City? #{prompt}"
residence["city"] = gets.chomp
print "Zipcode? #{prompt}"
residence["zip"] = gets.chomp

profile = {
  name: name,
  dob: dob,
  residence: residence
}

#print profile
puts "----------------"
puts "Name:__#{profile[:name][0]}_#{profile[:name][1]}_#{profile[:name][2]}"
puts "Date of Birth:__#{month_name[profile[:dob][1]]}_\
                      #{profile[:dob][0]},_\
                      #{profile[:dob][3]}"
