#!/usr/bin/env bash

# For development testing reasons, we need to reassembly when we change the code
# sbt assembly

# PARAMETERS SECTION
####################


export SPARK_MASTER_URL="spark://192.168.200.10:7077"
#
export SPARK_DRIVER_HOST=192.168.200.1
# Where are all the necessary files? This path should be accessible by all spark nodes
# !!! Make sure all nodes have
export ROOT_DIR=/tmp/shared
# Training data input json file
export APP_INPUT_FILE_TRAINING="$ROOT_DIR/data/cuisines/train.json"
# Testing data inout json file
export APP_INPUT_FILE_TEST="$ROOT_DIR/data/cuisines/test.json"
# The output containing all the predictions made on the APP_INPUT_FILE_TEST file
export APP_OUTPUT_FILE_PREDICTIONS="$ROOT_DIR/predictions.json"
# Where to store partial data (like training data and meta-data)
export APP_MODEL_DIR="$ROOT_DIR/working_model"
# The location of the fat-jar for the application (run `sbt assembly` to create it)
export JAR_FILE="$ROOT_DIR/cuisine-predictions-fat.jar"
#
export SPARK_DRIVER_MEMORY=1g
#
export SPARK_EXECUTOR_MEMORY=1g


# # Uncomment the following to run locally from the scripts directory
# export SPARK_MASTER_URL="local[*]"
# #
# export SPARK_DRIVER_HOST=localhost
# #
# SCRIPTS_DIR="`dirname "$0"`"
# #
# SCRIPTS_DIR="`cd "$rundir"; pwd`"
# #
# export ROOT_DIR="SCRIPTS_DIR"/..
# #
# export APP_INPUT_FILE_TRAINING="$ROOT_DIR/data/cuisines/train.json"
# #
# export APP_INPUT_FILE_TEST="$ROOT_DIR/data/cuisines/test.json"
# #
# export APP_OUTPUT_FILE_PREDICTIONS="$ROOT_DIR/predictions.json"
# #
# export APP_MODEL_DIR="$ROOT_DIR/working_model"
# #
# export SPARK_DRIVER_MEMORY=4g
# #
# export SPARK_EXECUTOR_MEMORY=4g
