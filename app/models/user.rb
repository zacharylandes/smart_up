class User < ApplicationRecord

  has_many :user_series
  has_many :series,:through => :user_series, :dependent => :destroy

  has_many :user_lessons
  has_many :lessons,:through => :user_lessons, :dependent => :destroy



end