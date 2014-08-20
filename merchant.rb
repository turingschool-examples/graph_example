class Merchant
  attr_reader :id, :merchant_repo

  def initialize(params, repo)
    @id = params[:id]
    @merchant_repo = repo
  end

  def orders
    merchant_repo.find_orders_by_merchant_id(id)
  end
end
