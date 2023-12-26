--create database db_hrms

use db_hrms

create table tbl_attendence (
	id int primary key,
	emp_id char(9) unique,
	in_time datetime2,
	out_time datetime2,
	duration_in_office datetime2,
	attendence char(1)
)

create table tbl_project_associated (
	id int primary key,
	project_name varchar(50) not null,
	team_size varchar(2),
	project_domain varchar(30) not null,
	project_start_date date,
	proj_deadline date,
	duration date,
	pm_emp_id char(9),
	project_manager	 varchar(30) null,
	quality_analyst	 varchar(50) null,
	frontend_developer varchar(200) null,
	backend_developer varchar(200) null,
	b_d_e varchar(50) null
)

create table tbl_roles_and_permission 
(
	role_id int primary key,
	username varchar(30),
	password varchar(64),
	emp_id integer,
	role_name varchar(30),
	role_discription varchar(30),
	role_permission varchar(30),
)

create table tbl_emp_sal 
(
	id int,
	emp_id char(9) unique not null,
	total_salary decimal(10,2),
	base_salary decimal(10,2),
	bonus decimal(10,2),
	deduction decimal(10,2),
	travel_allowance decimal(10,2),
	medical_allowance decimal(10,2),
	overtime_bonus decimal(10,2),
	shift_allowance decimal(10,2),
	primary key (id) 
)

create table tbl_company_policies 
(
	title varchar(50) not null,
	description varchar(300)
)

create table tbl_leaves 
(
	id int,
	emp_id char(9),
	available_leaves int,
	earned_leave int,
	casual_leave int,
	primary key (id)
)
alter table tbl_leaves add short_leave int, maternity_leave int;

create table tbl_designation 
(
	id int,
	designation varchar(20),
	primary key (id)
)

create table tbl_account_details(
	id int primary key not null identity,
	emp_id char(9) unique not null,
	account_holder_name varchar(30) not null,
	account_number varchar(20) not null,
	bank_name varchar(35) not null,
	account_type varchar(25),
	ifsc_code varchar(25) not null,
	routing_number varchar(25),
	swift_code varchar(25),
)

--create table tbl_feedback (
--	id int primary key not null, 
--	emp_id char(9) not null,
--	message varchar(300) not null,
--)

create table tbl_emp_performance(
	emp_id char (9) not null,
	last_salary_drawn decimal,
	current_salary decimal,
	percent_hike decimal,
	feedback varchar(250)
)

create table tbl_department(
	id int primary key not null,
	department varchar(20) unique,
)
create table tbl_emp_details (
	emp_id char(9) primary key,
	first_name varchar,
	last_name varchar,
	contact_no varchar(25),
	designation int,
	department int,
	father_name varchar(50),
	mother_name varchar(50),
	gender bit,
	permanent_add varchar(250),
	edu_qual varchar(30),
	emergency_cont_no varchar(25),
	personal_email varchar(50),
	official_email varchar(50),
	d_o_b date,
	date_of_joining date,
	blood_group varchar(3),
	date_of_marriage date,
	skills varchar(30),
	spouse varchar(30),
	experience varchar(2),
	aadhar_no varchar(12),
	pan_no varchar(10),
	emp_status bit,
	created_by varchar(25),
	created_time datetime,
	edited_by varchar(25),
	edited_time integer,
)
create database HumanResourceManagementSystem
use HumanResourceManagementSystem

create table Roles(
					RoleID int primary key, 
					RoleName varchar(30) unique, 
					RolePermissions varchar(150), 
					RoleDescription varchar(250)
					);

create table EmployeeLeave(
							EmployeeID char(9),
							present char(1)
							);
create table AttendanceType(
							AttendanceID int primary key,
							Leave int,
							LeaveWithoutPay char(1)
							)

create table EmployeeStatus(
					EmployeeID char(9),
					AttandanceType varchar(20)
					)

create table LeaveType(
					LeaveID int primary key,
					LeaveType varchar(20),
					present,
					EarnedLeave ,
					CasualLeave,
					ShortLeave,
					HalfDay,
					CompensatoryLeave,
					MedicalLeave,
					MaternityLeave,
					)


create table tbl_roles_and_permission 
(
	role_id int,
	user_name varchar(30),
	password varchar(64),
	emp_id integer,
	role_name varchar(30),
	role_discription varchar(30),
	role_permission varchar(30),
	primary key (role_id)
)

create table tbl_emp_sal 
(
	id int,
	emp_id char(9) unique not null,
	total_salary decimal(10,2),
	base_salary decimal(10,2),
	bonus decimal(10,2),
	deduction decimal(10,2),
	travel_allowance decimal(10,2),
	medical_allowance decimal(10,2),
	overtime_bonus decimal(10,2),
	shift_allowance decimal(10,2),
	primary key (id) 
)


create table tbl_company_policies 
(
	title varchar(50) not null,
	description varchar(300)
)

create table tbl_leaves 
(
	id int,
	emp_id char(9),
	available_leaves int,
	earned_leave int,
	annual_leave int,
	casual_leave int,
	primary key (id)
)


create table Designation 
(
	DesgID int primary key,
	Designation varchar(20) not null,
)


