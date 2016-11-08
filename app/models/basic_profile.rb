class BasicProfile < ActiveRecord::Base
	has_many :contacts
    has_many :educations
    has_many :works
    accepts_nested_attributes_for :contacts, allow_destroy: true
    accepts_nested_attributes_for :educations, allow_destroy: true
    accepts_nested_attributes_for :works, allow_destroy: true
end
