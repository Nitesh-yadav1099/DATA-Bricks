# Databricks notebook source
# /// script
# [tool.databricks.environment]
# environment_version = "6"
# ///
#range
df = spark.range(10)

#This is a change
display(df)