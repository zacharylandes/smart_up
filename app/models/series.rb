class Series < ApplicationRecord
  has_many :lessons
  has_many :user_series
  has_many :users,:through => :user_series, :dependent => :destroy

end