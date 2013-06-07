#! /usr/bin/env rackup

require "rubygems"
require "bundler/setup"

Bundler.require(:default)

require './site'

run Sinatra::Application
