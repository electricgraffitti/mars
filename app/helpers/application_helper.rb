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
  
  def user_name
    current_user.first_name + " " + current_user.last_name
  end
  
  def admin_name
    "#{current_admin.username}"
  end
  

  def user_login_logout_link
    if current_user
      link_to "User Logout", logout_path, :class => "admin_link"
    else
      link_to "User Login", login_path
    end
  end
  
  def admin_logout_link
    if current_admin
      link_to "Admin Logout", admin_logout_path, :class => "admin_link"
    end
  end
  
  
end
