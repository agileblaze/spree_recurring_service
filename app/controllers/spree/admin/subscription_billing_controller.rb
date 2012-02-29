class Spree::Admin::SubscriptionBillingController < Spree::BaseController #ApplicationController

  layout 'abc'
  #helper 'navigation'
  before_filter :load_api,:except=>['configuration','create_configuration']

  def index
    #Recurly.api_key = 'Specify your key '
  end

  def accounts
      
  end

  def plans

  end

  def subscriptions

  end

  def create_plan

  end

  def new_plan

  end

  def configuration
     @configuration=Confiuration.new
     @config=Confiuration.first
  end

  def create_configuration 
     @configuration=Confiuration.new(params['confiuration'])
     Confiuration.delete_all
     if @configuration.save 
        redirect_to :action=>'configuration'
     end
      auth= %x[curl  -u #{Confiuration.first.api_ky}: https://api.recurly.com/v2/accounts] 
      if auth=="HTTP Basic: Access denied.\n"
         Confiuration.delete_all
      end
  end


  private 

  def load_api
    if Confiuration.first.nil?
       flash['msg']='Api Key is not set'
       @configuration=Confiuration.new
       render :action=>'configuration' and return
     else
       Recurly.api_key =  Confiuration.first.api_ky
    end
  end

end