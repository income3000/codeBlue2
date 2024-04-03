class Officer < ApplicationRecord
	has_rich_text :incident

	def self.ransackable_attributes(auth_object = nil)
		["badge", "city", "created_at", "id", "incident", "name", "updated_at"]
		end
end
