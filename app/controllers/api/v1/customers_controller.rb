class Api::V1::CustomersController < ApplicationController
  respond_to :json

  def initialize
    super
    @data_server = 'http://services.odata.org/V2/Northwind/Northwind.svc'
  end

  def index
    response = Net::HTTP.get(URI("#{@data_server}/Customers?$format=JSON"))
    respond_with format_the(response)
  end

end
