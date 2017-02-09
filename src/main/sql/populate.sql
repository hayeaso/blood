INSERT INTO `lifesavers`.`address` (`city`, `state`, `street`) VALUES ('fairfield', 'IA', '1000 N 4th ST');
INSERT INTO `lifesavers`.`address` (`city`, `state`, `street`) VALUES ('fairfield', 'IA', '1705 W Burlington Ave');
INSERT INTO `lifesavers`.`address` (`city`, `state`, `street`) VALUES ('fairfield', 'IA', '605 E Broadway Ave')	;

INSERT INTO `lifesavers`.`eligibility` (`donationDate`, `eligible`) VALUES ('2017-02-22 00:00:00', 'true');
INSERT INTO `lifesavers`.`eligibility` (`donationDate`, `eligible`) VALUES ('2017-01-22 00:00:00', '1');
INSERT INTO `lifesavers`.`eligibility` (`donationDate`, `eligible`) VALUES ('2016-12-22 00:00:00', '1');

INSERT INTO `lifesavers`.`donor` (`bloodGroup`, `email`, `firstName`, `lastName`, `password`, `registrationDate`, `username`, `Address`, `Eligible`) VALUES ('O_positive', 'haye.sidi@gmail.com', 'Haye', 'Haye', '123456', '2017-02-22 00:00:00', 'hayuso', '1', '1');
INSERT INTO `lifesavers`.`donor` (`bloodGroup`, `email`, `firstName`, `lastName`, `password`, `registrationDate`, `username`, `Address`, `Eligible`) VALUES ('O_negative', 'test@tt.com', 'user', 'user', 'user', '2017-02-22 00:00:00', 'user', '2', '2');
INSERT INTO `lifesavers`.`donor` (`bloodGroup`, `email`, `firstName`, `lastName`, `password`, `registrationDate`, `username`, `Address`, `Eligible`) VALUES ('O_positive', 'test@tt.com', 'test', 'test', 'test', '2017-02-22 00:00:00', 'test', '3', '3');

