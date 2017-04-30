class PicturesController < ApplicationController

	before_action :find_picture, only: [:show, :edit, :update, :destroy]


	def index
	  
	end

	def show
	end	
	
	def new
	  @picture = Picture.new
	end

	def create
	  @picture = Picture.new(picture_params)
	  if @picture.save
	    redirect_to @picture, notice:	'Picture was posted!'
	  else
	  	render 'new'
	  end	
	end

	private

	def picture_params
	 params.require(:picture).permit(:title, :description)	
	end

	def find_picture
	 @picture = Picture.find(params[:id])	
	end

end
