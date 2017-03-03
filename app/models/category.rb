class Category < ApplicationRecord
	acts_as_nested_set
	    has_many :products
	    	has_attached_file :image, :styles => { :thumb => "237x237#" },
		:url => "product/image/:id/:style/:basename.:extension",
		:path => "#{ENV['IMAGE_PATH']}product/image/:id/:style/:basename.:extension"
		# Validate the attached image is image/jpg, image/png, etc
		validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
