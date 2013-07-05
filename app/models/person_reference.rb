class PersonReference < ActiveRecord::Base
  belongs_to :person
  belongs_to :reference
end
