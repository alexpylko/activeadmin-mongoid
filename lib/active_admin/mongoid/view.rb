module ActiveAdmin
  module Views

    class TableFor < Arbre::HTML::Table

      def build(collection, options = {})
        @sortable = options.delete(:sortable)
        @resource_class = options.delete(:i18n)
        @collection = collection.to_a
        @columns = []
        build_table
        super(options)
      end

    end

  end
end
