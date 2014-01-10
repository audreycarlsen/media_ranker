class Book < ActiveRecord::Base
  attr_accessor :upvote
  validates :title, presence: :true, uniqueness: :true
  validates :author, presence: :true
  validates :description, presence: :true
  before_save :upvote!, if: :upvote

  def upvote!
    self.upvote = nil
    self.rank += 1
  end
end