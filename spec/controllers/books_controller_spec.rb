require "spec_helper"

describe BooksController do
  let!(:book) { Book.create(title: 'Eat, Prey, Love') }

  describe "GET 'index'" do
    it 'is successful' do
      get :index
      expect(response).to be_successful

      # expect(response.code).to eq '200'
    end

    it 'assigns @books' do
      get :index
      # expect(assigns(:books)).to_not be_nil

      expect(assigns(:books).first).to be_an_instance_of Book
    end
  end

  describe "POST 'create'" do
  
    it 'redirects to a show template' do
      post :create, book: {title: 'Twilight'}
      expect(response).to redirect_to book_path(assigns(:book).id)
    end

    it 'assigns @book to a valid Book' do
      post :create, book: {title: 'Twilight'}
      expect(assigns(:book)).to be_a Book
    end

    context 'when invalid' do
      it 'renders the :new template' do
        post :create, book: {description: 'blah'}
        expect(response).to render_template :new
      end
    end
  end
end