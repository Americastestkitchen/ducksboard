require 'json'
module Ducksboard
  class Pull
    include ::HTTParty
    base_uri "https://pull.ducksboard.com/values"    # https://pull.ducksboard.com/values/805/last

    attr_accessor :id

    def initialize(id)
      @id = id
    end

    def last
      auth = {:username => ::Ducksboard.api_key, :password => "ducksboard-gem"}
      self.class.get("/#{id}/last",
        :basic_auth => auth)
    end
  end
end
