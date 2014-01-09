require "spec_helper"

describe Book do
  let!(:book) { Book.create(title: 'Eat, Prey, Love') }

  describe 'validations' do
    it 'must have a title' do
      book = Book.create
      expect(book.errors[:title]).to include "can't be blank"
    end

    it 'has a unique title' do
      invalid_book = Book.new(title: 'Eat, Prey, Love')
      expect(invalid_book).to be_invalid

      # expect(invalid_book.valid?).to eq false
    end
  end

  describe "#upvote!" do
    it 'increments the rank field by 1' do
      count = book.rank
      book.upvote!
      expect(book.rank).to eq count + 1

      # expect { book.upvote }.to change(book, :rank).by(1)
    end
  end
end