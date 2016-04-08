class Spree::PageImage < Spree::Image
  belongs_to :page, class_name: 'Spree::Page'
  has_attached_file :attachment,
                    :styles => {
                        :mini => '48x48#',
                        :list => '200x200>',
                        :small => '285x230>',
                        :normal => '425x500>',
                        :large => '850x650>',
                        :original_optimized => ''
                    },
                    :default_style => :large,
                    :url => "/spree/page_images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/spree/page_images/:id/:style/:basename.:extension",
                    processors: [:thumbnail, :paperclip_optimizer],
                    paperclip_optimizer: {
                        jpegrecompress: {
                            quality: 0          # JPEG quality preset: 0 - low, 1 - medium, 2 - high, 3 - veryhigh (defaults to 3)
                        }
                    }
end
