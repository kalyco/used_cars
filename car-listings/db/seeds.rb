if Rails.env.development?
  kia = Manufacturer.find_or_create_by(
    name: "KIA",
    country: "South Korea"
  )
  audi = Manufacturer.find_or_create_by(
    name: "Audi",
    country: "Germany"
  )
  Car.find_or_create_by(
    manufacturer: kia,
    model: "Rio",
    year: 2004,
    mileage: 39000,
    color: "blue"
  )
  Car.find_or_create_by(
    manufacturer: kia,
    model: "Novo",
    year: 2010,
    mileage: 95000,
    color: "green"
  )
  Car.find_or_create_by(
    manufacturer: audi,
    model: "A3",
    year: 2008,
    mileage: 87000,
    color: "silver"
  )
end
