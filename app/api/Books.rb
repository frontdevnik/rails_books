require './app/api/entities/book.rb'

module Books
    class API < Grape::API
        resources :books do
            get '/' do
                books = Book.all
                # present books, with: Entities::Book
                books
            end

            get ':id' do
                book = Book.find(params[:id])
                # {hello: params[:id]}
            end

            # params do
            # requires :book, type: Hash do 
            # requires :user, type :Hash do
            # requires :all, using: Entities::Book.documentation
            # end
            # end
            # params: Entities::Book
            # params do
            #     requires :all, using: Entities::Book.documentation
            # end
            desc 'Create a new book', {
                params Book.documentation
            }
            post '/' do
                {hello: 'world'}
                # book = Book.new(declared(params, include_missing: false)[:book]);
                # book.save
                # present books, with: Entities::Book
                # {hello: declared(params, include_missing: false)}
            end
        end
    end
end