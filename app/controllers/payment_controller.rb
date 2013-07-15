class PaymentController < ApplicationController
  protect_from_forgery except: [:create]

  def index
  end

  def create
    Payment.create!(params: params, status: params[:payment_status],txn_id: params[:txn_id],cart_id: params[:invoice])
    render nothing: true
  end
end
