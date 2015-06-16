class Spree::PageImage < Spree::Image
  belongs_to :page, class_name: 'Spree::Page'
  has_attached_file :attachment,
     :styles => {:mini => '48x48#', :list => '200x200>',:small => '285x230>',:normal => '425x500>', :large => '850x650>'},
     :default_style => :large,
     :url => "/spree/page_images/:id/:style/:basename.:extension",
     :path => ":rails_root/public/spree/page_images/:id/:style/:basename.:extension"
end
