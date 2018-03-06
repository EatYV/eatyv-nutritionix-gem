require "eatyv/nutritionix/gem/version"
require "httparty"

module Eatyv

  include HTTParty

  class GetNutritionalValues
    def initialize(food)
      @food = food

      headers = {
          'x-app-id' => 'b479cfcf',
          'x-app-key' => '83ebc7a194ab072f8c4be2b3dba82732',
          'content-type' => 'application/json'
      }

      body = {
          "query" => @food,
      }

      @nutritionix = HTTParty.get(
          "https://trackapi.nutritionix.com/v2/search/instant/?query=#{body}",
          :headers => headers
      )

      @nutritionix.each do |nutritioni|
        nutritioni[1].each do |nutr|
          puts nutr['food_name']
          puts nutr['nf_calories']
          puts '\n\n\n\n\n\n#################################################################\n\n\n\n'
        end
      end

    end
  end
end
