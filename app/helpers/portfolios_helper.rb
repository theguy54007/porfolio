module PortfoliosHelper
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_main_img img
    if @portfolio_item.main_image? 
      img
    else
      image_generator(height: '600', width: '400')
    end
  end






  def portfolio_thumb_img img
    if img.model.thumb_image?
      img
    else
      image_generator(height: '350', width: '200')
    end
  end
end