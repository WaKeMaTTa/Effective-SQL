CREATE TABLE OrgChart (
  employeeID INTEGER NOT NULL UNIQUE,
  manager_employeeID INTEGER
    REFERENCES OrgChart (employeeID)
    ON DELETE SET NULL
    ON UPDATE RESTRICT --CASCADE not supported
);

DROP TABLE OrgChart;