Redmine::Info Class REST API plugin for Redmine
===============================

About
-----

Plugin for Redmine that adds functionality to read the Redmine::Info as an API.

This is exposed as:

https://redmine.example.com/adminapi/info.json

You will need admin access to request the json data.

Licensed under BSD

Install
-------

1. Download plugin
2. Extract to your Redmine into vendor/plugins/redmine_info_api
3. Restart web server
4. request with basic auth https://redmine.example.com/adminapi/info.json

Reference:
--------
https://www.redmine.org/issues/5901

Example:
--------
```json
{
  "info": {
    "app_name": "Redmine",
    "url": "http://www.redmine.org/",
    "help_url": "http://www.redmine.org/guide",
    "versioned_name": "Redmine 2.6.3.stable",
    "redmine_version": "2.6.3.stable",
    "ruby_version": "1.9.3-p484 (2013-11-22) [x86_64-linux]",
    "rails_version": "3.2.21",
    "environment": "production",
    "database_adapter": "Mysql2",
    "checklist": [{
      "check": "text_default_administrator_account_changed",
      "value": true
    }, {
      "check": "text_file_repository_writable",
      "value": true
    }, {
      "check": "Plugin assets directory writable (./public/plugin_assets)",
      "value": true
    }, {
      "check": "text_rmagick_available",
      "value": true
    }, {
      "check": "text_convert_available",
      "value": true
    }],
    "scms": [{
      "scm": "Subversion",
      "scm_version": "1.8.8"
    }, {
      "scm": "Git",
      "scm_version": "1.9.1"
    }, {
      "scm": "Filesystem",
      "scm_version": ""
    }],
    "plugins": [{
      "plugin": "redmine_auto_identifier",
      "plugin_version": "0.0.1"
    }, {
      "plugin": "redmine_auto_percent",
      "plugin_version": "0.0.1"
    }, {
      "plugin": "redmine_global_issues",
      "plugin_version": "0.1.0"
    }, {
      "plugin": "redmine_info_api",
      "plugin_version": "0.0.1"
    }]
  }
}
```
