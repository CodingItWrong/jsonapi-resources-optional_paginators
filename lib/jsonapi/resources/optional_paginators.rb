require 'jsonapi/resources/optional_paginators/version'

require_relative 'optional_paginators/null_paginator'
require_relative 'optional_paginators/optional_paginator'
require_relative '../../optional_paged_paginator'

module JSONAPI
  module Resources
    module OptionalPaginators
      class Error < StandardError; end
      # Your code goes here...
    end
  end
end
