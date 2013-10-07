class Post < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection 

  has_many :comments, dependent: :destroy
  
  validates :title, presence: true,
            length: { minimum: 5 }
            
  attr_accessible :text, :title
end
