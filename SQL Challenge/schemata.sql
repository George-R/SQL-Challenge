CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title" varchar (20)   NOT NULL,
    "birth_date" TEXT   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "sex" varchar(2)   NOT NULL,
    "hire_date" TEXT   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ( "emp_no" )
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar (20)   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" varchar (20)   NOT NULL,
    "dept_name" varchar(50)   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(20)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY ("emp_no" )
);

CREATE TABLE "titles" (
    "title_id" varchar(20)   NOT NULL,
    "title" varchar(50)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY ("title_id")
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY ( "emp_no" )
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");
