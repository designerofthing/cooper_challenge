FactoryBot.define do
  factory :performance_datum, class: 'PerformanceData' do
    user
    data { '' }
  end
end
