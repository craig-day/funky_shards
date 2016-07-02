require 'paper_trail'

# Don't limit the number of Arturo feature changes we track.
PaperTrail.config.version_limit = nil
PaperTrail.config.track_associations = false

PaperTrail::Version.class_eval do
  self.table_name = 'versions'
end
