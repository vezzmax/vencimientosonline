#base de datos con valores ejemplo para probar

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_accounting_entity
    make_users
    #make_microposts
    #make_relationships
  end
end

def make_users
  admin = User.create!(name:     "Admin User",
                       email:    "example@vencimientosonline.com",
                       password: "foobar",
                       password_confirmation: "foobar")
  #admin.toggle!(:admin)
  99.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@vencimientosonline.com"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_accounting_entity
  3.times do |n|
    name = Faker::Company.name
    desc = Faker::Company.bs
    AccountinEntity.create!(name: name, description: desc)  
  end
end



