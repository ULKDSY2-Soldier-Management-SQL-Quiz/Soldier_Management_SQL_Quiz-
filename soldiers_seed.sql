-- PostgreSQL sample seed.
-- B2: Replacement sample data created because the teacher's seed was unavailable.
-- These are 30 fictional soldiers, not the teacher's original dataset.
-- Run only after Parts A and B1, and before B3.
-- Do not run this separately if using sms_202510853.sql: it already includes it.

-- Add soldiers with IDs 1 to 30 and a mix of ranks, units and statuses.
INSERT INTO soldiers
(soldier_id, service_number, first_name, last_name, date_of_birth,
 enlistment_date, status, rank_id, unit_id)
VALUES
(1, 'SN-0001', 'Jean', 'Mugisha', '1988-02-12', '2011-06-01', 'Active', 4, 1),
(2, 'SN-0002', 'Eric', 'Niyonzima', '1989-03-12', '2012-06-01', 'Active', 1, 2),
(3, 'SN-0003', 'Patrick', 'Habimana', '1990-04-12', '2013-06-01', 'Active', 4, 3),
(4, 'SN-0004', 'Alice', 'Uwase', '1991-05-12', '2014-06-01', 'Active', 1, 4),
(5, 'SN-0005', 'David', 'Nsengimana', '1992-06-12', '2015-06-01', 'Retired', 4, 5),
(6, 'SN-0006', 'Grace', 'Mukamana', '1993-07-12', '2016-06-01', 'Active', 2, 6),
(7, 'SN-0007', 'Samuel', 'Nkurunziza', '1994-08-12', '2017-06-01', 'Active', 5, 1),
(8, 'SN-0008', 'Diane', 'Ishimwe', '1995-09-12', '2018-06-01', 'Active', 2, 2),
(9, 'SN-0009', 'Peter', 'Mugabo', '1996-10-12', '2019-06-01', 'On Leave', 5, 3),
(10, 'SN-0010', 'Emmanuel', 'Hakizimana', '1997-11-12', '2010-06-01', 'Active', 2, 4),
(11, 'SN-0011', 'Sarah', 'Umutoni', '1998-12-12', '2011-06-01', 'Active', 5, 5),
(12, 'SN-0012', 'Joseph', 'Mugisha', '1999-01-12', '2012-06-01', 'Active', 3, 6),
(13, 'SN-0013', 'Daniel', 'Bizimana', '2000-02-12', '2013-06-01', 'Active', 6, 1),
(14, 'SN-0014', 'Esther', 'Nyiraneza', '1987-03-12', '2014-06-01', 'On Leave', 3, 2),
(15, 'SN-0015', 'Paul', 'Ndayisaba', '1988-04-12', '2015-06-01', 'Active', 6, 3),
(16, 'SN-0016', 'Ruth', 'Ingabire', '1989-05-12', '2016-06-01', 'Active', 3, 4),
(17, 'SN-0017', 'James', 'Kamanzi', '1990-06-12', '2017-06-01', 'Active', 6, 5),
(18, 'SN-0018', 'Anita', 'Mukeshimana', '1991-07-12', '2018-06-01', 'On Leave', 4, 6),
(19, 'SN-0019', 'John', 'Habyarimana', '1992-08-12', '2019-06-01', 'Active', 1, 1),
(20, 'SN-0020', 'Marie', 'Uwamahoro', '1993-09-12', '2010-06-01', 'Active', 4, 2),
(21, 'SN-0021', 'Isaac', 'Rukundo', '1994-10-12', '2011-06-01', 'Active', 1, 3),
(22, 'SN-0022', 'Hope', 'Keza', '1995-11-12', '2012-06-01', 'Retired', 4, 4),
(23, 'SN-0023', 'Moses', 'Manzi', '1996-12-12', '2013-06-01', 'Active', 1, 5),
(24, 'SN-0024', 'Claudine', 'Mutoni', '1997-01-12', '2014-06-01', 'Active', 5, 6),
(25, 'SN-0025', 'Simon', 'Gatera', '1998-02-12', '2015-06-01', 'On Leave', 2, 1),
(26, 'SN-0026', 'Lydia', 'Niyigena', '1999-03-12', '2016-06-01', 'Active', 5, 2),
(27, 'SN-0027', 'Joshua', 'Munyaneza', '2000-04-12', '2017-06-01', 'Active', 2, 3),
(28, 'SN-0028', 'Olive', 'Uwera', '1987-05-12', '2018-06-01', 'Active', 5, 4),
(29, 'SN-0029', 'Andrew', 'Twagirayezu', '1988-06-12', '2019-06-01', 'Retired', 2, 5),
(30, 'SN-0030', 'Agnes', 'Nshimiyimana', '1989-07-12', '2010-06-01', 'Active', 6, 6);

-- Assign missions, leaving some soldiers without any assignment.
INSERT INTO soldier_missions (soldier_id, mission_id, mission_role) VALUES
(1, 1, 'Rifleman'),
(2, 2, 'Driver'),
(3, 3, 'Medic'),
(3, 4, 'Support'),
(4, 4, 'Radio Operator'),
(6, 1, 'Rifleman'),
(6, 2, 'Support'),
(7, 2, 'Driver'),
(8, 3, 'Medic'),
(9, 4, 'Radio Operator'),
(9, 5, 'Support'),
(11, 1, 'Rifleman'),
(12, 2, 'Driver'),
(12, 3, 'Support'),
(13, 3, 'Medic'),
(14, 4, 'Radio Operator'),
(16, 1, 'Rifleman'),
(17, 2, 'Driver'),
(18, 3, 'Medic'),
(18, 4, 'Support'),
(19, 4, 'Radio Operator'),
(21, 1, 'Rifleman'),
(21, 2, 'Support'),
(22, 2, 'Driver'),
(23, 3, 'Medic'),
(24, 4, 'Radio Operator'),
(24, 5, 'Support'),
(26, 1, 'Rifleman'),
(27, 2, 'Driver'),
(27, 3, 'Support'),
(28, 3, 'Medic'),
(29, 4, 'Radio Operator');
