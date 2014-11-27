class Guest < ActiveRecord::Base
  include SharedPersonBehavior

  after_initialize do
    self.name = "GUEST"
  end
end
