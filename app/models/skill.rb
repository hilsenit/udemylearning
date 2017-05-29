class Skill < ActiveRecord::Base
	validates_presence_of :title, :procent_utilized
end
