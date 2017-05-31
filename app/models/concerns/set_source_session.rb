module SetSourceSession
	# give ability to include and alot of different stuff
	extend ActiveSupport::Concern

	included do
	before_filter :set_source
	end

	def set_source
		session[:source] = params[:q] if params[:q]
	end

end
