#!/bin/bash

# Define the base directory where your project folders are located
BASE_DIR="./done"

# Check if the base directory exists
if [ ! -d "$BASE_DIR" ]; then
  echo "Error: Base directory '$BASE_DIR' does not exist."
  exit 1
fi

# Function to build a project
build_project() {
  local project_name="$1"
  local project_folder="$BASE_DIR/$project_name"
  
  if [ -d "$project_folder" ]; then
    if [ ! -e "$project_folder/Makefile" ]; then
      echo "Generating Makefile for $project_name..."
      ./generate_makefile.sh "$project_name"
    fi
    echo "Building $project_name..."
    (cd "$project_folder" && make all)
  else
    echo "Error: Project folder '$project_folder' does not exist."
  fi
}

# Function to clean a project
clean_project() {
  local project_name="$1"
  local project_folder="$BASE_DIR/$project_name"
  
  if [ -d "$project_folder" ]; then
    echo "Cleaning $project_name..."
    (cd "$project_folder" && make clean)
  else
    echo "Error: Project folder '$project_folder' does not exist."
  fi
}

# Function to clean the Makefile in a project
clean_makefile() {
  local project_name="$1"
  local project_folder="$BASE_DIR/$project_name"
  
  if [ -d "$project_folder" ]; then
    if [ -e "$project_folder/Makefile" ]; then
      echo "Cleaning Makefile for $project_name..."
      rm -f "$project_folder/Makefile"
    else
      echo "Error: Makefile for '$project_name' does not exist."
    fi
  else
    echo "Error: Project folder '$project_folder' does not exist."
  fi
}

# Parse command-line arguments
if [ "$#" -eq 0 ]; then
  echo "Usage: $0 [--clean | --make | --all] [--makefile | --clean-makefile] [project_name]"
  exit 1
fi

# Initialize options
GENERATE_MAKEFILE=false
CLEAN_MAKEFILE=false

# Parse options
while [ "$#" -gt 0 ]; do
  case "$1" in
    --clean)
      CLEAN=true
      ;;
    --make)
      MAKE=true
      ;;
    --all)
      ALL=true
      ;;
    --makefile)
      GENERATE_MAKEFILE=true
      ;;
    --clean-makefile)
      CLEAN_MAKEFILE=true
      ;;
    *)
      if [ -z "$PROJECT_NAME" ]; then
        PROJECT_NAME="$1"
      else
        echo "Usage: $0 [--clean | --make | --all] [--makefile | --clean-makefile] [project_name]"
        exit 1
      fi
      ;;
  esac
  shift
done

# Execute operations based on options
if [ "$GENERATE_MAKEFILE" = true ]; then
  if [ ! -z "$PROJECT_NAME" ]; then
    project_folder="$BASE_DIR/$PROJECT_NAME"
    if [ -d "$project_folder" ]; then
      if [ ! -e "$project_folder/Makefile" ]; then
        echo "Generating Makefile for $PROJECT_NAME..."
        sh ./generate_makefile.sh "$PROJECT_NAME"
      fi
    else
      echo "Error: Project folder '$project_folder' does not exist."
    fi
  else
    for project_dir in "$BASE_DIR"/*/; do
      project_name=$(basename "$project_dir")
      project_folder="$BASE_DIR/$project_name"
      if [ -d "$project_folder" ]; then
        if [ ! -e "$project_folder/Makefile" ]; then
          echo "Generating Makefile for $project_name..."
          sh ./generate_makefile.sh "$project_name"
        fi
      else
        echo "Error: Project folder '$project_folder' does not exist."
      fi
    done
  fi
fi

if [ "$CLEAN" = true ]; then
  if [ ! -z "$PROJECT_NAME" ]; then
    clean_project "$PROJECT_NAME"
  else
    for project_dir in "$BASE_DIR"/*/; do
      project_name=$(basename "$project_dir")
      clean_project "$project_name"
    done
  fi
fi

if [ "$MAKE" = true ]; then
  if [ ! -z "$PROJECT_NAME" ]; then
    build_project "$PROJECT_NAME"
  else
    for project_dir in "$BASE_DIR"/*/; do
      project_name=$(basename "$project_dir")
      build_project "$project_name"
    done
  fi
fi

if [ "$ALL" = true ]; then
  for project_dir in "$BASE_DIR"/*/; do
    project_name=$(basename "$project_dir")
    clean_project "$project_name"
    build_project "$project_name"
  done
fi

if [ "$CLEAN_MAKEFILE" = true ]; then
  if [ ! -z "$PROJECT_NAME" ]; then
    clean_makefile "$PROJECT_NAME"
  else
    for project_dir in "$BASE_DIR"/*/; do
      project_name=$(basename "$project_dir")
      clean_makefile "$project_name"
    done
  fi
fi
