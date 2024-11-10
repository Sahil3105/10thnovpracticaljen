-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 05:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stufeedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555558, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourse`
--

CREATE TABLE `tblcourse` (
  `ID` int(10) NOT NULL,
  `CourseName` varchar(250) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcourse`
--

INSERT INTO `tblcourse` (`ID`, `CourseName`, `Description`, `CreationDate`) VALUES
(1, 'Master of Computer Applications(MCA)', 'Master of Computer Applications (MCA) is a three year post graduate course that deals in various aspects of computer applications.', '2023-11-01 06:39:01'),
(2, 'Bachelor of Computer Application(BCA)', 'A Bachelor of Computer Application (BCA) Degree is a professional degree that institutes and universities offer. The course is designed to provide students with the knowledge and skills required to succeed in computer science and information technology.', '2023-11-01 06:42:37'),
(3, 'Engineering', 'The courses are of a duration of 4-years and are spread across 8 semesters.', '2023-11-01 06:43:58'),
(4, 'Bachelor of Science', 'The Bachelor of Science course is a 3-year undergraduate program with different eligibility requirements.', '2023-11-01 06:45:07'),
(5, 'BA', 'Bachelor of Arts', '2023-12-01 16:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblfee`
--

CREATE TABLE `tblfee` (
  `ID` int(5) NOT NULL,
  `InvoiceNumber` varchar(200) DEFAULT NULL,
  `StudentID` varchar(250) DEFAULT NULL,
  `FeeStatus` varchar(50) DEFAULT NULL,
  `TotalAmount` decimal(10,0) DEFAULT NULL,
  `AmountPay` decimal(10,0) DEFAULT NULL,
  `PaymentType` varchar(100) DEFAULT NULL,
  `TransactionNumber` varchar(255) DEFAULT NULL,
  `InvoiceDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblfee`
--

INSERT INTO `tblfee` (`ID`, `InvoiceNumber`, `StudentID`, `FeeStatus`, `TotalAmount`, `AmountPay`, `PaymentType`, `TransactionNumber`, `InvoiceDate`) VALUES
(1, '775033324', 'SSTU123', 'Partial Payment', 165000, 50000, 'Cash', '', '2023-11-03 06:03:42'),
(2, '329470727', 'SSTU123', 'Partial Payment', 165000, 50000, 'Credit Card', '5623', '2023-11-03 06:28:43'),
(3, '463090220', 'SSTU123', 'Partial Payment', 165000, 65000, 'Credit Card', '456125', '2023-11-03 06:30:21'),
(4, '578012322', 'SSTU123', 'Full Payment', 165000, 0, 'Cash', '', '2023-11-03 06:31:04'),
(5, '608278418', 'SSU124', 'Partial Payment', 200000, 100000, 'Credit Card', '4578', '2023-11-03 07:05:16'),
(6, '988260876', 'Test123', 'Partial Payment', 170000, 65000, 'Cash', '', '2023-11-20 06:50:11'),
(7, '232291458', 'Test123', 'Full Payment', 170000, 65000, 'Credit Card', '4544', '2023-11-20 06:50:27'),
(8, '609162032', 'KK123', 'Partial Payment', 151000, 51000, 'UPI', 'GHFHG43534543', '2023-11-28 17:20:32'),
(9, '956480220', 'KK123', 'Partial Payment', 151000, 50000, 'Credit Card', '3465456gfhfg5635', '2023-11-28 17:21:01'),
(10, '243580035', '10806121', 'Partial Payment', 1373612, 523012, 'Cash', '', '2023-12-01 16:57:21'),
(11, '959298251', '10806121', 'Partial Payment', 1373612, 20000, 'Cash', '', '2023-12-01 16:57:37'),
(12, '644984994', '5236541', 'Partial Payment', 336698, 74563, 'UPI', '345345345435', '2023-12-02 04:35:13'),
(13, '745002171', '5236541', 'Partial Payment', 336698, 54756, 'Credit Card', '46346456456546', '2023-12-02 04:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<font color=\"#7b8898\" size=\"3\">College Fee Management system about section</font>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'infodata@gmail.com', 7896541236, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(1, 'College will re-open', 'Consult your HOD.', '2022-01-20 09:11:57'),
(2, 'Test Notice', 'This is for Testing\r\n', '2022-02-02 19:04:10'),
(4, 'Fee Related', 'Kindly submit your fees before due date', '2023-12-02 04:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentCourse` int(5) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `AdmissionFee` decimal(10,0) DEFAULT NULL,
  `SemesterFee` decimal(10,0) DEFAULT NULL,
  `LibraryFee` decimal(10,0) DEFAULT NULL,
  `HosteFee` decimal(10,0) DEFAULT NULL,
  `MiscellaneousFee` decimal(10,0) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp(),
  `FeeStatus` varchar(250) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentCourse`, `Gender`, `DOB`, `StuID`, `AdmissionFee`, `SemesterFee`, `LibraryFee`, `HosteFee`, `MiscellaneousFee`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`, `FeeStatus`, `UpdationDate`) VALUES
(1, 'Gunjan Dubey', 'gunjan@gmail.com', 1, 'Female', '2001-05-01', 'SSTU123', 80000, 40000, 12000, 21000, 12000, 'K-0908 Gauri Apartment, New Delhi', 'gunjan123', '202cb962ac59075b964b07152d234b70', 'bcc5667786d6bd1b25e7c4d8a42e85501698852000.jpg', '2023-11-01 15:20:00', 'Full Payment', '2023-11-03 06:31:04'),
(2, 'Manisha Chandra', 'manisha@gmail.com', 2, 'Female', '1996-06-02', 'SSU124', 80000, 50000, 15000, 50000, 5000, 'J-908, Biharipuram Ghaziabad', 'manisha123', '202cb962ac59075b964b07152d234b70', '42d38fdff39b0a3a1fa757ed574b2f681698902025.jpg', '2023-11-02 05:13:45', 'Partial Payment', '2023-11-03 07:05:16'),
(3, 'Kumkum Mishra', 'kumkum@gmail.com', 2, 'Female', '2003-05-06', 'KK123', 80000, 40000, 5000, 21000, 5000, 'hrftyrtyrtyrtyrtyrytrfyt', 'kumkum123', '202cb962ac59075b964b07152d234b70', 'f50c73d00fda2bd6d78ce4082e70f0081700458318.png', '2023-11-20 05:31:58', 'Partial Payment', '2023-11-28 17:20:32'),
(4, 'Test Sample', 'test@gmail.com', 3, 'Female', '1998-05-06', 'Test123', 80000, 50000, 12000, 21000, 7000, 'J-900, gyuyu', 'test123', '202cb962ac59075b964b07152d234b70', 'f50c73d00fda2bd6d78ce4082e70f0081700462854.png', '2023-11-20 06:47:34', 'Full Payment', '2023-11-20 06:50:27'),
(5, 'Joh Doe', 'johndoe12@t.com', 3, 'Male', '2005-04-02', '10806121', 1245631, 51203, 1256, 74522, 1000, 'A 123 XYZ New Delhi 110001', 'johndoe12', 'f925916e2754e5e03f75dd58a5733251', '23097b7360137ebc119862ce8080b1a41701449660.png', '2023-12-01 16:54:20', 'Partial Payment', '2023-12-01 16:57:21'),
(7, 'Rahul', 'rahul12@gmail.com', 4, 'Male', '2005-02-11', '5236541', 125633, 123121, 1256, 74123, 12565, 'Ho no12 XYZ Aprtment New delhi 110001', 'rahul12', 'f925916e2754e5e03f75dd58a5733251', 'e9841dd659b6d7b628f99926d60c8a561701491656.png', '2023-12-02 04:34:16', 'Partial Payment', '2023-12-02 04:35:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcourse`
--
ALTER TABLE `tblcourse`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfee`
--
ALTER TABLE `tblfee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcourse`
--
ALTER TABLE `tblcourse`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblfee`
--
ALTER TABLE `tblfee`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
