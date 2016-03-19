class Encode64sController < ApplicationController
require "base64"
	
  def index
    @encode64s = Encode64.all.order("created_at DESC")
 	end

  def last_record
    @encode64 = Encode64.order("created_at").last 
  end  

	def new
		@encode64 = Encode64.new
	end

	def destroy
		@encode64 = Encode64.find(params[:id])
		@encode64.destroy
		respond_to do |format|
     	format.html { redirect_to encode64s_url, notice: 'Record was successfully destroyed.' }
    end
	end

	def create
    @encode64 = Encode64.new
    @encode64.text_input(params[:string_input])
    @encode64.encode_from_string(params[:string_input])
    @encode64.save
    respond_to do |format|		
      format.html { redirect_to encode64s_url, notice: 'String sucessfully encoded' }
      format.js{} 
    end
  end


end
