class PagesController < ApplicationController
  include HighVoltage::StaticPage

  private

  # def layout_for_page
  #   case params[:id]
  #   when 'home'
  #     'home'
  #   else
  #     'article'
  #   end
  # end
end
