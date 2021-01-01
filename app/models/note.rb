class Note < ActiveRecord::Base 
   belongs_to :user
   has_many :viewers
   has_many :readers, through: :viewers, source: :user 
      
   def visible_to
      readers.map(&:name).join(',')
   end


   def visible_to=(comma_string)
      arr = []
      comma_string.gsub(/,/).each do |name|
         User.all.each do |user|
            arr << user if name == user.name
         end
      end
      readers = arr.uniq 
      visible_to
   end
end
