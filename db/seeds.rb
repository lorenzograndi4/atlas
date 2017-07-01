# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


europe = Continent.create!({name: 'Europe', image_url: ''})
Continent.create!({name: 'North America', image_url: ''})
south_america = Continent.create!({name: 'South America', image_url: ''})
Continent.create!({name: 'Asia', image_url: ''})
Continent.create!({name: 'Oceania', image_url: ''})
Continent.create!({name: 'Africa', image_url: ''})

Country.create!([
{name: 'Italy', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/it-lgflag.gif', language: 'Italian', population: 63_000_000, continent: europe},
{name: 'Brasil', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/br-lgflag.gif', language: 'Brasilian Portuguese', population: 207_000_000, continent: south_america},
{name: 'Argentina', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/ar-lgflag.gif', language: 'Spanish', population: 43_000_000, continent: south_america},
{name: 'Colombia', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/co-lgflag.gif', language: 'Spanish', population: 48_000_000, continent: south_america},
{name: 'Chile', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/ci-lgflag.gif', language: 'Spanish', population: 18_000_000, continent: south_america},
{name: 'Peru', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/pe-lgflag.gif', language: 'Spanish', population: 31_000_000, continent: south_america},
{name: 'Uruguay', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/uy-lgflag.gif', language: 'Spanish', population: 3_000_000, continent: south_america},
{name: 'Paraguay', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/pa-lgflag.gif', language: 'Spanish', population: 6_000_000, continent: south_america},
{name: 'Bolivia', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/bl-lgflag.gif', language: 'Spanish', population: 10_000_000, continent: south_america},
{name: 'Ecuador', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/ec-lgflag.gif', language: 'Spanish', population: 16_000_000, continent: south_america},
{name: 'Guyana', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/gy-lgflag.gif', language: 'Spanish', population: 700_000, continent: south_america},
{name: 'Suriname', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/ns-lgflag.gif', language: 'Spanish', population: 500_000, continent: south_america},
{name: 'French Guyana', flag_url: 'https://www.cia.gov/library/publications/the-world-factbook/graphics/flags/large/fg-lgflag.gif', language: 'French', population: 250_000, continent: south_america}
])
