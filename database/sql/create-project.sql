use sewing_projects;

create table if not exists projects (
  project_id int auto_increment primary key,
  title varchar(256),
  date_created date,
  date_updated date,
  cost float,
  time_required float,
  category varchar(64)
);

create table if not exists project_images (
  project int,
  filetype varchar(8),
  filename varchar(256),
  file_path varchar(256),
  foreign key (project) references projects (project_id) on delete cascade
);

create table if not exists instructions (
  project int,
  instruction_id int primary key,
  instruction text,
  step varchar(8),
  foreign key (project) references projects (project_id) on delete cascade
);

create table if not exists instruction_images (
  instruction int,
  filetype varchar(8),
  filename varchar(256),
  file_path varchar(256),
  foreign key (instruction) references instructions (instruction_id) ON DELETE CASCADE
);

create table if not exists project_materials (
  project int,
  item int,
  quantity int,
  cost float,
  FOREIGN KEY (item) REFERENCES sewing_materials (sewing_material_id) ON DELETE CASCADE,
  FOREIGN KEY (project) REFERENCES projects (project_id) ON DELETE CASCADE
);

create table if not exists project_tools (
  project int,
  item int,
  foreign key (item) references sewing_tools (sewing_tool_id) on delete cascade,
  foreign key (project) references projects (project_id) on delete cascade
);
