#!/usr/bin/env bash

desc 'starts the appium server'
task :start_appium_server do
  puts "hello"
  log_filename = File.expand_path('./../../', __FILE__) + '/appium_server.log'

  command = "appium --port 5555 --log #{log_filename} --local-timezone 1>&2"
  puts "Starting Appium server (log: #{log_filename})"
end


desc 'stop appium server'
task :stop_appium_server do
  stop_appium_sever
end



def stop_appium_server
  `pgrep node`.each_line.map(&:to_i).map { |pid| stop_node_process(pid: pid) }
end

def start_appium_server
  puts "hello"
  log_filename = File.expand_path('./../../', __FILE__) + '/appium_server.log'

  command = "appium --port 5555 --log #{log_filename} --local-timezone 1>&2"
  puts "Starting Appium server (log: #{log_filename})"
end