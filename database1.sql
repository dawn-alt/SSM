/*
SQLyog Ultimate v9.30 
MySQL - 5.5.40 : Database - database1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`database1` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `database1`;

/*Table structure for table `gene_annotation` */

DROP TABLE IF EXISTS `gene_annotation`;

CREATE TABLE `gene_annotation` (
  `geneID` varchar(50) NOT NULL,
  `entry_names` varchar(100) DEFAULT NULL,
  `protein_names` varchar(100) DEFAULT NULL,
  `organism` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`geneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gene_annotation` */

insert  into `gene_annotation`(`geneID`,`entry_names`,`protein_names`,`organism`) values ('Ca_00006','G7IL50_MEDTR','Methionine S-methyltransferase','Medicago truncatula (Barrel medic) (Medicago tribuloides)'),('Ca_00066','G7IPH1_MEDTR','Cell division control protein-like protein','Medicago truncatula (Barrel medic) (Medicago tribuloides)'),('Ca_00079','F6H959_VITVI','Putative uncharacterized protein','Vitis vinifera (Grape)'),('Ca_00481','G7IP56_MEDTR','ABC transporter C family member','Medicago truncatula (Barrel medic) (Medicago tribuloides)'),('Ca_08807','B9RAT2_RICCO	','Putative uncharacterized protein','Ricinus communis (Castor bean)'),('Ca_11933','G7ZVC5_MEDTR','Photosystem II CP47 chlorophyll apoprotein','Medicago truncatula (Barrel medic) (Medicago tribuloides)');

/*Table structure for table `ssr_gene` */

DROP TABLE IF EXISTS `ssr_gene`;

CREATE TABLE `ssr_gene` (
  `SSR_ID` varchar(100) NOT NULL,
  `gene_start` varchar(100) DEFAULT NULL,
  `gene_end` varchar(100) DEFAULT NULL,
  `gene_orientation` varchar(100) DEFAULT NULL,
  `genic_nongenic` varchar(100) DEFAULT NULL,
  `geneID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SSR_ID`),
  KEY `GeneID` (`geneID`),
  CONSTRAINT `ssr_gene_ibfk_1` FOREIGN KEY (`GeneID`) REFERENCES `gene_annotation` (`GeneID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ssr_gene` */

insert  into `ssr_gene`(`SSR_ID`,`gene_start`,`gene_end`,`gene_orientation`,`genic_nongenic`,`geneID`) values ('CaGM00004','66922','81349','+','nongenic','Ca_00006'),('CaGM00089','585802','594264','+','nongenic','Ca_00066'),('CaGM00091','662417','666687','-','nongenic','Ca_00079'),('CaGM00507','3971905','3987501','-','nongenic','Ca_00481'),('CaGM02540','20360490','20365731','-','genic','Ca_08807'),('CaGM02541','20360490','20365731','-','genic','Ca_08807'),('CaGM36463','85322','90545','+','genic','Ca_11933');

/*Table structure for table `ssr_genome` */

DROP TABLE IF EXISTS `ssr_genome`;

CREATE TABLE `ssr_genome` (
  `SSR_ID` varchar(50) NOT NULL,
  `chromosome` varchar(100) DEFAULT NULL,
  `SSR_start` varchar(100) DEFAULT NULL,
  `SSR_end` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`SSR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ssr_genome` */

insert  into `ssr_genome`(`SSR_ID`,`chromosome`,`SSR_start`,`SSR_end`) values ('CaGM00001','Ca1','3967','3987'),('CaGM00004','Ca1','66109','66129	'),('CaGM00089','Ca1','594376','594516'),('CaGM00091','Ca1','666705','666917'),('CaGM00099','Ca1','734375','734465'),('CaGM00507','Ca1','3979797','3979797'),('CaGM02540','Ca1','20363995','20364015'),('CaGM02541','Ca1','20365590','20365604'),('CaGM05112','Ca1','47384751','47384770'),('CaGM06633','Ca2','11957976','11957995'),('CaGM36463','Ca8','85690','85722'),('CaGM38421','C11050130','269','283'),('CaGM48293','scaffold593','61517','61558');

/*Table structure for table `ssr_info` */

DROP TABLE IF EXISTS `ssr_info`;

CREATE TABLE `ssr_info` (
  `SSR_ID` varchar(50) NOT NULL,
  `SSRType` varchar(100) DEFAULT NULL,
  `lenSSR` int(100) DEFAULT NULL,
  `SSR_motif` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`SSR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ssr_info` */

insert  into `ssr_info`(`SSR_ID`,`SSRType`,`lenSSR`,`SSR_motif`) values ('CaGM00001','simple',21,'(TAA)7'),('CaGM00004','simple',21,'(TAA)7'),('CaGM00014','simple',30,'(TAT)10'),('CaGM00063','simple',30,'(ATGAGA)5'),('CaGM00070','simple',25,'(GGTCT)5'),('CaGM00089','compound',141,'(AT)21taaaaataaggtgataactttcttttatttgatacgatatctaacttttcaattacttgatgtcgcatcattcttta(AT)11'),('CaGM00091','compound',213,'(TC)7ttattctgtttctctctctaaataattagacaacgcggataatttgaataggggaagttaaaggagcagtgatgaagctgttgttggtggtggct'),('CaGM00099','compound',91,'(AG)6aatgacgacaagaggtaatcaacaacaaccaccgcaaccaaacggtgaacagaggctgagg(CAA)6'),('CaGM00125','simple',18,'(ACA)6'),('CaGM00141','simple',18,'(TAT)6'),('CaGM00143','simple',15,'(CAG)5'),('CaGM00186','simple',25,'(AGGCC)5'),('CaGM00252','simple',25,'(AAAAT)5'),('CaGM00284','simple',30,'(TTTTTA)5'),('CaGM00346','simple',42,'(TTGCAT)7'),('CaGM00507','simple',20,'(TTCA)5'),('CaGM01114','simple',30,'(CATTTT)5'),('CaGM02540','simple',21,'(TAT)7'),('CaGM02541	','simple',15,'(CAT)5'),('CaGM05112','simple',20,'(AC)10'),('CaGM06633','simple',20,'(AC)10'),('CaGM36463','compound',33,'(TGA)5(TGC)6'),('CaGM38421','simple',15,'(ATT)5'),('CaGM48290','simple',40,'(AATA)10'),('CaGM48291','simple',32,'(AATA)8'),('CaGM48293','simple',42,'(AT)21'),('CaGM48297','simple',20,'(AAAT)5');

/*Table structure for table `ssr_primer` */

DROP TABLE IF EXISTS `ssr_primer`;

CREATE TABLE `ssr_primer` (
  `SSR_ID` varchar(50) NOT NULL,
  `forward_primer` varchar(100) DEFAULT NULL,
  `reverse_primer` varchar(100) DEFAULT NULL,
  `tm` float DEFAULT NULL,
  `amplicon_len` int(30) DEFAULT NULL,
  PRIMARY KEY (`SSR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ssr_primer` */

insert  into `ssr_primer`(`SSR_ID`,`forward_primer`,`reverse_primer`,`tm`,`amplicon_len`) values ('CaGM00001','TTCATCAATTGCCGAATCAC','CCCATCGAGTGCCAATAACT',59.5,335),('CaGM00004','AACCGGAAGAACCTAGACGA','TGGAGCGCCATTTGTATTTT',58.8,347),('CaGM00089','TCCAGTTGAGATGCCTGTGT','CGAGAAATGTGGATATTGGA',59.3,327),('CaGM00091','TCTTCAATTTTCCCCATTGC','AATTGCCAGCGTAGATCACA',59.9,325),('CaGM00099','AAGAAGGGTTGTTGGTGGTG','TTGAGTACGATTGTGCTGGTG',59.9,215),('CaGM00507','TCTGGCTCAAGAGGTGGATT','TACAGCAGGGCACCTTATCC',59.8,348),('CaGM02540','CAATTTTCTCCCACGAGCAT','CGGTTCACAAATGGTTTTCC',60.1,348),('CaGM02541','AAAGCGAGGGGAACCTAAAA','GTGTCAATGGAGCGAAGGTT',60.1,333),('CaGM05112','CTGATTGTGTGAACTGATTGTC ','GGCATTTTACAGCGCTTTTT',55.7,329),('CaGM06633	','TGTCTACTGATTGTGTGAATGC','GAATTTTGCAGCGCTTTTTC',56.3,237),('CaGM36463','TGCAGCTACTGCTGCTCCTA','CTTCTTCTCCTGATCGCACC',60.1,252),('CaGM38421','AGCTTTTGATTCCAGTCCGA','TGTAGGGGTGCATGGTGTAA',59.8,121),('CaGM48293','CCCAAGAGAAAACCTAGTTGG','	CATTTTACAACTGTTCCGGG ',57.9,289);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
