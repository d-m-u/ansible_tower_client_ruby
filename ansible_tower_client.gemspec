# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ansible_tower_client/version'

Gem::Specification.new do |spec|
  spec.name          = "ansible_tower_client"
  spec.version       = AnsibleTowerClient::VERSION
  spec.authors       = ["Brandon Dunne", "Drew Bomhof"]
  spec.email         = ["bdunne@redhat.com", "dbomhof@redhat.com"]

  spec.summary       = %q{Ansible Tower REST API wrapper gem}
  spec.description   = %q{Ansible Tower REST API wrapper gem}
  spec.homepage      = "https://github.com/ManageIQ/ansible_tower_client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # HACK: Rails 5 dropped support for Ruby < 2.2.2
  active_support_version = "< 5" if Gem::Version.new(RUBY_VERSION) <= Gem::Version.new("2.2.2")
  spec.add_runtime_dependency "activesupport", active_support_version

  spec.add_runtime_dependency "faraday"
  spec.add_runtime_dependency "faraday_middleware"
  spec.add_runtime_dependency "more_core_extensions", "~> 3.0"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "factory_girl"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
