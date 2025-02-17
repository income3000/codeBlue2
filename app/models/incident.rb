class Incident < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_