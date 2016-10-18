class Electorate < ActiveRecord::Base
    has_many :member_of_parliaments
end
