RedmineApp::Application.routes.draw do
  match 'adminapi/info.:format', :controller => 'adminapi', :action => 'info', :via => :get
end
