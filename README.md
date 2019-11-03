-------------------------------------------------------------------------------
# Notepack App
-------------------------------------------------------------------------------
_Description_ | Basically to organize documentation to make it easier to report
what you've done, the TESTING STORY. This will include:
* The status of the feature
* How you performed the work
* What made it more and less valuable; harder or easier; slower or faster

### Tasks for restructure
0. File Structure and Documentation
1. Pure functions (Functional Programming)
2. Automated Tests

### Features to implement
0. Rename this things. Suggestions?
  * ticketmaster
  * tick (because it's short)
1. When creating a new ticket, add the option to also open ("edit") it
   immediately.
2. Mode and possibly new config for adding to features/
  * Figure out the structure of a "feature" (directories and files)
  * Should just be like a list of tickets
  * Make creating a new ticket more abstract for above bullet
  * Temp solution now is ticket naming ("grouping") conventions
3. Possibly more global variables for the current testflow
4. A dashboard showing statuses of tickets and features

### Probably done
1. Have a way to easily get ticket names for adding new testflows
1. Edit mode, using vim sessions
  * should open the description.md and the newest testflow_mk.md
  * this may require changing the Global paths to use the ticket/ directory as
    well
  * making that change would also make getting the ticket names easier


-------------------------------------------------------------------------------
# Breakdown of Wanted Features
-------------------------------------------------------------------------------
***"Features" feature***
Description | _What does this feature entail?_
  Basically have a features directory that would store sets of its own 
  testflows, aka "notepacks".

Changes | _What changes do you need to make to existing code?_
  Instead of commands to create a new "ticket", maybe add another parameter for
  a "mode", like "ticket" vs "feature", since they can really just be treated
  the same except testflows generally would have another layer of abstraction.
  "--new" == "--new-notepack"

  The main difference in the testflows is the config files, which should be
  configured to the company's testflow documentation format, but also include
  the Testing Story section, mostly for myself and for presentation.
  
  Examples:
  >> ./notepack --new ticket/new_ticket
  >> ./notepack --edit ticket/existing_ticket
  >> ./notepack --new feature/new_feature
  >> ./notepack --edit feature/existing_feature
  >> ./notepack --new feature/subfeature/new_feature
  >> ./notepack --edit feature/subfeature/existing_feature
  >> ./notepack --new-testflow ticket/existing_ticket
  >> ./notepack --new-testflow feature/existing_feature

  Editing the "feature" may also require a more advanced vim setup. But for
  now, being able to use the same --edit-ticket command on a subfeature will be
  enough.


