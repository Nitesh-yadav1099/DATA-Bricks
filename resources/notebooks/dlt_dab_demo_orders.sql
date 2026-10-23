-- Databricks notebook source
create or replace streaming table st_orders
as
select * from stream(samples.tpch.orders)

-- COMMAND ----------

create or replace materialized view agg_orders
as
select 
count(o_orderkey) as cnt_orders,
o_orderstatus
from LIVE.st_orders
group by o_orderstatus