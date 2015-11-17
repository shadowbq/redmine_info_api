require 'redmine'

Redmine::Plugin.register :redmine_info_api do
  name 'Redmine Info API plugin'
  author 'shadowbq'
  description 'Expose the Redmine::Info as an API'

  url 'http://github.com/shadowbq/redmine_info_api'
  author_url 'mailto:shadowbq@gmail.com'

  version '0.0.2'
  requires_redmine :version_or_higher => '2.0.0'
end
