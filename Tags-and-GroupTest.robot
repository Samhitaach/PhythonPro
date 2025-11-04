
*** Test Cases ***
TC1
    [Tags]  sanity
     log to console      Home page
TC2
     [Tags]  regression
     log to console      About us
TC3
     [Tags]  sanity
     log to console      Contact Us
TC4
     [Tags]  smoke
    log to console      Profile

Handling keywords with same names

Keyword scopes
When only a keyword name is used and there are several keywords with that name, Robot Framework attempts to determine which keyword has the highest priority based on its scope. The keyword's scope is determined on the basis of how the keyword in question is created:

Created as a user keyword in the currently executed suite file. These keywords have the highest priority and they are always used, even if there are other keywords with the same name elsewhere.
Created in a resource file and imported either directly or indirectly from another resource file. This is the second-highest priority.
Created in an external test library. These keywords are used, if there are no user keywords with the same name. However, if there is a keyword with the same name in the standard library, a warning is displayed.
Created in a standard library. These keywords have the lowest priority.

#   want ro run only sanity
#   robot --include=sanity test_cases/GroupTest.robot
#   robot -i sanity -i smoke test_cases/GroupTest.robot
#   robot --exclude=sanity test_cases/GroupTest.robot
#   robot -i sanity -e smoke test_cases/GroupTest.robot

Group 
open browser to login
open broswer
mazimize browser window
title should be
end

group
input username 
input username 
cick button
