module ApplicationHelper
  
  def page_title(page_title)
    content_for(:title) { page_title }
  end
  
  def meta_keywords(meta_keywords)
     content_for(:keywords) {meta_keywords}
  end

  def meta_description(meta_description)
    content_for(:description) {meta_description}
  end
  
  def clear
  	content_tag(:div, "", :class => "clear")
  end
  
  def login_logout_link
    if current_user
      link_to "Logout", logout_path
    else
      link_to "Login", login_path
    end
  end
  
  
end