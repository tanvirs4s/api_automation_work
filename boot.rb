$LOAD_PATH.unshift File.expand_path('../../support', __FILE__)

require 'rubygems'
require 'bundler/setup'
Bundler.require

require './features/support/env'
require './features/support/s4s_client'
require './features/support/factory_helper'

ROOT_PATH = Pathname.new(File.expand_path(File.dirname(__FILE__)))