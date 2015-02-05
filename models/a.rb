require 'active_record'


ActiveRecord::Base.configurations = YAML::load_file 'config/database.yml'
ActiveRecord::Base.establish_connection(:development)

class A < ActiveRecord::Base
  validates :aa, presence: true
  validates :aa, uniqueness: true
end


