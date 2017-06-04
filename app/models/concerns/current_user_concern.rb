module CurrentUserConcern

	# Overwrite Devise method
	def current_user
		super || guest_user
	end

	def guest_user
		guest = GuestUser.new
		guest.name = "Guest User baby"
		guest.first_name = "Guest"
		guest.last_name = "User"
		guest.email = "test@gmail.com"
		guest
	end

end
