FactoryBot.define do
  factory :box_request, aliases: [:messageable] do
    requester

    summary { Faker::Books::Lovecraft.paragraph }
    question_re_affect { "Affected my life: #{Faker::Books::Lovecraft.paragraph}" }
    question_re_referral_source { "Referral source: #{Faker::Books::Lovecraft.paragraph}" }
    question_re_current_situation { "Current situation: #{Faker::Books::Lovecraft.paragraph}" }
    tag_list { Array.new(rand(0..4)) { Faker::Science.element }.join(",") }

  end
end
