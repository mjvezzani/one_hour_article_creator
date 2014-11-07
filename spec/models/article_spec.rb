require 'rails_helper'

describe Article do
  it 'is has a valid factory' do
    expect(build(:article)).to be_valid
  end
  it 'is invalid without title' do
    article = build(:article, title: nil)
    expect(article).to be_invalid
  end
  it 'is invalid without author' do
    article = build(:article, author: nil)
    expect(article).to be_invalid
  end
  it 'is invalid with a duplicate title' do
    create(:article)
    expect(build(:article)).to be_invalid
  end
  it 'is able to return a string of Title: by Author' do
    article = build(:article)
    expect(article.title_and_author).to eq 'Of Mice And Men: by John Steinbeck'
  end
end
