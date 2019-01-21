class Comment < ApplicationRecord
  belongs_to :post 
  #while creting a model "rails g model comment username:string body:text post:references
  #.....because of "post:references"...we get the above line"
  validates :username, presence: true,
                        length: {minimum: 5}
end
