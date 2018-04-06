class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      flash[:notice] = "Image Saved"
      redirect_to root_path
    else
      render 'new'
    end
  end
  def destroy
  end

  def index
    @images = Image.all
  end

  private
  def image_params
    params.require(:image).permit(:image, :image_title, :description, :file_size, :content_type, :remote_image_url )
  end
end
