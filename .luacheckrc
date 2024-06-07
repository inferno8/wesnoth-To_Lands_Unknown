max_line_length=140
-- show the warning/error codes as well
codes=true
-- skip showing files with no issues
quiet=1
-- skip showing undefined variable usage
-- there are thousands of warnings here because luacheck is unaware of Wesnoth's
-- lua environment and has no way to check which have been loaded
global=false
-- skip showing unused variables
unused=false
-- skip showing warnings about shadowing upvalues
ignore={"431"}
