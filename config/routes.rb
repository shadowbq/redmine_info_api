ActionController::Routing::Routes.draw do |map|
  match 'admin/info.:format', :controller => 'adminapi', :action => 'info', :via => :get
end
