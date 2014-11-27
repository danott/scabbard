module ApplicationHelper
  def render_footer
    unless %[people sessions].include? params[:controller]
      render partial: "layouts/footers/#{@person.class.name.downcase}"
    end
  end
end
