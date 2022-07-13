

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4');


CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `roll` int(10) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `users` (`id`,`roll`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`) VALUES
(1, '190314','Kashmin', 'Shrestha', 'kashmin44@gmail.com', 'Test@123', '9860097886', '2022-07-09 00:00:00');
INSERT INTO `users` (`id`,`roll`, `fname`, `lname`, `email`, `password`, `contactno`, `posting_date`) VALUES
(2, '190315','Krishala', 'Poudel', 'krishala44@gmail.com', 'Test@123', '9860000000', '2022-07-09 00:00:00');



ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;



ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;
