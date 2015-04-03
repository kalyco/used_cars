class Car < ActiveRecord::Base
  belongs_to :manufacturer

  validates :manufacturer, presence: true
  validates :model, presence: true
  validates :year, presence: true,
  numericality: true, length: { is: 4 },
  inclusion: { in: 1920..Date.today.year }
  validates :color, presence: true
  validates :mileage, presence: true
end
