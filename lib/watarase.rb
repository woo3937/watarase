require 'rubygems'
require 'rails/generators'

module Watarase

  @@suffix = "image_holder"

  def self.suffix
    @@suffix
  end

  def self.suffix=(_suffix)
    @@suffix = _suffix
  end
end

module Watarase
  module Generators
    class Base < Rails::Generators::NamedBase
      #source_root File.expand_path(File.join(File.dirname(__FILE__), "watarase", "generator", "uploader", "template"))
    end
  end
end
require 'watarase/image_handler'
require 'watarase/controller'
require 'watarase/generators/uploader/uploader_generator'
require 'watarase/extension_whitelist'
require 'watarase/image_holder'
