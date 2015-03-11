class Case < ActiveRecord::Base
	has_many :meetings
	belongs_to :case_source
end
