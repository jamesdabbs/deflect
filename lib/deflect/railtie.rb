module Deflect
  class Railtie < ::Rails::Railtie
    config.after_initialize do
      Deflect.patch_plural_constant_lookup!
    end
  end
end
