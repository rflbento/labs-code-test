FactoryBot.define do
  factory :user do
    full_name { 'Fulana da Silva' }
    document { '11122233344' }
    address { 'Rua Da Minha Casa, 100' }
    birthday { '1990-01-01' }
    gender { 'F' }
    password { '12345678' }
    token { 'mYauTOGeneRaTeDDuMMyToKen' }

    trait :another_user do
      full_name { 'Fulano de Souza' }
      document { '55566677788' }
      address { 'Rua do Mercadinho, 200' }
      birthday { '1992-05-01' }
      gender { 'M' }
      password { 'senhaboa' }
      token { 'MycOOlTokEn' }
    end
  end
end