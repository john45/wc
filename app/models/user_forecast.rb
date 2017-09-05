class UserForecast < ApplicationRecord
  belongs_to :user
  belongs_to :recept
end
