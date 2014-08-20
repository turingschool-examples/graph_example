require './merchant'

class MerchantRepository
  attr_reader :merchants, :sales_engine

  def initialize(engine)
    @merchants = build_merchants
    @sales_engine = engine
  end

  def build_merchants
    (1..5).collect do |i|
      Merchant.new({:id => i}, self)
    end
  end

  def find_orders_by_merchant_id(id)
    sales_engine.find_orders_by_merchant_id(id)
  end
end
