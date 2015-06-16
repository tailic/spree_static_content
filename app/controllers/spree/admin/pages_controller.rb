class Spree::Admin::PagesController < Spree::Admin::ResourceController
  create.after :create_images
  update.after :create_images

  def create_images
    if params[:attachments_array]
      params[:attachments_array].each { |image|
        @object.page_images.create(attachment: image)
      }
    end
  end
  private
  def model_class
    Spree::Page
  end
end
