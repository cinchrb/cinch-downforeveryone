Gem::Specification.new do |s|
  s.name = 'cinch-downforeveryone'
  s.version = '1.0.0'
  s.summary = 'Check if a website is up, using downforeveryoneorjustme.com'
  s.description = 'Check if a website is up, using downforeveryoneorjustme.com'
  s.authors = ['Dominik Honnef']
  s.email = ['dominikh@fork-bomb.org']
  s.homepage = 'http://rubydoc.info/github/cinchrb/cinch-downforeveryone'
  s.required_ruby_version = '>= 1.9.1'
  s.files = Dir['LICENSE', 'README.md', '{lib,examples}/**/*']
  s.add_dependency("cinch", "2.0.0.pre.1") # TODO use ~> as soon as cinch 2.0 is released
  s.add_dependency("mechanize")
end
