class Incident < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_rich_text :story
end
