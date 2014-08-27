class Police < ActiveRecord::Base
  belongs_to :police_department
  has_and_belongs_to_many :reports
end
