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
# read profile after data entry?
print "read profile after data entry (y/n)? #{prompt}"
read_profile = gets.chomp.downcase

print "What is your first name? #{prompt}"
name[0] = gets.chomp.downcase.capitalize
print "Middle name? #{prompt}"
name[1] = gets.chomp.downcase.capitalize
if name[1] == ""
  name[1] = "(N/A)"
end
print "Last name? #{prompt}"
name[2] = gets.chomp.downcase.capitalize

print "What year were you born in (YYYY)? #{prompt}"
dob[0] = gets.chomp
print "Month (MM)? #{prompt}"
dob[1] = gets.chomp.to_i - 1
print "Day (DD)? #{prompt}"
dob[2] = gets.chomp

print "What State do you live in? #{prompt}"
residence["state"] = gets.chomp.downcase.capitalize
print "City? #{prompt}"
residence["city"] = gets.chomp.downcase.capitalize
print "Zipcode? #{prompt}"
residence["zip"] = gets.chomp.downcase.capitalize

profile = {
  name: name,
  dob: dob,
  residence: residence
}

#print profile
if read_profile == "y"
puts "----------------"
puts "Name:_______________#{profile[:name][0]}_#{profile[:name][1]}_#{profile[:name][2]}"
puts "Date of Birth:______#{month_name[profile[:dob][1]]}_" + \
                         "#{profile[:dob][2]},_" + \
                         "#{profile[:dob][0]}"
puts "Current Residence:__#{profile[:residence]["city"]},_" + \
                         "#{profile[:residence]["state"]}_" + \
                         "#{profile[:residence]["zip"]}"
puts "----------------"
end
