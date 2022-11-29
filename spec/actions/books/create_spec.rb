RSpec.describe Bookshelf::Actions::Books::Create, type: %i[database] do
  let(:params) do
    { book: { title:  'Practical Object-Oriented Design in Ruby',
              author: 'Sandi Metz' } }
  end

  it 'works' do
    response = subject.call(params)
    expect(response).to be_successful
  end
end
