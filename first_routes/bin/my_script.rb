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

def index_contacts
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/contacts.html'
  ).to_s

  puts RestClient.get(url)
end

def create_user(username)
  url = Addressable::URI.new(
   scheme: 'http',
   host: 'localhost',
   port: 3000,
   path: '/users.json'
).to_s

  puts RestClient.post(
    url,
    { user: { username: username } }
  )
end

def create_contact(name, email, user_id)
  url = Addressable::URI.new(
   scheme: 'http',
   host: 'localhost',
   port: 3000,
   path: '/contacts.json'
).to_s

  puts RestClient.post(
    url,
    { contact: { name: name, email: email, user_id: user_id } }
  )
end

def update_user(id, username)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/users/#{id}"
  ).to_s

  puts RestClient.patch(
    url,
    { user: { username: username } }
  )
end

def update_contact(id, name, email, user_id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/contacts/#{id}"
  ).to_s

  puts RestClient.patch(
    url,
    { contact: { name: name, email: email, user_id: user_id } }
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

def delete_contact(id)
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: "/contacts/#{id}"
  ).to_s

  puts RestClient.delete(url)
end
