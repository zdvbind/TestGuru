module ApplicationHelper
  FLASH_CLASS = {
    alert: 'danger',
    notice: 'success'
  }.freeze

  def current_year
    Date.current.year
  end

  def github_url(author, repo)
    link_to repo, "https://github.com/#{author}/#{repo}", target: '_blank'
  end

  def flash_message(message, type)
    content_tag :p, message.html_safe, class: ["alert alert-#{FLASH_CLASS[type.to_sym]}", "m-3"], role: "alert"
  end
end
