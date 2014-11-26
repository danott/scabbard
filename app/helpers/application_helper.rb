module ApplicationHelper
  def render_header
    render partial: "layouts/headers/#{@person.class.name.downcase}"
  end
end
