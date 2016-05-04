require 'faker'

File.open(Dir.pwd+"/t1.csv", 'w') do |file| 
file.puts 'id,first_name,last_name,email_address,reporting_to_email_address'
for n in 1..1000
  first_name = Faker::Name.first_name 
  last_name = Faker::Name.last_name 
  email_address = first_name + '.' + last_name + '@example.com'
  reporting_to_email_address = ''
  file.puts(n.to_s + ',' + first_name +',' + last_name + ',' +  email_address +','+ reporting_to_email_address)
end
end


