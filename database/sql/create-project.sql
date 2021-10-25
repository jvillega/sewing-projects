use sewing_projects;

create table if not exists projects (
  id int auto_increment primary key,
  title varchar(256),
  created date,
  updated date,
  cost float,
  hours float,
  category varchar(64)
);

create table if not exists instructions (
  project int,
  instruction_id int primary key,
  instruction text,
  step varchar(8),
  foreign key (project) references projects (id) on delete cascade
);

create table if not exists instruction_images (
  instruction int,
  type varchar(8),
  filename varchar(256),
  file_path varchar(256),
  foreign key (instruction) references instructions (instruction_id) on delete cascade
);

create table if not exists materials (
  project int,
  item int,
  quantity int,
  cost float,
  foreign key (project) references projects (id) on delete cascade
);

create table if not exists tools (
  project int,
  item int,
  foreign key (project) references projects (id) on delete cascade
);
