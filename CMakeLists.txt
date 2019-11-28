cmake_minimum_required(VERSION 3.15)

project(demonstration)

find_package(Threads REQUIRED)

add_executable(${PROJECT_NAME} main.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE Threads::Threads)
install(CODE
        "file(GET_RUNTIME_DEPENDENCIES
              RESOLVED_DEPENDENCIES_VAR resolved_deps
              UNRESOLVED_DEPENDENCIES_VAR unresolved_deps
              EXECUTABLES ${PROJECT_NAME})
        MESSAGE(\"Resolved deps for ${PROJECT_NAME}: \${resolved_deps}\")")

