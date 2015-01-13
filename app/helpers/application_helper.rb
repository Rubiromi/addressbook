module ApplicationHelper
  def set_title(title)
    if title
      "#{title} | Addressbook"
    else
      "Addressbook"
    end
  end
end
