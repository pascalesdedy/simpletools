class WebimgsController < ApplicationController

	
  # GET /webimgs
  def index
    @webimgs = Webimg.all.order("created_at DESC")
  end

  # GET /webimgs/new
  def new
    @webimg = Webimg.new
  end

  # POST /webimgs
  def create
    #create the webimg from specified webimg parameters
    @webimg = Webimg.new(webimg_params)
    #pull the image from the specified url and set the webimg's avatar
    @webimg.avatar_from_url(params[:avatar_url])
    @webimg.save
    respond_to do |format|   
      format.html { redirect_to webimgs_url, notice: 'webimg was successfully created.'}
      format.js{} 
    end
  end

  def destroy
    @webimg = Webimg.find(params[:id])
    @webimg.avatar.destroy
    @webimg.destroy
    respond_to do |format|
      format.html { redirect_to webimgs_url, notice: 'Note was successfully destroyed.' }
    end
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def webimg_params
      params.require(:webimg).permit(:name)
    end
end
