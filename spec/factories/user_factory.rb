  FactoryGirl.define do
      sequence(:email) { |n| "user#{n}@example.com" }
      factory :user do
          email
          password "testpassword"
          first_name"Johan"
          last_name "Doe"
          admin false
          
      end
      factory :admin, class: User do
         email 
        password "testpassword1"
        admin true
        first_name "Admin"
        last_name "User"
      end
    
  end
