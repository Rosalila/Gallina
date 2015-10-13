class Metric < ActiveRecord::Base

  belongs_to :gallina
  has_many :questions

end
