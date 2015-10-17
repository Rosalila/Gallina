class GallinaMember < ActiveRecord::Base
  belongs_to :gallina
  belongs_to :user
end
