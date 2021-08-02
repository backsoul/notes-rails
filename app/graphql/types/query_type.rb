module Types
  class QueryType < Types::BaseObject
    field :posts, [PostType], null:false do
      description "query that select all posts."
    end

    field :postCount, Integer, null: false do
      description "Query that returns the total number of posts."
    end

    field :authors, [AuthorType], null: false do
      description "Return all authors.."
    end

    def posts
      return Post.all
    end

    def postCount
      return Post.count
    end

    def authors
      return Author.all
    end


  end
end
