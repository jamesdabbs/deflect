require "deflect/version"

module Deflect
  def self.patch_plural_constant_lookup!
    ActiveSupport::Dependencies.define_singleton_method :load_missing_constant do |from_mod, const_name|
      begin
        super from_mod, const_name
      rescue NameError => e
        singular = const_name.to_s.singularize
        if const_name.to_s == singular
          raise
        else
          Rails.logger.debug "Did you mean `#{singular}`?"
          from_mod.const_get singular
        end
      end
    end
  end
end

require "deflect/railtie" if defined? Rails
