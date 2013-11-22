class PersonPassage < ActiveRecord::Base
  belongs_to :person
  belongs_to :passage
end
