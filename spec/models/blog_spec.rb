require 'rails_helper'

RSpec.describe Blog, type: :model do
  it 'is not valid without a title' do
    blog = Blog.create(
      content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    )
    expect(blog.errors[:title]).to_not be_empty
  end

  it 'is not valid with a short title' do
    blog = Blog.create(
      title: 'Sho',
      content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    )
    expect(blog.errors[:title]).to_not be_empty
  end

  it 'is not valid without content' do
    blog = Blog.create(
      title: 'Title'
    )
    expect(blog.errors[:content]).to_not be_empty
  end

  it 'is not valid with short content' do
    blog = Blog.create(
      title: 'Title',
      content: 'Short'
    )
    expect(blog.errors[:content]).to_not be_empty
  end

  it 'is not valid with a non-unique title' do
    existing_blog = Blog.create(
      title: 'Existing Title',
      content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    )

    new_blog = Blog.create(
      title: 'Existing Title',
      content: 'Another blog content.'
    )

    expect(new_blog.errors[:title]).to_not be_empty
  end
end
