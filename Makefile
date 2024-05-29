# Define targets
generate-graphql-schema:
  @yarn payload generate:graphQLSchema

generate-types:
  @yarn generate:types

# Define a dependency for generating types on generating schema
generate-all : generate-graphql-schema generate-types

# Default target to run both commands
.PHONY : all
all: generate-all
