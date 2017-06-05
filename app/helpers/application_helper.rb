module ApplicationHelper
	def login_helper(style = "")
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

	def nav_items
		[
			{
				url: root_path,
				title: "Hjem"
			},
			{
				url: about_path,
				title: "About me"
			},
			{
				url: contact_path,
				title: "Kontakt"
			},
			{
				url: blogs_path,
				title: "Blog"
			},
			{
				url: portfolios_path,
				title: "Portfolios"
			}
		]
			
	end

	def nav_helper style, tag_type
		nav_links = ""
		nav_items.each do |item|
			nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
		end
		nav_links.html_safe
	end

	def active? path
		"active" if current_page? path
	end
end
