module Finances
  module Commom
    def sanitized_params(params)
      sanitized = params.clone
      sanitized.each do |k, v|

        # TODO: What if the user defines a different name for the name field?
        # TODO: description is used by the entry model
        unless k == "name" || k == "description"
          sanitized[k] = v.gsub(",", "").gsub(".","")
        end
      end

      sanitized
    end
  end
end

