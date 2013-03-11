#base de datos con valores ejemplo para probar

namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_accounting_entity
    make_users
    make_companies
    make_expirations
    make_directExpirations
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

def make_accounting_entity
  3.times do |n|
    name = Faker::Company.name
    desc = Faker::Company.bs
    AccountingEntity.create!(name: name, description: desc)  
  end
end

def make_users
  admin = User.create!(name:     "Maximo Vezzosi",
                       email:    "vezzmax@gmail.com",
                       password: "vezzmax",
                       password_confirmation: "vezzmax",
                       accounting_entity_id: AccountingEntity.first.id)
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

def make_companies
  100.times do |n|
    name = Faker::Company.name
    date = Date.today + rand(365)
    aEntity = AccountingEntity.find(rand(3)+1)    
    aEntity.companies.create!(name: name, closeDate: date, verificationDigit: rand(10))  
  end
end

def make_expirations
  100.times do |n|
    date = Date.today + rand(365)
    tax_id = rand(15)+1
    5.times do |k| 
      Expiration.create!(tax_id: tax_id,
                   date: date+k,
                   endingFirst: k*2,
                   endingLast: k*2+1)
    end
  end
end

def make_directExpirations
  user = User.find(1)
  20.times do |n|
      company = Company.find(n+1)
      tax = Tax.find(rand(15)+1)
      asociation = company.associateTax(tax)
      print asociation.size
      company.associated_taxes.first.supervisions.create!(level: rand(4)+1, user_id: user.id)
  end
end




