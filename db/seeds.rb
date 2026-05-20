# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Création de 4 flats"
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Petit meublé sur cour',
  address: '25 place Maréchal Foch 69002 Lyon',
  description: 'Studette de 10 m² pour dépanner un étudiant',
  price_per_night: 40,
  number_of_guests: 1
)
Flat.create!(
  name: 'Maison de ville',
  address: 'rue des Anges 69005 Lyon',
  description: 'maison cachée en centre ville avec magnifique jardin de 300 m.',
  price_per_night: 250,
  number_of_guests: 7
)
Flat.create!(
  name: 'T3 neuf',
  address: 'Quartier Grange Blanche',
  description: 'A proximité des facs de médecine, idéal pour colloc étudiants.',
  price_per_night: 80,
  number_of_guests: 3
)
puts "terminé"
