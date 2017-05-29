class Portfolio < ActiveRecord::Base
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular 
		where(subtitle: "Angular")
	end

	# A portfolio items is initilized when Portfolio.new is called. 
	after_initialize :set_default

	def set_default
	# Hvis det ikke var ||=, men =, så ville det blive overskrevet, når det var 	
		self.main_image ||= "http://placehold.it/400x600"
		self.thumb_image ||= "http://placehold.it/350x200"
	end

end
