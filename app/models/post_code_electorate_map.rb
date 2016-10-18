class PostCodeElectorateMap < ActiveRecord::Base
  belongs_to :electorate
  belongs_to :post_code
end
