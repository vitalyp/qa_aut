module SitePages
  class GooglePage < SitePrism::Page
    set_url 'http://www.google.com'

    element :search_field, "input[name='q']"
    element :search_button, "button[name='btnG']"
  end
end