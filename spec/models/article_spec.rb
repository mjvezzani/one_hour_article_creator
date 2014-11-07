require 'rails_helper'

describe Article do
  it 'is valid with title and author' do
    article = Article.new(title: 'Of Mice And Men',
                          author: 'John Steinbeck')
    expect(article).to be_valid
  end
  it 'is invalid without title' do
    article = Article.new(author: 'John Steinbeck')
    expect(article).to be_invalid
  end
  it 'is invalid without author' do
    article = Article.new(title: 'Of Mice And Men')
    expect(article).to be_invalid
  end
  it 'is invalid with a duplicate title' do
    Article.create(title: 'Of Mice And Men',
                   author: 'John Steinbeck')
    article = Article.new(title: 'Of Mice And Men',
                          author: 'John Steinbeck')
    expect(article).to be_invalid
  end
  it 'is able to return a string of Title: by Author' do
    article = Article.new(title: 'Of Mice And Men',
                          author: 'John Steinbeck')
    expect(article.title_and_author).to eq 'Of Mice And Men: by John Steinbeck'
  end
end
