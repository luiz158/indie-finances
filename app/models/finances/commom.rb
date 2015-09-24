module Finances
  module Commom
    def sanitized_params(params)
      sanitized = params.clone
      sanitized[:dre].each do |k, v|

        # TODO: What if the user define a differente name for the anme field?
        unless k == "name"
          sanitized[:dre][k] = v.gsub(",", "").gsub(".","")
        end
      end

      sanitized[:dre]
    end
  end
end

