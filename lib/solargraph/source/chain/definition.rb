module Solargraph
  class Source
    class Chain
      class Definition < Link
        # @param location [Solargraph::Source::Location]
        def initialize location
          @location = location
        end

        def resolve_pins api_map, context, locals
          api_map.locate_pin(@location)
        end
      end
    end
  end
end
