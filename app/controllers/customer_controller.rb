class CustomerController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def alphabetized
    @customers = Customer.all.order('fullname asc')
  end

  def missing_email
    @customers = Customer.all.where("email = ''")
  end
end
