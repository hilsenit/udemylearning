module ApplicationHelper
	def login_helper(style)
		if current_user.is_a?(GuestUser)
			(link_to "Registrer", new_user_registration_path, 
				class: style) +
				(link_to "Log ind", new_user_session_path, 
					class: style) 
		else
					link_to "Log ud", destroy_user_session_path, 
					method: :delete, 
					class: style

		end
	end


	def source_helper(layout_name)
		if session[:source]
			greeting = 
						"Thanks for visiting us from: #{session[:source]} "
						controller_use = " Using #{layout_name} controller."
						content_tag :p, greeting + "-" + controller_use, class: "callout succes"

		end 
	end

	def copyright_generator
		content = "<b>Hilsen it</b> &copy; #{Time.now.year}"
		content_tag :div, content.html_safe
	end
end
