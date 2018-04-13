class Comment
  attr_reader :id, :body, :created_on, :post_id, :author

  def initialize(options = {})
    @id = options[:id] || nil
    @body = options[:body] || ''
    @created_on = options[:created_on] || Time.zone.now
    @post_id = options[:post_id] || nil
    @author = options[:author] || nil
  end

  def self.find(id)
    return nil unless id.present?
    # Comment::Find.(id)
  end

  def self.by_post(post_id)
    return nil unless post_id.present?
    # Comment::By::Post.(post_id)
  end

  def self.by_date(post_id, created_on)
    return nil if post_id.blank? || created_on.blank?
    # Comment::By::Date.(post_id, created_on)
  end

  def self.by_dates(post_id, start_date, end_date)
    return nil if post_id.blank? || start_date.blank? || end_date.blank?
    # Comment::By::Dates.(post_id, start_date, end_date)
  end

  def self.create(body:, post_id:, author:)
    return nil if body.blank? || post_id.blank? || author.blank?
    # Comment.new Comment::Create.(body, post_id, author)
  end
end
