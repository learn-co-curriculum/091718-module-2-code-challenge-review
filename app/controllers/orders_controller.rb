require 'pry'

class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :item_id, :customer_id, item_attributes: [:name, :description, :price], customer_attributes: [:first_name, :last_name, :email])
  end

end
