SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_inventory`
--

CREATE TABLE `blood_inventory` (
  `Blood_Group` varchar(20) NOT NULL,
  `Quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_inventory`
--

INSERT INTO `blood_inventory` (`Blood_Group`, `Quantity`) VALUES
('A+', 12),
('A-', 1),
('AB+', 2),
('AB-', 0),
('B+', 14),
('B-', 0),
('O+', 12),
('O-', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `ID` int(20) NOT NULL,
  `Name` varchar(70) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Age` int(20) NOT NULL,
  `Gender` varchar(70) NOT NULL,
  `Phone` varchar(70) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Blood_Group` varchar(70) NOT NULL,
  `Weight` int(70) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`ID`, `Name`, `Address`, `Age`, `Gender`, `Phone`, `Email`, `Blood_Group`, `Weight`, `Status`, `Date`) VALUES
(101, 'Siam', 'Mogbazar', 22, 'Male', '01676941118', 'shaj_fun@yahoo.com', 'B+', 54, 'Approve', '2018-03-15'),
(102, 'Abrar', 'Mirpur DOHS', 22, 'Male', '01711648963', 'abrarzshahriar@gmail.com', 'B+', 74, 'Approve', '2018-03-05'),
(103, 'Neon', 'New Market, Jessore', 22, 'Male', '01761415440', 'fihanararrono@gmai.com', 'B+', 70, 'Approve', '2018-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(20) NOT NULL,
  `Name` varchar(70) NOT NULL,
  `Password` varchar(70) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(70) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Gender` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Password`, `Designation`, `Address`, `Phone`, `Email`, `Gender`) VALUES
(101, 'Fahim', 'admin', 'Admin', 'Dhaka', '01521212948', 'fahim152@gmail.com', 'Male'),
(102, 'Arefin', 'arefin', 'Admin', 'Dhaka', '01764431859', 'rafin.ryan.07@outlook.com', 'Male'),
(1001, 'Rafin', 'path', 'Pathologist', '', '', '', ''),
(1002, 'Alif', 'alif', 'Pathologist', 'Dhaka', '01733223422', 'alif@gmail.com', 'Male'),
(2001, 'Neon', 'eva', 'Nurse', 'Jessore', '01835556360', 'fihanararrono@gmail.com', 'Male'),
(2002, 'Alice', 'eva', 'Nurse', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_inventory`
--
ALTER TABLE `blood_inventory`
  ADD PRIMARY KEY (`Blood_Group`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
