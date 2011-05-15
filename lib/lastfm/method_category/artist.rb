class Lastfm
  module MethodCategory
    class Artist < Base
      regular_method :get_events, [:artist], [] do |response|
        response.xml['events']['event']
      end
      regular_method :search, [:artist], [] do |response|
        response.xml['results']['artistmatches']['artist']
      end
      regular_method :get_similar, [:artist], [] do |response|
        response.xml['similarartists']['artist']
      end
    end
  end
end
