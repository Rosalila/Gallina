class Gallina < ActiveRecord::Base

  has_many :agreements
  has_many :metrics
  has_many :gallina_members
  has_many :users, through: :gallina_members

end
