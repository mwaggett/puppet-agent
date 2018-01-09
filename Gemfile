source ENV['GEM_SOURCE'] || "https://rubygems.org"

def vanagon_location_for(place)
  if place =~ /^(git[:@][^#]*)#(.*)/
    [{ :git => $1, :branch => $2, :require => false }]
  elsif place =~ /^file:\/\/(.*)/
    ['>= 0', { :path => File.expand_path($1), :require => false }]
  else
    [place, { :require => false }]
  end
end

gem 'vanagon', *vanagon_location_for(ENV['VANAGON_LOCATION'] || '~> 0.14.1')
gem 'packaging', :github => 'mwaggett/packaging', :branch => 'ticket/1.0.x/re-9948-dont-create-aix-repo-config'
gem 'rake'
gem 'json'
gem 'rubocop', "~> 0.34.2"
