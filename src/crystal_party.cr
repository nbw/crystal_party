require "./crystal_party/*"
require "kemal"

get "/" do
  "AppColony does Crystal!"
end

Kemal.run
