require "net/http"
require "uri"
require "whenever"

every :hour do
  apps = File.read("apps.txt").split("\n")
  apps.each do |app|
    uri = URI("http://#{app}")
    Net::HTTP.get(uri)
  end
end
