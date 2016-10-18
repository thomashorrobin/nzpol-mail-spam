class PostCode < ActiveRecord::Base
    has_many :post_code_electorate_maps
end
