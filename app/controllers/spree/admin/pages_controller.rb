class Spree::Admin::PagesController < Spree::Admin::ResourceController
  private
  def model_class
    Spree::Page
  end
end
