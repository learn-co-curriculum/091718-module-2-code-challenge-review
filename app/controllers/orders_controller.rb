require 'pry'

class OrdersController < ApplicationController
  before_action :get_order, only: [:edit, :update, :show]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @order.customer = Customer.new
    @order.item = Item.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to order_path(@order)
    else
      @order.customer = Customer.new if @order.customer == nil
      @order.item = Item.new if @order.item == nil
      render :new
    end
  end

  def edit
  end

  def update
    @order.update(order_params)
    if @order.valid?
      redirect_to order_path(@order)
    else
      render :edit
    end
  end

  def show
  end

  private

  def order_params
    params.require(:order).permit(:quantity, :item_id, :customer_id, item_attributes: [:name, :description, :price], customer_attributes: [:first_name, :last_name, :email])
  end

  def get_order
    @order = Order.find(params[:id])
  end
end
