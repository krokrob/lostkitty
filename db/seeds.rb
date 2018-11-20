pet_attributes = [
  { breed: 'white Labrador', date_found: Date.today },
  { breed: 'chihuaha nain', date_found: Date.today },
  { breed: 'Doberman', date_found: Date.today },
  { breed: 'Siamois', date_found: Date.today },
  { breed: 'Caniche noir', date_found: Date.today }
]

pet_attributes.each do |attr|
  Pet.create(attr)
end
