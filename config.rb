activate :i18n
activate :blog do |blog|
  blog.prefix            = "{lang}"
  blog.sources           = "{year}-{month}-{day}-{title}.html"
  blog.permalink         = "{year}/{month}/{day}/{title}.html"
  blog.calendar_template = "calendar.html"
  blog.tag_template      = "tag.html"
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "master"
  deploy.build_before = true
end
