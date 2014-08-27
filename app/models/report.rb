class Report < ActiveRecord::Base
  has_and_belongs_to_many :police
  belongs_to :user
end
