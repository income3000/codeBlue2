module ApplicationHelper
	def is_admin?
		unless current_user&.admin?
			redirect_to new_user_session_path,
				alert: 'You are not welcome here'
		end
	end
end
