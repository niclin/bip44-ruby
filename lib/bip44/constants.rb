# frozen_string_literal: true

module Bip44
  CONSTANT = YAML.load(File.read("bip44.yml")).freeze
end
