class Da < ApplicationRecord

	def self.ransackable_attributes(auth_object = nil)
		["casenumber", "city", "name", "feedback", "rating"]
		end
end
