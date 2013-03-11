FactoryGirl.define do

  factory :accountingEntity do
    name "Entidad Contable"
    description "description"
  end

  factory :company do
    name "Compania de testeo"
    verificationDigit "5"
    closeDate Date.today+100
    accountingEntity
  end

  factory :agency do
    name  "AFIP"
    scope "Nacional"
  end

  factory :tax do
    name  "Monotributo"
    period "Mensual"
    agency
  end 

   factory :expiration do
    date  Date.tomorrow
    ending_first "1"
    ending_last "3"
    tax
  end

  factory :user do
    name     "Maximo Vezzosi"
    email    "vezzmax@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end

end