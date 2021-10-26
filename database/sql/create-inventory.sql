use sewing_projects;

create table if not exists sewing_materials (
  sewing_material_id int auto_increment primary key,
  title varchar(256),
  category varchar(128),
  subcategory varchar(128),
  length float,
  width float,
  area float,
  size float,
  quantity int,
  cost_per_unit float,
  cost_per_yard float
);

create table if not exists sewing_tools (
  sewing_tool_id int auto_increment primary key,
  title varchar(256),
  category varchar(128),
  subcategory varchar(128),
  size float,
  used_for text,
  cost float,
  quantity int,
  description text
);
