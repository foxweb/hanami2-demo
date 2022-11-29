RSpec.describe Bookshelf::Actions::Home::Show do
  let(:params) { {} }

  it 'works' do
    response = subject.call(params)
    expect(response).to be_successful
  end
end
