class Portfolio < ActiveRecord::Base
	validates_presence_of :title, :body, :main_image, :thumb_image

	# def self.angular
	# 	where(subtitle: "Angular")
	# end

	def self.angular 
		where(subtitle: "Angular")
	end

end
