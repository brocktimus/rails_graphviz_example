rails_graphviz_example
======================

Example of the bug experienced with ActiveSupport::Concern and Ruby-Graphviz.
I noticed a problem with these and created this application to test it all out.

With no ruby-graphviz all Concerns and models work as intended.

With ruby-graphviz non class specific Concerns (ie app/models/concerns/*rb) are not included properly.
To show this just:
 * comment out the key line in config/initializers/preload_concerns.rb,
 * Open Rails console
 * Do anything with the Post model

The solution is to preload all ActiveSupport::Concerns similar to if Single Table Inheritance or Delayed::Job are being used.

I dont know if this is a bug in ActiveSupport::Concern or Ruby-Graphviz or where to start looking for it.
