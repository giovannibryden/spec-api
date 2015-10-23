class Spec < ActiveRecord::Base
	validates_presence_of :spec
	validates_presence_of :key, uniqueness: {case_sensitive: false}
end
