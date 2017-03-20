require 'addressable/uri'
require 'rest-client'

def index_users
    url = Addressable::URI.new(
      scheme: 'http',
      host: 'localhost',
      port: 3000,
      path: '/users.html'
    ).to_s

    puts RestClient.get(url)
end

def create_user(name, email)
  url = Addressable::URI.new(
   scheme: 'http',
   host: 'localhost',
   port: 3000,
   path: '/users.json'
).to_s

  puts RestClient.post(
    url,
    { user: { name: name, email: email } }
  )
end

def update_user(user_id, name, email)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{user_id}"
  ).to_s

  puts RestClient.patch(
    url,
    { user: { name: name, email: email } }
  )
end

def delete_user(user_id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{user_id}"
  ).to_s

  puts RestClient.delete(
    url
  )
end

# create_user("Gizmo", "gizmo@gizmo.gizmo")

index_users
# update_user("Daniel", "djrothblatt@gmail.com")
# delete_user(3)
# index_users
