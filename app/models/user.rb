class User < ApplicationRecord
  before_create do
    self.name = 'Noname'
  end
end
