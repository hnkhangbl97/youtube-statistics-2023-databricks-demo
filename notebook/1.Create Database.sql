-- Databricks notebook source
DROP DATABASE IF EXISTS `global_youtube_statistics_2023_processed` CASCADE; 

-- COMMAND ----------

CREATE DATABASE IF NOT EXISTS `global_youtube_statistics_2023_processed`;

-- COMMAND ----------

DROP DATABASE IF EXISTS `global_youtube_statistics_2023_presentation` CASCADE;

-- COMMAND ----------

CREATE DATABASE IF NOT EXISTS `global_youtube_statistics_2023_presentation`;

-- COMMAND ----------

USE global_youtube_statistics_2023_presentation;
DROP TABLE IF EXISTS `youtuber_inUS_by_views`;
DROP TABLE IF EXISTS `youtuber_inVN_by_views`;
DROP TABLE IF EXISTS `youtuber_inUS_by_subs`;
DROP TABLE IF EXISTS `youtuber_inIN_by_subs`;
DROP TABLE IF EXISTS `country_by_views`;
DROP TABLE IF EXISTS `cat_by_views`;
DROP TABLE IF EXISTS `channel_distribution`;
DROP TABLE IF EXISTS `earning_ratio`;


CREATE TABLE `youtuber_inUS_by_views`;
CREATE TABLE `youtuber_inVN_by_views`;
CREATE TABLE `youtuber_inUS_by_subs`;
CREATE TABLE `youtuber_inIN_by_subs`;
CREATE TABLE `country_by_views`;
CREATE TABLE `cat_by_views`;
CREATE TABLE `channel_distribution`;
CREATE TABLE `earning_ratio`;
ALTER TABLE country_by_views SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5');

ALTER TABLE youtuber_inVN_by_views SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5');

ALTER TABLE youtuber_inUS_by_subs SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5');

ALTER TABLE youtuber_inIN_by_subs SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5');

ALTER TABLE country_by_views SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5');

ALTER TABLE cat_by_views SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5');

ALTER TABLE channel_distribution SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5');

ALTER TABLE earning_ratio SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5');

-- COMMAND ----------


