module Features
  def css_list(todo_text)
    have_css '.todo li', text: todo_text
  end
end