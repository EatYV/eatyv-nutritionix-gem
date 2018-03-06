require "eatyv/nutritionix/gem/version"

module Eatyv
  module Nutritionix
    module Gem
      def initalize(food)
        headers = {
          'x-app-id' => 'b479cfcf',
          'x-app-key' => '83ebc7a194ab072f8c4be2b3dba82732',
          'content-type' => 'application/json'
        } 
        
        body = {
          "query" => user_food,
        }
        
        @nutritionix = HTTParty.get(
          "https://trackapi.nutritionix.com/v2/search/instant/?query=#{body}", 
          :headers => headers
        )
      end
    end
  end
end
