-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 19-11-2023 a las 06:00:39
-- Versión del servidor: 10.10.2-MariaDB
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `companydb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  PRIMARY KEY (`dept_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `departments`
--

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES
('D001', 'Ventas'),
('D002', 'Marketing'),
('D003', 'Producción'),
('D004', 'Finanzas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dept_emp`
--

DROP TABLE IF EXISTS `dept_emp`;
CREATE TABLE IF NOT EXISTS `dept_emp` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`,`from_date`),
  KEY `dept_no` (`dept_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `dept_emp`
--

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(101, 'D001', '2015-05-20', '9999-12-31'),
(102, 'D002', '2010-11-10', '2018-05-15'),
(103, 'D003', '2018-02-28', '9999-12-31'),
(104, 'D004', '2007-09-15', '2015-08-20'),
(105, 'D001', '2014-07-10', '2021-02-28'),
(106, 'D002', '2016-03-25', '2022-01-15'),
(107, 'D003', '2019-12-01', '9999-12-31'),
(108, 'D004', '2009-04-12', '2017-11-30'),
(109, 'D001', '2017-08-08', '9999-12-31'),
(110, 'D002', '2013-06-14', '2020-03-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dept_manager`
--

DROP TABLE IF EXISTS `dept_manager`;
CREATE TABLE IF NOT EXISTS `dept_manager` (
  `emp_no` int(11) NOT NULL,
  `dept_no` char(4) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`dept_no`,`from_date`),
  KEY `dept_no` (`dept_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `dept_manager`
--

INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES
(101, 'D001', '2015-05-20', '9999-12-31'),
(102, 'D002', '2010-11-10', '2018-05-15'),
(103, 'D003', '2018-02-28', '9999-12-31'),
(104, 'D004', '2007-09-15', '2015-08-20'),
(105, 'D001', '2014-07-10', '2021-02-28'),
(106, 'D002', '2016-03-25', '2022-01-15'),
(107, 'D003', '2019-12-01', '9999-12-31'),
(108, 'D004', '2009-04-12', '2017-11-30'),
(109, 'D001', '2017-08-08', '9999-12-31'),
(110, 'D002', '2013-06-14', '2020-03-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_no` int(11) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `employees`
--

INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES
(101, '1990-01-15', 'John', 'Doe', 'M', '2015-05-20'),
(102, '1985-03-22', 'Jane', 'Smith', 'F', '2010-11-10'),
(103, '1995-08-12', 'Bob', 'Johnson', 'M', '2018-02-28'),
(104, '1980-06-05', 'Alice', 'Williams', 'F', '2007-09-15'),
(105, '1992-11-30', 'Michael', 'Brown', 'M', '2014-07-10'),
(106, '1988-04-18', 'Emily', 'Jones', 'F', '2016-03-25'),
(107, '1998-09-03', 'David', 'Taylor', 'M', '2019-12-01'),
(108, '1982-07-20', 'Sophia', 'Anderson', 'F', '2009-04-12'),
(109, '1993-12-10', 'Christopher', 'Miller', 'M', '2017-08-08'),
(110, '1987-02-28', 'Olivia', 'Moore', 'F', '2013-06-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salaries`
--

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE IF NOT EXISTS `salaries` (
  `emp_no` int(11) NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`from_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `salaries`
--

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES
(101, '60000.00', '2015-05-20', '9999-12-31'),
(102, '55000.00', '2010-11-10', '2018-05-15'),
(103, '70000.00', '2018-02-28', '9999-12-31'),
(104, '65000.00', '2007-09-15', '2015-08-20'),
(105, '75000.00', '2014-07-10', '2021-02-28'),
(106, '60000.00', '2016-03-25', '2022-01-15'),
(107, '80000.00', '2019-12-01', '9999-12-31'),
(108, '70000.00', '2009-04-12', '2017-11-30'),
(109, '72000.00', '2017-08-08', '9999-12-31'),
(110, '68000.00', '2013-06-14', '2020-03-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titles`
--

DROP TABLE IF EXISTS `titles`;
CREATE TABLE IF NOT EXISTS `titles` (
  `emp_no` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`emp_no`,`title`,`from_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `titles`
--

INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES
(101, 'Manager', '2015-05-20', '9999-12-31'),
(102, 'Senior Analyst', '2010-11-10', '2018-05-15'),
(103, 'Engineer', '2018-02-28', '9999-12-31'),
(104, 'Analyst', '2007-09-15', '2015-08-20'),
(105, 'Manager', '2014-07-10', '2021-02-28'),
(106, 'Engineer', '2016-03-25', '2022-01-15'),
(107, 'Senior Manager', '2019-12-01', '9999-12-31'),
(108, 'Analyst', '2009-04-12', '2017-11-30'),
(109, 'Manager', '2017-08-08', '9999-12-31'),
(110, 'Senior Analyst', '2013-06-14', '2020-03-10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
