class User < ApplicationRecord
  has_secure_password

  has_many :questions, foreign_key: :asker_id
  has_many :answers, foreign_key: :responder_id
  has_many :votes, foreign_key: :voter_id
  has_many :comments, foreign_key: :commenter_id

  validates :username, presence: true
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  # validate :validate_password

  # def validate_password
  #   if @raw_password.length == 0
  #     errors.add(:password, "is required")
  #   elsif
  #     @raw_password.length < 8
  #     errors.add(:password, "must be at least 8 characters")
  #   end
  # end

end
