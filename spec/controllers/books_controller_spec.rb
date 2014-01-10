require "spec_helper"

describe BooksController do
  let!(:book) { create(:book) }

  # before do 
  #   Book.create(valid_book_params)
  # end

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

  describe "GET 'new'" do
    it 'is successful' do
      get :new
      expect(response).to be_successful
    end

    it 'assigns @book' do
      get :new
      expect(assigns(:book)).to be_an_instance_of Book
    end
  end

  describe "POST 'create'" do
    it 'assigns @book to a valid Book' do
      post :create, book: valid_book_params
      expect(assigns(:book)).to be_a Book
    end

    context 'when valid' do
      it 'redirects to a show template' do
        post :create, book: valid_book_params
        expect(response).to redirect_to book_path(assigns(:book).id)
      end
    end

    context 'when invalid' do
      it 'renders the :new template' do
        post :create, book: {description: 'blah'}
        expect(response).to render_template :new
      end
    end
  end

  describe "GET 'show'" do
    it 'is successful' do
      get :show, id: book.id
      expect(response).to be_successful
    end

    it 'assigns @book' do
      get :show, id: book.id
      expect(assigns(:book)).to be_an_instance_of Book
    end
  end

  describe "GET 'edit'" do
    it 'is successful' do
      get :edit, id: book.id
      expect(response).to be_successful
    end

    it 'assigns @book' do
      get :edit, id: book.id
      expect(assigns(:book)).to be_an_instance_of Book
    end
  end

  describe "PATCH 'update'" do
    it 'assigns @book' do
      patch :update, id: book.id, book: {title: "Harry Potter"}
      expect(assigns(:book)).to be_an_instance_of Book
    end

    context 'when valid' do
      it 'redirects' do
        patch :update, id: book.id, book: {title: "Harry Potter"}
        expect(response).to be_a_redirect
      end

      context 'and upvoting' do
        it 'redirects to a show page' do
          patch :update, id: book.id, book: {title: "Harry Potter"}
          expect(response).to redirect_to book_path(assigns(:book).id)
        end
      end
    end
  end
end