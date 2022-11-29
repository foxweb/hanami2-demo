RSpec.describe 'GET /books/:id', type: %i[request database] do
  let(:books) { app['persistence.rom'].relations[:books] }

  context 'when a book matches the given id' do
    let!(:book_id) do
      books.insert(title: 'Test Driven Development', author: 'Kent Beck')
    end

    it 'renders the book' do
      get "/books/#{book_id}"

      expect(last_response).to be_successful
      expect(content_type).to eq(content_type_json)
      expect(response_body).to eq(
        id:     book_id,
        title:  'Test Driven Development',
        author: 'Kent Beck'
      )
    end
  end

  context 'when no book matches the given id' do
    it 'returns not found' do
      get "/books/#{books.max(:id).to_i + 1}"

      expect(last_response).to be_not_found
      expect(content_type).to eq(content_type_json)
      expect(response_body).to eq(error: 'not_found')
    end
  end
end
