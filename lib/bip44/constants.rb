# frozen_string_literal: true

module Bip44
  SETTINGS_PATH = File.join(File.dirname(__FILE__), 'bip44.yml')
  CONSTANT = YAML.load(File.read(SETTINGS_PATH)).freeze
end
