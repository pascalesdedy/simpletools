class Encode64sController < ApplicationController
require "base64"
	
  	def index
    	@encode64s = Encode64.all
 	end

	def new
		#@dataencode = Base64.encode64('Hellow worrrolddd')
		@encode64 = Encode64.new
	end

	def destroy
		@encode64 = Encode64.find(params[:id])
		@encode64.destroy
		respond_to do |format|
     	format.html { redirect_to encode64s_url, notice: 'Note was successfully destroyed.' }
     end
	end

	def create
    	@encode64 = Encode64.new
    	@encode64.text_input(params[:string_input])
    	@encode64.encode_from_string(params[:string_input])

    	if @encode64.save
      		redirect_to action: 'index', notice: 'String sucessfully encoded'
    	else
      		render action: 'new', alert: 'String could not be encoded' 
    	end
  	end


end
