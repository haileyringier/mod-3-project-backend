require 'rest-client'
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hp_characters = RestClient.get 'http://hp-api.herokuapp.com/api/characters'

hp_characters_array = JSON.parse(hp_characters)

hp_characters_array.each do |character|
    Character.create(
        name: character['name'],
        house: character['house'],
        ancestry: character['ancestry'],
        image: character['image']
    )
end