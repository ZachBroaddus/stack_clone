class Question < ApplicationRecord
  has_many :answers
  has_many :comments, as: :commentable
  belongs_to :asker, class_name: :User
  has_many :votes, as: :votable

  validates :body, presence: true
  validates :asker, presence: true

end
