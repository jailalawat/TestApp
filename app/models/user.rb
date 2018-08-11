# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
	has_many :albums
	accepts_nested_attributes_for :albums, reject_if: :all_blank, allow_destroy: true

	has_many :user_meta
	accepts_nested_attributes_for :user_meta, reject_if: :all_blank, allow_destroy: true

	has_and_belongs_to_many :roles

	validates_presence_of :first_name, :last_name, :email, :user_meta, :albums
	validates :email, :uniqueness => { :case_sensitive => false }
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

end
