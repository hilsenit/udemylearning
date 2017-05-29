class Topic < ApplicationRecord
	validates :title, presence: true
	has_many :works
end
