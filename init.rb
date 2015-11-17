require 'redmine'

Redmine::Plugin.register :redmine_info_api do
  name 'Redmine Info API plugin'
  author 'shadowbq'
  description 'Expose the Redmine::Info as an API'

  version '0.0.1'
  requires_redmine :version_or_higher => '2.0.0'
  #url 'http://example.com/path/to/plugin'
  #author_url 'mailto:mike.kolganov@gmail.com'
end
