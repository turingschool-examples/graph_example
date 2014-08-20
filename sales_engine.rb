require './merchant_repository'

class SalesEngine
  attr_reader :merchant_repo, :order_repo

  def initialize
    @merchant_repo = MerchantRepository.new(self)
    #@order_repo = OrderRepository.new(self)
  end

  def find_orders_by_merchant_id(id)
    #order_repo.find_orders_by_merchant_id(id)
    ["Order Number 7"]
  end

end
