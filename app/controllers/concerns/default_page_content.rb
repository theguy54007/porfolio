module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Tommy's Page"
    @seo_keywords = 'Tommy portfolio'
  end

end