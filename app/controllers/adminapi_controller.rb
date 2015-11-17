class AdminapiController < ApplicationController
  before_filter :require_admin
  helper :sort
  include SortHelper

  accept_api_auth :info

  def info
    @db_adapter_name = ActiveRecord::Base.connection.adapter_name
    @checklist = [
      [:text_default_administrator_account_changed, User.default_admin_account_changed?],
      [:text_file_repository_writable, File.writable?(Attachment.storage_path)],
      ["#{l :text_plugin_assets_writable} (./public/plugin_assets)",   File.writable?(Redmine::Plugin.public_directory)],
      [:text_rmagick_available,        Object.const_defined?(:Magick)],
      [:text_convert_available,        Redmine::Thumbnail.convert_available?]
    ]

    respond_to do |format|
      format.html
      format.api
    end
  end


end
