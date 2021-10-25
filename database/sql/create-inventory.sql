-- use sewing_projects;

create table if not exists inventory (
  inventory_id int auto_increment primary key,
  title varchar(256),
  category varchar(128),
  subcategory varchar(128),
  length float,
  width float,
  quantity int,
  area float,
  cost_per_unit float,
  cost_per_yard float
);

create table if not exists tool (
  tool_id int auto_increment primary key,
  title varchar(256),
  category varchar(128),
  subcategory varchar(128),
  used_for text,
  cost float
);
