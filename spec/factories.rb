FactoryGirl.define do
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
    endingFirst "1"
    endingLast "3"
    tax
  end

end