module Bookshelf
  module Actions
    module Books
      class Create < Bookshelf::Action
        include Deps['persistence.rom']

        params do
          required(:book).hash do
            required(:title).filled(:string)
            required(:author).filled(:string)
          end
        end

        def handle(request, response)
          if request.params.valid?
            book = rom.relations[:books].changeset(:create,
                                                   request.params[:book]).commit

            render_created(book, response)
          else
            render_errors(request.params.errors)
          end
        end
      end
    end
  end
end
