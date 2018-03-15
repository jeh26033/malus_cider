class ChargesController < ApplicationController

	def new

	end

	def show
	end

	def index
	end
	
	def create
	    # Amount in cents

	    amount = params[:stripeAmount].to_i * 100

	    puts amount
	 
	    # Create the customer in Stripe
	    customer = Stripe::Customer.create(
	      email: params[:stripeEmail],
	      source: params[:stripeToken]
	      
	    )
	 
	    # Create the charge using the customer data returned by Stripe API
	    charge = Stripe::Charge.create(
	      customer: customer.id,
	      amount: amount,
	      description: 'Rails Stripe customer',
	      currency: 'usd'
	    )		
	end

	private

	  def product_params
	    params.require(:product).permit(:id, :name, :price)
	  end
end
