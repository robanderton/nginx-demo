bind        'unix:///tmp/nginx.socket'
rackup      DefaultRackup
environment ENV['RACK_ENV'] || 'development'
