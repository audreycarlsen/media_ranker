require "spec_helper"

describe Book do
  let!(:book) { create(:book) }

  describe 'validations' do
    it 'has a title' do
      book = build(:book, title: nil)
      book.save
      expect(book.errors[:title]).to include "can't be blank"
    end

    it 'has a unique title' do
      invalid_book = Book.new(title: 'Eat, Prey, Love')
      expect(invalid_book).to be_invalid

      # expect(invalid_book.valid?).to eq false
    end

    it 'has an author' do
      book = build(:book, author: nil)
      book.save
      expect(book.errors[:author]).to include "can't be blank"
    end

    it 'has a description' do
      book = build(:book, description: nil)
      book.save
      expect(book.errors[:description]).to include "can't be blank"
    end

    it 'is valid' do
      expect(book).to be_valid
    end

    it 'has a default rank of 1' do
      expect(book.rank).to eq 1
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