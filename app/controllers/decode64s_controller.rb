class Decode64sController < ApplicationController
require "base64"
	
  	def index
    	@decode64s = Decode64.all.order("created_at DESC")
 	end

  	def last_record
    	@decode64 = Decode64.order("created_at").last 
  	end  

	def new
		@decode64 = Decode64.new
	end

	def destroy
		@decode64 = Decode64.find(params[:id])
		@decode64.destroy
		respond_to do |format|
     	format.html { redirect_to decode64s_url, notice: 'Record was successfully destroyed.' }
    end
	end

	def create
    	@decode64 = Decode64.new
    	@decode64.text_input(params[:string_input])
    	@decode64.decode_from_string(params[:string_input])
    	@decode64.save
      respond_to do |format|		
        format.html { redirect_to decode64s_url, notice: "String sucessfully decoded" }
        format.js{} 
      end
  end


end
