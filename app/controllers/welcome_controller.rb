class WelcomeController < ApplicationController
  def index
    @bucket_name = 'media.pomsapp.com'
  end
  
  def create
    logger.info params
    @bucket_name = params[:bucket_name]
    policy = Policy.new(@bucket_name)
    policy.generate
  end
end
