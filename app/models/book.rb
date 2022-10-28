class Book < ApplicationRecord
  belongs_to :user

  validates :title, :summary, present: true
end
