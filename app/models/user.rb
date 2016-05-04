class User < ActiveRecord::Base
  require 'csv'
  def self.import(file)
    return if file.blank?

    CSV.foreach(file.path, headers:true) do |row|
      user_hash = row.to_hash 
      r_email_address = user_hash["email_address"]

      if (self.is_valid_email? r_email_address)
        user = User.where(email_address: r_email_address)
  
        if user.count == 1
          user.first.update_attributes(user_hash.reject{|key,value| key == 'reporting_to_email_address'})
        else
          user.create!(user_hash.reject{|key,value| key == 'reporting_to_email_address'})
        end # if user.count == 1
      else
      #TODO
      end # if is_valid_email

    end # CSV.foreach(file.path, headers： true) do |row|
  end # self.import(file)

def self.is_valid_email?(email)
  (email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
end


end #class User
