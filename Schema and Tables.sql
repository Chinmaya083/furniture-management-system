CREATE SCHEMA `furniture_shop` ;

CREATE TABLE `furniture_shop`.`furniture` (
  `f_model` VARCHAR(50) NOT NULL,
  `model_no` VARCHAR(5) NOT NULL,
  `f_type` VARCHAR(15) NOT NULL,
  `f_category` VARCHAR(15) NOT NULL,
  `f_price` INT NOT NULL,
  `in_stock` INT NOT NULL,
  PRIMARY KEY (`model_no`));


CREATE TABLE `furniture_shop`.`sold_furniture` (
  `trans_id` INT NOT NULL auto_increment,
  `cust_no` INT NOT NULL,
  `mod_id` VARCHAR(5) NOT NULL,
  `qty` INT NOT NULL,
  `sell_date` DATE NOT NULL,
  PRIMARY KEY (`trans_id`),
  CONSTRAINT `fk_cust_no`
    FOREIGN KEY (`cust_no`)
    REFERENCES `furniture_shop`.`customer_details` (`cust_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_mod_id`
    FOREIGN KEY (`mod_id`)
    REFERENCES `furniture_shop`.`furniture` (`model_no`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



CREATE TABLE `furniture_shop`.`customer_details` (
  `cust_id` INT NOT NULL auto_increment,
  `cust_name` VARCHAR(30) NOT NULL,
  `cust_ph` VARCHAR(10) NOT NULL,
  `cust_addr` VARCHAR(45) NOT NULL,
  `mode_of_pay` VARCHAR(4) NOT NULL,
  PRIMARY KEY (`cust_id`));





insert into FURNITURE  (f_model, model_no, f_type, f_category, f_price , in_stock) 
values ('Stanley comfort sofa','st100','Sofa','Living room', 20000, 3),   
	   ('Stanley corner sofa','st200','Sofa','Living room', 25000, 2),         
	   ('Stanley sofa two seater','st300','Sofa','Living room', 15000, 5),          
	   ('Wakefit king size bed','wf100','Bed','Bedroom', 23000, 1),    
	   ('Wakefit queen size bed','wf200','Bed','Bedroom', 23000, 4),          
	   ('Wakefit sheesham bed with storage','wf300','Bed','Bedroom', 28000, 2),         
 	   ('Royaloak 4 dining','ro100','Dining set','Dining room',  18000, 2),    
	   ('Royaloak 6 dining','ro200','Dining set','Dining room',  22000, 1);

insert into customer_details (cust_name,cust_addr,mode_of_pay,cust_ph)
values  ('Ram','abc layout','card','9876543210'),
	    ('Shyam','bcc layout','card','0123456789'),
        ('John','abc layout','cash','9898989898'),
        ('Jack','xyz layout','cash','1234567890');
ALTER TABLE customer_details AUTO_INCREMENT=1001;
