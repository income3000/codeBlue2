class Comment < ApplicationRecord
  belongs_to :incident
  broadcasts_to :incident
end
