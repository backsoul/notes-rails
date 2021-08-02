module Types
  class PostType < Types::BaseObject
    field :title, String, null: true do
      description "This post's id."
    end
    field :body, String, null: true do
      description "body text in post."
    end
    field :author, AuthorType, null: true do
      description "id author post"
    end
  end
end
