## 0.0.10 (September 21, 2016)

Features:

  - Added methods note_equal?, note_equivalent?, name, and transform_to_equivalent to notation/note.rb.
  - Started formatting travis.yaml for CI.
  - Updated gem description and info in music_composition.gemspec


## 0.0.9 (September 10, 2016)

Features:

  - Added utils directory to extract common functionalities from core code
  - Added utils/array_helper.rb
  - Added Fuubar gem to development dependencies 
  - Added rubocop-rspec to development dependencies

Clean-up:

  - Simplified test logic with use of rubocop-rspec
  - Fixed sevral rubocop & rubocop-rspec offences

## 0.0.8 (August 24, 2016)

Features:

  - Added notation/measure.rb

Fixes:

  - Fixed define spelling error in notation/duration.rb

## 0.0.7 (July 24, 2016)

Features:

  - Added notation/duration.rb

## 0.0.6 (July 23, 2016)

Features:

  - Added theory/scales.rb
  - Added spec/music_composition/defines/note_defines.rb
  - Added spec/music_composition/helpers/note_compare.rb

## 0.0.5 (July 19, 2016)

Features:

  - Added notation/pitch.rb
  - Added spec/music_composition/defines/pitch_defines.rb

## 0.0.4 (July 17, 2016)

Fixes:

  - Renamed module to better reflect use

## 0.0.3 (July 17, 2016)

Features:

  - Added theory/interval.rb
  - Added TODO file

## 0.0.2 (July 4, 2016)

Features:

  - Added notation/note.rb
  - Added tests for notation/note.rb
  - Added rubocop, rdoc, and simplecov integration
  - Added ruby-enum as a run dependency 
  
## 0.0.1 (June 23, 2016)

Features:

  - Initial commit
