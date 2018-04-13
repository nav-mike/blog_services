module Services
  module Comment
    class Find
      module Actions
        def self.included(includer)
          includer.extend ClassMethods
        end
      end

      module ClassMethods
        def call(id)
          Graphql::Comments.query Queries::Comments::Comment,
                                  variables: {comment_id: id}
        end
      end
    end
  end
end
