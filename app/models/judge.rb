class Judge < ApplicationRecord

	has_rich_text :caseSpecifics

	def self.ransackable_attributes(auth_object = nil)
		["casenumbe", "raceofoffender", "judgement", "feedback", "rating"]
		end
end
