
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `admintb` (`username`, `password`) VALUES
('Mohith', 'Mohith@123');


CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kishan', 'kumar', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Revanth', 550, '2022-11-14', '10:00:00', 1, 0),
(4, 2, 'Kishan', 'kumar', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Deepak', 700, '2022-11-28', '10:00:00', 0, 1),
(4, 3, 'Kishan', 'kumar', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Amit', 1000, '2022-11-19', '03:00:00', 0, 1),
(11, 4, 'Sakura', 'uchiha', 'Female', 'Uchiha@gmail.com', '9768946252', 'ashok', 500, '2022-11-29', '20:00:00', 1, 1),
(4, 5, 'Kishan', 'kumar', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Deepak', 700, '2022-11-28', '12:00:00', 1, 1),
(4, 6, 'Kishan', 'kumar', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Revanth', 550, '2022-11-26', '15:00:00', 0, 1),
(2, 8, 'Alisha', 'Singh', 'Female', 'Alisha@gmail.com', '8976897689', 'Revanth', 550, '2022-11-21', '10:00:00', 1, 1),
(5, 9, 'Gautam', 'kumar', 'Male', 'gautam@gmail.com', '9070897653', 'Revanth', 550, '2022-11-19', '20:00:00', 1, 0),
(4, 10, 'Kishan', 'kumar', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Revanth', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'kumar', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Deepak', 700, '2022-11-27', '15:00:00', 1, 1),
(9, 12, 'Sri', 'honey', 'Male', 'honey@gmail.com', '8683619153', 'Kumar', 800, '2022-11-26', '12:00:00', 1, 1),
(9, 13, 'Sri', 'honey', 'Male', 'honey@gmail.com', '8683619153', 'Vinith', 450, '2022-11-26', '14:00:00', 1, 1);


CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anusha', 'anusha@gmail.com', '7896677554', 'Hey Admin'),
(' Vikish', 'vikish@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Prasad', 'Prasad@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jahnavi', 'Jahnavi@gmail.com', '7869869757', 'I love your service!');


CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('ashok', 'ashok123', 'ashok@gmail.com', 'General', 500),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('Deepak', 'Deepak123', 'Deepak@gmail.com', 'General', 700),
('Revanth', 'Revanth123', 'Revanth@gmail.com', 'Pediatrician', 550),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Prasad', 'Prasad123', 'Prasad@gmail.com', 'Neurologist', 1500),
('Vinith', 'Vinith123', 'Vinith@gmail.com', 'Pediatrician', 450);

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Alisha', 'signh', 'Female', 'Alisha@gmail.com', '8976897689', 'Alisha123', 'Alisha123'),
(3, 'Razor', 'khan', 'Male', 'Razor@gmail.com', '8976898463', 'Razor123', 'Razor123'),
(4, 'Kishan', 'kumar', 'Male', 'kishan0@gmail.com', '8838489464', 'kishan123', 'kishan123'),
(5, 'Gautam', 'nandha', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123', 'gautam123'),
(6, 'amit', 'Singh', 'Male', 'amit@gmail.com', '9059986865', 'amit123', 'amit123'),
(7, 'prem', 'kumar', 'Male', 'prem@gmail.com', '9128972454', 'Prem123', 'Prem123'),
(8, 'Nithin', 'Kumar', 'Male', 'Nithin@gmail.com', '9809879868', 'Nithin123', 'Nithin123'),
(9, 'sri', 'honey', 'Male', 'honey@gmail.com', '8683619153', 'honey123', 'honey123'),
(10, 'siva', 'sai', 'Male', 'siva@gmail.com', '9609362815', 'siva123', 'siva123'),
(11, 'Sakura', 'Uchiha', 'Female', 'uchiha@gmail.com', '9768946252', 'Uchiha123', 'Uchiha123');


CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Deepak', 4, 11, 'Kishan', 'kumar', '2022-11-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Revanth', 2, 8, 'prem', 'kumar', '2022-11-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Sampath', 9, 12, 'siva', 'sai', '2022-11-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Amiya Kumar', 9, 13, 'siva', 'sai', '2022-11-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content');

ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);



ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

