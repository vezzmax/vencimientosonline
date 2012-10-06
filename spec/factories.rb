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

end