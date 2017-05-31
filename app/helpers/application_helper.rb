module ApplicationHelper
	def login_helper
		if current_user.is_a?(User)
		 link_to "Log ud", destroy_user_session_path, 
		 					method: :delete, 
		 					class: "button primary"
		else
		(link_to "Registrer", new_user_registration_path, 
		 					class: "button primary") +
		 (link_to "Log ind", new_user_session_path, 
		  		 					class: "button primary") 
		end
	end
end
