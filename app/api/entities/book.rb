module Entities
    class Book < Grape::Entity
        format_with(:iso_timestamp) { |dt| dt.iso8601 }

        expose :title, documentation: { type: "String", desc: "Book title." }
        expose :decription, documentation: { type: "String", desc: "Book decription." }
        expose :page_count, documentation: { type: "Integer", desc: "Book page count." }

        with_options(format_with: :iso_timestamp) do
            expose :created_at
            expose :updated_at
        end
    end
end