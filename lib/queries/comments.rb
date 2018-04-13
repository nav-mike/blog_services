module Queries
  module Comments
    Comment = <<-'GRAPHQL'
      query($comment_id: Int!) {
        comment(id: $comment_id) {
          id
          body
          createdOn
          postId
          author
        }
      }
    GRAPHQL

    # CommentsByPost = Graphql::Comments.client.parse <<-'GRAPHQL'
    #   query($post_id: Int!) {
    #     commentsByPost(postId: $post_id) {
    #       id
    #       body
    #       createdOn
    #       postId
    #       author
    #     }
    #   }
    # GRAPHQL
    #
    # CommentsByDate = Graphql::Comments.client.parse <<-'GRAPHQL'
    #   query($post_id: Int!, $created_on: String!) {
    #     commentsByDate(postId: $post_id, createdOn: $created_on) {
    #       id
    #       body
    #       createdOn
    #       postId
    #       author
    #     }
    #   }
    # GRAPHQL
    #
    # CommentsByDates = Graphql::Comments.client.parse <<-'GRAPHQL'
    #   query($post_id: Int!, $start_date: String!, $end_date: String!) {
    #     commentsByDates(postId: $post_id, startDate: $start_date, endDate: $end_date) {
    #       id
    #       body
    #       createdOn
    #       postId
    #       author
    #     }
    #   }
    # GRAPHQL
    #
    # CommentsWithLimit = Graphql::Comments.client.parse <<-'GRAPHQL'
    #   query($post_id: Int!, $limit: Int!, $page: Int!) {
    #     commentsWithLimits(postId: $post_id, limit: $limit, page: $page) {
    #       id
    #       body
    #       createdOn
    #       postId
    #       author
    #     }
    #   }
    # GRAPHQL
    #
    # CreateComment = Graphql::Comments.client.parse <<-'GRAPHQL'
    #   mutation($body: String!, $post_id: Int!, $author: String!) {
    #     createComment(body: $body, postId: $postId, author: $author) {
    #       id
    #       body
    #       createdOn
    #       postId
    #       author
    #     }
    #   }
    # GRAPHQL
  end
end
