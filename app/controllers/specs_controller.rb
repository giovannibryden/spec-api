class SpecsController < ApplicationController
  
  before_filter :cors
  skip_before_action :verify_authenticity_token

  def create
  	@spec = Spec.new(spec_params)

  	if @spec.save
  		render :json => {:status => "1",:message => "Successfully created a spec.",:spec=> @spec}
  	else
  		render :json => {:status => "0",:message => "Spec was not successfully created."}
  	end
  end

  def read
  	@spec = Spec.where(:key => params[:key])
  	if @spec
  		render :json => {:spec => @spec}
  	else
  		render :json => {:message => "Spec was not found."}
  	end
  end

  def update
  end

  def destroy
  end

  private

  	def spec_params
  		params.permit(:spec,:key)
  	end

  	def cors
  		headers['Access-Control-Allow-Origin'] = '*'
  		headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
  		headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
  		headers['Access-Control-Max-Age'] = "1728000" 
  	end
end
