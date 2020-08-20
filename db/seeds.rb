require 'rest-client'

Character.destroy_all

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