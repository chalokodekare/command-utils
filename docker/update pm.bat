#!/bin/bash

set SOURCE_ROOT=C:\Users\Git\Projects\test

call cd %%SOURCE_ROOT%%
call cd test-service
call git pull
call gradle zip
call cd build/libs

call copy "process-model.zip" "C:/docker/test/processModel/."

cmd /k
