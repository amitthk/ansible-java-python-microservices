#!/bin/bash

# Define the base directory
BASE_DIR="ansible-data-lake"

# Define the directory structure
DIRECTORIES=(
  "$BASE_DIR"
  "$BASE_DIR/roles/common/tasks"
  "$BASE_DIR/roles/common/vars"
  "$BASE_DIR/roles/common/handlers"
  "$BASE_DIR/roles/common/templates"
  "$BASE_DIR/roles/jupyter/tasks"
  "$BASE_DIR/roles/jupyter/templates"
  "$BASE_DIR/roles/airflow/tasks"
  "$BASE_DIR/roles/airflow/templates"
  "$BASE_DIR/roles/superset/tasks"
  "$BASE_DIR/roles/superset/templates"
  "$BASE_DIR/roles/kafka/tasks"
  "$BASE_DIR/roles/kafka/templates"
  "$BASE_DIR/roles/spark/tasks"
  "$BASE_DIR/roles/spark/templates"
  "$BASE_DIR/group_vars"
)

# Define the files to create
FILES=(
  "$BASE_DIR/ansible.cfg"
  "$BASE_DIR/inventory"
  "$BASE_DIR/playbook.yml"
  "$BASE_DIR/roles/common/tasks/main.yml"
  "$BASE_DIR/roles/common/vars/main.yml"
  "$BASE_DIR/roles/common/handlers/main.yml"
  "$BASE_DIR/roles/jupyter/tasks/main.yml"
  "$BASE_DIR/roles/jupyter/templates/jupyterhub_config.py.j2"
  "$BASE_DIR/roles/airflow/tasks/main.yml"
  "$BASE_DIR/roles/airflow/templates/airflow.cfg.j2"
  "$BASE_DIR/roles/superset/tasks/main.yml"
  "$BASE_DIR/roles/superset/templates/superset_config.py.j2"
  "$BASE_DIR/roles/kafka/tasks/main.yml"
  "$BASE_DIR/roles/kafka/templates/server.properties.j2"
  "$BASE_DIR/roles/spark/tasks/main.yml"
  "$BASE_DIR/roles/spark/templates/spark-defaults.conf.j2"
  "$BASE_DIR/group_vars/all.yml"
)

# Create directories
echo "Creating directories..."
for dir in "${DIRECTORIES[@]}"; do
  mkdir -p "$dir"
done

# Create empty files
echo "Creating files..."
for file in "${FILES[@]}"; do
  touch "$file"
done

echo "Ansible Data Lake structure created successfully!"

