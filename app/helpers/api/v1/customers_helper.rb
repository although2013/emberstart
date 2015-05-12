module Api::V1::CustomersHelper

  def format_the(str)
    hash = JSON.parse(str).to_hash

    to_snake_case = ->(h) do
      h["id"] = h["CustomerID"]
      h.keys.each do |keyname|
        h[keyname.underscore] = h.delete(keyname)
      end
    end

    if hash['d'] && hash['d']['results']
      customers = hash['d']['results']
      customers.each { |h| to_snake_case.call(h) }
      return "{\"customers\":#{customers.to_json}}"
    end
  end

end