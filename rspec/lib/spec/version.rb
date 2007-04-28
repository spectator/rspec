module Spec
  module VERSION
    unless defined? MAJOR
      MAJOR  = 0
      MINOR  = 9
      TINY   = 0
      RELEASE_CANDIDATE = "beta-3"
      
      # RANDOM_TOKEN: 0.539494898136005
      REV = "$LastChangedRevision$".match(/LastChangedRevision: (\d+)/)[1]

      STRING = [MAJOR, MINOR, TINY].join('.')
      TAG = "REL_#{[MAJOR, MINOR, TINY, RELEASE_CANDIDATE].compact.join('_')}".upcase.gsub(/\.|-/, '_')
      FULL_VERSION = "#{[MAJOR, MINOR, TINY, RELEASE_CANDIDATE].compact.join('.')} (r#{REV})"

      NAME   = "RSpec"
      URL    = "http://rspec.rubyforge.org/"  
    
      DESCRIPTION = "#{NAME}-#{FULL_VERSION} - BDD for Ruby\n#{URL}"
    end
  end
end