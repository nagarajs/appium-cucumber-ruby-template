task default: %w[start_appium]

task :test do
  puts "start appium server"
  Rake::Task[:start_appium_server].invoke
end

task :start_appium do
  Rake::Task["stop_appium"].invoke

  appium_command="appium"
  puts "Appium Command: #{appium_command}"
  Process.spawn(appium_command)

  puts "SUCCESS: Appium started"
end

task :stop_appium do
  `killall -9 node`
  puts "SUCCESS: Appium stopped"
end