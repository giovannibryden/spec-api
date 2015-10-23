class SpecsController < ApplicationController
  
  def create
  	@spec = Spec.new(spec_params)

  	if @spec.save
  		render :json => {:status => "1",:message => "Successfully created a spec.",:spec=> @spec}
  	else
  		render :json => {:status => "0",:message => "Spec was not successfully created."}
  	end
  end

  def read
  	@spec = Spec.find_by(key:params[:key])
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
end
