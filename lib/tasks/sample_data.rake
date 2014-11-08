namespace :db do
  desc "Drop, create, migrate, seed and populate sample data"
  task prepare:; [:drop, :create, :migrate, :populate] do
    puts "Ready to rock and roll. GET OUT OF MY CAR"
    puts
    puts "..."
    puts
    puts "... FINE I'LL WALK"
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

def make_andy
  first = "Andy"
  last = "Perez"
  email = "agperez@gmail.com"
  password = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
end

def make_carmen
  first = "Carmen"
  last = "Perez"
  email = "carmenperez@gmail.com"
  password = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
end

def make_creighton
  first = "Creighton"
  last = "Vaughn"
  email = "creightonvaughn@gmail.com"
  password = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
end

def make_matt
  first = "Matt"
  last = "Thompson"
  email = "matt@mattathompson.org"
  password = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
end

def make_elaine
  first = "Elaine"
  last = "Perez"
  email = "elaineperez@gmail.com"
  password = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
end

def make_marshall
  first = "Marshall"
  last = "Protsman"
  email = "marshallprotsman@gmail.com"
  password = "caseyokeefe"
  address = "869 Confederate Ave"
  city = "Atlanta"
  state = "GA"
  zip = 30312
end

def make_jacks
  name = "Jack's Pizza"
  email = "jacks@example.com"
  address = "676 Highland Ave NE"
  city = "Atlanta"
  state = "GA"
  zip = 30312
end

def make_taqueria
  name = "Taqueria Del Sol"
  email = "taqueria@example.com"
  address = "359 W Ponce De Leon Ave"
  city = "Decatur"
  state = "GA"
  zip = 30030
end

def make_brick_store
  name = "Brick Store"
  email = "brickstore@example.com"
  address = "125 E Court Square"
  city = "Decatur"
  state = "GA"
  zip = 30030
end

def make_rias
  name = "Ria's Bluebird"
  email = "rias@example.com"
  address = "421 Memorial Dr SE"
  city = "Atlanta"
  state = "GA"
  zip = 30312
end

def make_figo
  name = "Figo"
  email = "figo@example.com"
  address = "1210 Howell Mill Rd NW"
  city = "Atlanta"
  state = "GA"
  zip = 30318
end

def make_rathbuns
  name = "Rathbun's"
  email = "rathbuns@example.com"
  address = "112 Krog St NE"
  city = "Atlanta"
  state = "GA"
  zip = 30307
end

def burger_win
  name = "Burger Win"
  email = "burgerwin@example.com"
  address = "1181 McPherson Ave SE"
  city = "Atlanta"
  state = "GA"
  zip = 30316
end
