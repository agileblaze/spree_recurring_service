class Admin::SubscriptionBillingController < ApplicationController
  def index
  	Recurly.api_key = '78256c8e627a4a829f5e3948f30012a2'

	

account = Recurly::Account.create(
  :account_code => 11,
  :username     => 'shamithc',
  :email        => 'shamithc@gmail.com',
  :first_name   => 'shamith',
  :last_name    => 'c',
  :company_name => 'agileblaze'
)
render :text =>account
  end

end
