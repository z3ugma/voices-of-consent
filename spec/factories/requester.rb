FactoryBot.define do
  factory :requester do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    street_address { Faker:: Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip { Faker::Address.zip }
    ok_to_email  { true }
    ok_to_text  { true }
    ok_to_call  { true }
    ok_to_mail  { true }
    underage { false }

    factory :requester_with_box_requests do
      transient do
        request_count { 1 }
      end

      after(:create) do |requester, evaluator|
        create_list(:box_request, evaluator.request_count, requester: requester)
      end
    end
  end
end
