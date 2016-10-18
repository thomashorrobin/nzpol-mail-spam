class HomeController < ApplicationController
  def index
  end

  def result
    post_code = PostCode.find_by(code: params[:postcode])
    @mps = Array.new
    maps = post_code.post_code_electorate_maps
    maps.each do |map|
      map.electorate.member_of_parliaments.each do |mp|
        @mps << mp
      end
    end
    @postcode = post_code.code
  end
end
