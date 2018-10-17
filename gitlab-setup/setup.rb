#!/usr/local/bin/ruby -w
require 'gitlab'
Gitlab.configure do |config|
    config.endpoint = 'http://host.docker.internal:9090/api/v4'
end

unless ENV['GITLAB_API_PRIVATE_TOKEN']
    raise "please define GITLAB_API_PRIVATE_TOKEN via docker.env (or otherwise as environment variable)"
end

puts "using private token: #{ENV['GITLAB_API_PRIVATE_TOKEN']}"

Gitlab.create_project('dgr-parent')
Gitlab.create_project('l0-multi-with-parent')
Gitlab.create_project('l0-single-without-parent')
Gitlab.create_project('l1-multi')
Gitlab.create_project('l1-single')
Gitlab.create_project('l2-single')
Gitlab.create_project('l3-multi')
