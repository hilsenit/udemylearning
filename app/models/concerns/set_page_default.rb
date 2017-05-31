module SetPageDefault
	extend ActiveSupport::Concern

	included do
	before_filter :set_page_default
	end

	def set_page_default
		@page_title = "Hilsen IT | Velkommen"
		@seo_keywords = "Hilsen IT, webdesign, webdevelope, Rails, Ruby on Rails"
	end
end
