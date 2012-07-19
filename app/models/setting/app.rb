# coding: utf-8

class Setting::App < Settingslogic
  source "#{Rails.root}/config/app.yml"
  namespace Rails.env
end
