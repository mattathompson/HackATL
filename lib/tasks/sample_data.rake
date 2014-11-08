namespace :db do
  desc "Drop, create, migrate, seed and populate sample data"
  task prepare: [:drop, :create, :migrate, :populate] do
    puts "Ready to rock and roll. GET OUT OF MY CAR"
    puts
    puts "..."
    puts
    puts "..."
    puts "FINE I'LL WALK."
    puts
  end

  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_clients
  end
end

def make_clients
  burger_win
  make_rathbuns
  make_figo
  make_rias
  make_brick_store
  make_taqueria
  make_jacks
end

def make_users
  User.destroy_all
  make_andy
  make_carmen
  make_creighton
  make_matt
  make_elaine
  make_marshall
end

def make_this_user(first_name, last_name, email, password, password_confirmation, address, city, state, zip)
  User.create!(  first_name:            first_name,
                 last_name:             last_name,
                 email:                 email,
                 password:              password,
                 password_confirmation: password_confirmation,
                 address:               address,
                 city:                  city,
                 state:                 state,
                 zip:                   zip)
end

def make_this_client(name, email, password, password_confirmation, address, city, state, zip)
  Client.create!(name:                  name,
                 email:                 email,
                 password:              password,
                 password_confirmation: password_confirmation,
                 address:               address,
                 city:                  city,
                 state:                 state,
                 zip:                   zip,
                 phone:                 "555-555-5555")
end

def make_andy
  first_name = "Andy"
  last_name = "Perez"
  email = "agperez@gmail.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
  make_this_user(first_name, last_name, email, password, password_confirmation, address, city, state, zip)
end

def make_carmen
  first_name = "Carmen"
  last_name = "Perez"
  email = "carmenperez@gmail.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
  make_this_user(first_name, last_name, email, password, password_confirmation, address, city, state, zip)
end

def make_creighton
  first_name = "Creighton"
  last_name = "Vaughn"
  email = "creightonvaughn@gmail.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
  make_this_user(first_name, last_name, email, password, password_confirmation, address, city, state, zip)
end

def make_matt
  first_name = "Matt"
  last_name = "Thompson"
  email = "matt@mattathompson.org"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
  make_this_user(first_name, last_name, email, password, password_confirmation, address, city, state, zip)
end

def make_elaine
  first_name = "Elaine"
  last_name = "Perez"
  email = "elaineperez@gmail.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
  make_this_user(first_name, last_name, email, password, password_confirmation, address, city, state, zip)

end

def make_marshall
  first_name = "Marshall"
  last_name = "Protsman"
  email = "marshallprotsman@gmail.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
  make_this_user(first_name, last_name, email, password, password_confirmation, address, city, state, zip)
end

#################
#####Clients#####

def make_jacks
  name = "Jack's Pizza"
  email = "jacks@example.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "676 Highland Ave NE"
  city = "Atlanta"
  state = "GA"
  zip = 30312
  make_this_client(name, email, password, password_confirmation, address, city, state, zip)
end

def make_taqueria
  name = "Taqueria Del Sol"
  email = "taqueria@example.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "359 W Ponce De Leon Ave"
  city = "Decatur"
  state = "GA"
  zip = 30030
  make_this_client(name, email, password, password_confirmation, address, city, state, zip)
end

def make_brick_store
  name = "Brick Store"
  email = "brickstore@example.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "125 E Court Square"
  city = "Decatur"
  state = "GA"
  zip = 30030
  make_this_client(name, email, password, password_confirmation, address, city, state, zip)
end

def make_rias
  name = "Ria's Bluebird"
  email = "rias@example.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "421 Memorial Dr SE"
  city = "Atlanta"
  state = "GA"
  zip = 30312
  make_this_client(name, email, password, password_confirmation, address, city, state, zip)
end

def make_figo
  name = "Figo"
  email = "figo@example.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "1210 Howell Mill Rd NW"
  city = "Atlanta"
  state = "GA"
  zip = 30318
  make_this_client(name, email, password, password_confirmation, address, city, state, zip)
end

def make_rathbuns
  name = "Rathbun's"
  email = "rathbuns@example.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "112 Krog St NE"
  city = "Atlanta"
  state = "GA"
  zip = 30307
  make_this_client(name, email, password, password_confirmation, address, city, state, zip)
end

def burger_win
  name = "Burger Win"
  email = "burgerwin@example.com"
  password = "caseyokeefe"
  password_confirmation = "caseyokeefe"
  address = "1181 McPherson Ave SE"
  city = "Atlanta"
  state = "GA"
  zip = 30316
  make_this_client(name, email, password, password_confirmation, address, city, state, zip)
end
