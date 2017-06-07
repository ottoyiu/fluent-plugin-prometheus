Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-prometheus-k8s"
  spec.version       = "0.3.0"
  spec.authors       = ["Masahiro Sano"]
  spec.email         = ["sabottenda@gmail.com"]
  spec.summary       = %q{A fluent plugin that collects metrics and exposes for Prometheus.}
  spec.description   = %q{A fluent plugin that collects metrics and exposes for Prometheus.}
  spec.homepage      = "https://github.com/ottoyiu/fluent-plugin-prometheus"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd", ">= 0.12.0", "< 2"
  spec.add_dependency "prometheus-client"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "test-unit"
end
