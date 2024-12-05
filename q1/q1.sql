CREATE TABLE `employeedetails` (
  `empid` int(20) NOT NULL,
  `FullName` varchar(15) NOT NULL,
  `ManagerID` int(10) DEFAULT NULL,
  `DOJ` date NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `employeedetails` (`empid`, `FullName`, `ManagerID`, `DOJ`, `city`) VALUES
(111, 'harshvardhan', 1212, '2020-02-20', 'udaipur'),
(222, 'daksh', 2323, '2020-12-22', 'jodhpur'),
(333, 'aityaa', 2324, '2020-10-12', 'jaipur'),
(444, 'kushal', 2325, '2020-02-28', 'bikaner'),
(555, 'pushpendra', 2326, '2022-05-06', 'jodhpur');

CREATE TABLE `employeesalary` (
  `empid` int(20) NOT NULL,
  `project` varchar(15) NOT NULL,
  `salary` int(20) NOT NULL,
  `variable` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `employeesalary` (`empid`, `project`, `salary`, `variable`) VALUES
(111, 'MLSU', 50000, 20000),
(222, 'RTU', 20000, 15000),
(333, 'Anthony', 30000, 10000),
(555, 'Ramm', 50000, 10000);

ALTER TABLE `employeedetails`
  ADD PRIMARY KEY (`empid`);

ALTER TABLE `employeesalary`
  ADD PRIMARY KEY (`empid`);

ALTER TABLE `employeesalary`
  ADD CONSTRAINT `XYZ` FOREIGN KEY (`empid`) REFERENCES `employeedetails` (`empid`);
COMMIT;

INSERT INTO `employeesalary`(`empid`, `project`, `salary`, `variable`) 
VALUES ('444','JNVU',40000,20000)

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
