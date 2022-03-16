cmake_minimum_required(VERSION 2.8.3)
project(crx10_description)

find_package(catkin REQUIRED)

catkin_package()

#############
## Install ##
#############
set(DIRECTORIES
    launch
    mesh
    urdf
  )


#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_vis_lecture.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)
