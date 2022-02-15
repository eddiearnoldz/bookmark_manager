require_relative '../lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      
      Bookmark.create(url: "http://www.makersacademy.com")
      Bookmark.create(url: "http://www.destroyallsoftware.com")
      Bookmark.create(url: "http://www.google.com")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create'
    it "adds a url to the database" do
      Bookmark.create(url: 'http://www.example.org')
      expect(Bookmark.all).to include 'http://www.example.org'
    end
end