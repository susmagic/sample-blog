FactoryGirl.define do
  factory :article do
    title "Article title"
    text "Article text"

    #создаем фабрику с название article_with_comments
    #для создания статьи снесоклькими комментариями
    factory :article_with_comments do
      #после создиния article
      after :create do |article, evaluator|
        #создаем список из 3х комментариев
        create_list :comment, 3, article: article
      end
    end
  end
end
