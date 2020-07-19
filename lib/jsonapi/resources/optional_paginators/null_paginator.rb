# frozen_string_literal: true

module JSONAPI
  module Resources
    module OptionalPaginators
      class NullPaginator < JSONAPI::Paginator
        def initialize(params); end

        def apply(relation, _order_options)
          relation
        end

        def calculate_page_count(_record_count)
          1
        end
      end
    end
  end
end
