#base de datos con valores ejemplo para probar

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_accounting_entity
    make_users
    make_companies
   end
end

namespace :db do
  namespace :test do
    task :prepare => :environment do
      Rake::Task["db:seed"].invoke
      Rake::Task["db:populate"].invoke
    end
  end
end

def make_users
  admin = User.create!(name:     "Admin User",
                       email:    "vezzmax@gmail.com",
                       password: "vezzmax",
                       password_confirmation: "vezzmax")
  #admin.toggle!(:admin)
  10.times do |n|
    name  = Faker::Name.name
    email = "example-#{n+1}@vencimientosonline.com"
    password  = "password"
    User.create!(name:     name,
                 email:    email,
                 password: password,
                 password_confirmation: password,
                 accounting_entity_id: AccountingEntity.first.id)
  end
end

def make_accounting_entity
  3.times do |n|
    name = Faker::Company.name
    desc = Faker::Company.bs
    AccountingEntity.create!(name: name, description: desc)  
  end
end

def make_companies
  100.times do |n|
    name = Faker::Company.name
    date = Date.today + rand(365)
    aEntity = AccountingEntity.find(rand(3)+1)    
    aEntity.companies.create!(name: name, closeDate: date, verificationDigit: rand(10))  
  end
end




