class ChargesController < ApplicationController

	def new
	end

	def create
		#amounts are in American cents
		@amount=500 
		#5 bucks

		#making a customer
		customer = Stripe::Customer.create(
			:email => params[:stripeEmail],
			:source => params[:stripeToken]
		)
		#a customer has an email, and a token, provided by stripe

		#making a charge

		charge= Stripe::Charge.create(
			:customer    => customer.id,
			:amount      => @amount,
			:description => 'Rails Stripe Customer',
			:currency 	 => 'usd'
		)
		# a charge has a customer, found by customer id, an amount, a description, and a currency
		rescue Stripe::CardError => e
		  flash[:error] = e.message
		  redirect_to new_charge_path

	end

end
