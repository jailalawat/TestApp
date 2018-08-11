# == Schema Information
#
# Table name: roles
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  active     :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
	scope :active, -> { where(active: true) }
	validates_presence_of :name
	has_and_belongs_to_many :users
end
