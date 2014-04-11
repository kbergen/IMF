class Incident < ActiveRecord::Base
	has_many :micro_incidents
end
