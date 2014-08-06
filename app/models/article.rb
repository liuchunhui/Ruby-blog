class Article < ActiveRecord::Base

	
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5}

	after_initialize do |article|
		puts "You have initialized an object!"
	end

	after_find do |article| 
		puts "You have found object!"
	end
end
