class Skill < ActiveRecord::Base
	include Placeholder 
	validates_presence_of :title, :procent_utilized

	after_initialize :set_badge

	def set_badge
		self.badge ||= Placeholder.image_generator(height: 250, width: 250)
	end

end
