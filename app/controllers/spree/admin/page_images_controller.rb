module Spree
  module Admin
    class PageImagesController < ResourceController
      before_filter :load_data

      create.before :set_viewable
      update.before :set_viewable

      private

        def location_after_destroy
          admin_page_url(@page)
        end

        def location_after_save
          admin_page_url(@page)
        end

        def load_data
          @page = Page.find(params[:page_id])

        end

        def set_viewable
          @image.viewable_type = 'Spree::Page'
          @image.viewable_id = params[:image][:viewable_id]
        end

    end
  end
end
