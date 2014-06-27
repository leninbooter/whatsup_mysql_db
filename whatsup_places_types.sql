CREATE DATABASE  IF NOT EXISTS `whatsup` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `whatsup`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: whatsup
-- ------------------------------------------------------
-- Server version	5.6.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `places_types`
--

DROP TABLE IF EXISTS `places_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places_types` (
  `pk_places_types_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fk_place_id` int(10) unsigned NOT NULL,
  `fk_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pk_places_types_id`),
  UNIQUE KEY `pk_places_types_id_UNIQUE` (`pk_places_types_id`),
  UNIQUE KEY `fk_place_id_fk_type_id_UNIQUE` (`fk_place_id`,`fk_type_id`),
  KEY `fk_place_id<-places_idx` (`fk_place_id`),
  KEY `fk_type_id<-types_idx` (`fk_type_id`),
  CONSTRAINT `fk_place_id<-places_fk1` FOREIGN KEY (`fk_place_id`) REFERENCES `places` (`pk_place_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_type_id<-gplaces_types__places_types` FOREIGN KEY (`fk_type_id`) REFERENCES `gplaces_types` (`pk_types_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9678 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places_types`
--

LOCK TABLES `places_types` WRITE;
/*!40000 ALTER TABLE `places_types` DISABLE KEYS */;
INSERT INTO `places_types` VALUES (8600,10769,1),(8601,10770,1),(8602,10771,1),(8603,10772,1),(8604,10773,1),(8605,10774,1),(8606,10775,1),(8607,10776,3),(8608,10777,4),(8609,10778,4),(8610,10779,4),(8611,10780,4),(8612,10781,4),(8613,10782,4),(8614,10783,4),(8615,10784,4),(8616,10785,4),(8617,10786,4),(8618,10787,4),(8619,10788,4),(8620,10789,4),(8621,10790,4),(8622,10791,4),(8623,10792,4),(8624,10793,4),(8625,10794,4),(8626,10795,4),(8627,10796,4),(8628,10797,5),(8629,10798,5),(8630,10799,5),(8631,10800,5),(8632,10801,5),(8633,10802,5),(8634,10803,6),(8635,10804,6),(8636,10805,6),(8637,10806,6),(8638,10807,7),(8639,10808,8),(8640,10809,8),(8641,10810,8),(8642,10811,8),(8643,10812,8),(8644,10813,8),(8645,10814,8),(8646,10815,8),(8647,10816,8),(8648,10817,8),(8649,10818,8),(8650,10819,8),(8651,10820,8),(8652,10821,8),(8653,10822,8),(8654,10823,8),(8655,10824,8),(8656,10825,8),(8657,10826,8),(8658,10827,8),(8659,10828,8),(8660,10829,8),(8661,10830,8),(8662,10831,8),(8663,10832,8),(8664,10833,8),(8665,10834,8),(8666,10835,8),(8667,10836,10),(8668,10837,11),(8669,10838,11),(8670,10839,11),(8671,10840,11),(8672,10841,11),(8673,10842,11),(8674,10843,11),(8675,10844,11),(8676,10845,11),(8677,10846,11),(8678,10847,11),(8679,10848,11),(8680,10849,11),(8681,10850,11),(8682,10851,11),(8683,10852,11),(8684,10853,11),(8685,10854,11),(8686,10855,11),(8687,10856,11),(8688,10857,11),(8689,10858,11),(8690,10859,11),(8691,10860,11),(8692,10861,11),(8693,10862,11),(8694,10863,11),(8695,10864,11),(8696,10865,11),(8697,10866,11),(8698,10867,11),(8699,10868,11),(8700,10869,11),(8701,10870,11),(8702,10871,11),(8703,10872,11),(8704,10873,11),(8705,10874,11),(8706,10875,11),(8707,10876,11),(8708,10877,11),(8709,10878,11),(8710,10879,11),(8711,10880,11),(8712,10881,11),(8713,10882,11),(8714,10883,11),(8715,10884,11),(8716,10885,11),(8717,10886,11),(8718,10887,11),(8719,10888,11),(8720,10889,11),(8721,10890,11),(8722,10891,11),(8723,10892,11),(8724,10893,11),(8725,10894,11),(8726,10895,11),(8727,10896,11),(8728,10897,11),(8729,10898,11),(8730,10899,11),(8731,10900,11),(8732,10901,11),(8733,10902,11),(8734,10903,11),(8735,10904,11),(8736,10905,11),(8737,10906,11),(8738,10907,11),(8739,10908,11),(8740,10909,11),(8741,10910,11),(8742,10911,11),(8743,10912,11),(8744,10913,11),(8745,10914,11),(8746,10915,11),(8747,10916,11),(8748,10917,11),(8749,10918,11),(8750,10919,11),(8751,10920,11),(8752,10921,11),(8753,10922,11),(8754,10923,11),(8755,10924,11),(8756,10925,11),(8757,10926,11),(8758,10927,11),(8759,10928,11),(8760,10929,11),(8761,10930,11),(8762,10931,11),(8763,10932,11),(8764,10933,11),(8765,10934,11),(8766,10935,11),(8767,10936,11),(8768,10937,11),(8769,10938,11),(8770,10939,11),(8771,10940,11),(8772,10941,11),(8773,10942,11),(8774,10943,11),(8775,10944,11),(8776,10945,11),(8777,10946,11),(8778,10947,11),(8779,10948,11),(8780,10949,11),(8781,10950,11),(8782,10951,11),(8783,10952,11),(8784,10953,11),(8785,10954,11),(8786,10955,11),(8787,10956,11),(8788,10957,11),(8789,10958,11),(8790,10959,11),(8791,10960,11),(8792,10961,11),(8793,10962,11),(8794,10963,11),(8795,10964,11),(8796,10965,11),(8797,10966,11),(8798,10967,11),(8799,10968,11),(8800,10969,11),(8801,10970,11),(8802,10971,11),(8803,10972,11),(8804,10973,11),(8805,10974,11),(8806,10975,11),(8807,10976,11),(8808,10977,11),(8809,10978,12),(8810,10979,12),(8811,10980,12),(8812,10981,12),(8813,10982,12),(8814,10983,12),(8815,10984,12),(8816,10985,12),(8817,10986,12),(8818,10987,12),(8819,10988,12),(8820,10989,12),(8821,10990,12),(8822,10991,12),(8823,10992,12),(8824,10993,12),(8825,10994,12),(8826,10995,12),(8827,10996,12),(8828,10997,12),(8829,10998,12),(8830,10999,12),(8831,11000,12),(8832,11001,12),(8833,11002,12),(8834,11003,12),(8835,11004,12),(8836,11005,13),(8837,11006,13),(8838,11007,13),(8839,11008,13),(8840,11009,13),(8841,11010,13),(8842,11011,13),(8843,11012,13),(8844,11013,13),(8845,11014,13),(8846,11015,13),(8847,11016,13),(8848,11017,13),(8849,11018,14),(8850,11019,14),(8851,11020,14),(8852,11021,14),(8853,11022,14),(8854,11023,14),(8855,11024,14),(8856,11025,14),(8857,11026,14),(8858,11027,14),(8859,11028,14),(8860,11029,14),(8861,11030,14),(8862,11031,14),(8863,11032,14),(8864,11033,14),(8865,11034,14),(8866,11035,14),(8867,11036,14),(8868,11037,14),(8869,11038,14),(8870,11039,14),(8871,11040,14),(8872,11041,14),(8873,11042,14),(8874,11043,14),(8875,11044,14),(8876,11045,14),(8877,11046,14),(8878,11047,14),(8879,11048,14),(8880,11049,14),(8881,11050,14),(8882,11051,14),(8883,11052,14),(8884,11053,14),(8885,11054,14),(8886,11055,14),(8887,11056,14),(8888,11057,14),(8889,11058,14),(8890,11059,14),(8891,11060,14),(8892,11061,14),(8893,11062,14),(8894,11063,14),(8895,11064,14),(8896,11065,14),(8897,11066,14),(8898,11067,14),(8899,11068,14),(8900,11069,14),(8901,11070,14),(8902,11071,14),(8903,11072,14),(8904,11073,14),(8905,11074,14),(8906,11075,14),(8907,11076,14),(8908,11077,14),(8909,11078,14),(8910,11079,14),(8911,11080,14),(8912,11081,14),(8913,11082,14),(8914,11083,14),(8915,11084,14),(8916,11085,14),(8917,11086,14),(8918,11087,14),(8919,11088,14),(8920,11089,14),(8921,11090,14),(8922,11091,14),(8923,11092,14),(8924,11093,14),(8925,11094,14),(8926,11095,14),(8927,11096,14),(8928,11097,14),(8929,11098,14),(8930,11099,14),(8931,11100,14),(8932,11101,14),(8933,11102,14),(8934,11103,14),(8935,11104,14),(8936,11105,14),(8937,11106,14),(8938,11107,14),(8939,11108,14),(8940,11109,14),(8941,11110,14),(8942,11111,14),(8943,11112,14),(8944,11113,14),(8945,11114,14),(8946,11115,14),(8947,11116,14),(8948,11117,14),(8949,11118,14),(8950,11119,14),(8951,11120,14),(8952,11121,14),(8953,11122,14),(8954,11123,14),(8955,11124,14),(8956,11125,14),(8957,11126,14),(8958,11127,14),(8959,11128,14),(8960,11129,14),(8961,11130,14),(8962,11131,14),(8963,11132,14),(8964,11133,14),(8965,11134,14),(8966,11135,14),(8967,11136,14),(8968,11137,14),(8969,11138,14),(8970,11139,14),(8971,11140,14),(8972,11141,14),(8973,11142,14),(8974,11143,14),(8975,11144,14),(8976,11145,14),(8977,11146,14),(8978,11147,14),(8979,11148,14),(8980,11149,14),(8981,11150,14),(8982,11151,14),(8983,11152,14),(8984,11153,14),(8985,11154,14),(8986,11155,14),(8987,11156,14),(8988,11157,14),(8989,11158,14),(8990,11159,14),(8991,11160,14),(8992,11161,14),(8993,11162,14),(8994,11163,14),(8995,11164,14),(8996,11165,14),(8997,11166,14),(8998,11167,14),(8999,11168,14),(9000,11169,14),(9001,11170,14),(9002,11171,14),(9003,11172,14),(9004,11173,14),(9005,11174,14),(9006,11175,14),(9007,11176,14),(9008,11177,14),(9009,11178,14),(9010,11179,14),(9011,11180,14),(9012,11181,14),(9013,11182,14),(9014,11183,14),(9015,11184,14),(9016,11185,14),(9017,11186,14),(9018,11187,14),(9019,11188,14),(9020,11189,14),(9021,11190,14),(9022,11191,14),(9023,11192,14),(9024,11193,14),(9025,11194,14),(9026,11195,14),(9027,11196,14),(9028,11197,14),(9029,11198,14),(9030,11199,14),(9031,11200,14),(9032,11201,14),(9033,11202,14),(9034,11203,14),(9035,11204,14),(9036,11205,14),(9037,11206,15),(9038,11207,15),(9039,11208,15),(9040,11209,15),(9041,11210,15),(9042,11211,15),(9043,11212,15),(9044,11213,15),(9045,11214,15),(9046,11215,15),(9047,11216,15),(9048,11217,15),(9049,11218,15),(9050,11219,15),(9051,11220,15),(9052,11221,15),(9053,11222,15),(9054,11223,15),(9055,11224,15),(9056,11225,15),(9057,11226,15),(9058,11227,15),(9059,11228,15),(9060,11229,15),(9061,11230,15),(9062,11231,15),(9063,11232,15),(9064,11233,15),(9065,11234,15),(9066,11235,15),(9067,11236,15),(9068,11237,15),(9069,11238,15),(9070,11239,15),(9071,11240,15),(9072,11241,15),(9073,11242,15),(9074,11243,15),(9075,11244,15),(9076,11245,15),(9077,11246,15),(9078,11247,15),(9079,11248,15),(9080,11249,15),(9081,11250,15),(9082,11251,15),(9083,11252,15),(9084,11253,15),(9085,11254,15),(9086,11255,15),(9087,11256,15),(9088,11257,15),(9089,11258,15),(9090,11259,15),(9091,11260,15),(9092,11261,15),(9093,11262,15),(9094,11263,15),(9095,11264,15),(9096,11265,15),(9097,11266,15),(9098,11267,15),(9099,11268,15),(9100,11269,15),(9101,11270,15),(9102,11271,15),(9103,11272,15),(9104,11273,15),(9105,11274,15),(9106,11275,15),(9107,11276,15),(9108,11277,15),(9109,11278,15),(9110,11279,15),(9111,11280,15),(9112,11281,15),(9113,11282,15),(9114,11283,15),(9115,11284,15),(9116,11285,15),(9117,11286,15),(9118,11287,15),(9119,11288,15),(9120,11289,15),(9121,11290,15),(9122,11291,15),(9123,11292,15),(9124,11293,15),(9125,11294,15),(9126,11295,15),(9127,11296,15),(9128,11297,15),(9129,11298,15),(9130,11299,15),(9131,11300,15),(9132,11301,15),(9133,11302,15),(9134,11303,15),(9135,11304,15),(9136,11305,15),(9137,11306,15),(9138,11307,15),(9139,11308,15),(9140,11309,15),(9141,11310,15),(9142,11311,15),(9143,11312,15),(9144,11313,15),(9145,11314,15),(9146,11315,15),(9147,11316,15),(9148,11317,15),(9149,11318,15),(9150,11319,15),(9151,11320,15),(9152,11321,15),(9153,11322,15),(9154,11323,15),(9155,11324,15),(9156,11325,15),(9157,11326,15),(9158,11327,15),(9159,11328,15),(9160,11329,15),(9161,11330,15),(9162,11331,15),(9163,11332,15),(9164,11333,15),(9165,11334,15),(9166,11335,15),(9167,11336,15),(9168,11337,15),(9169,11338,15),(9170,11339,15),(9171,11340,15),(9172,11341,15),(9173,11342,15),(9174,11343,15),(9175,11344,15),(9176,11345,15),(9177,11346,15),(9178,11347,15),(9179,11348,15),(9180,11349,15),(9181,11350,15),(9182,11351,16),(9183,11352,16),(9184,11353,16),(9185,11354,16),(9186,11355,16),(9187,11356,16),(9188,11357,16),(9189,11358,16),(9190,11359,16),(9191,11360,16),(9192,11361,16),(9193,11362,16),(9194,11363,16),(9195,11364,16),(9196,11365,17),(9197,11366,17),(9198,11367,17),(9199,11368,17),(9200,11369,17),(9201,11370,17),(9202,11371,17),(9203,11372,17),(9204,11373,17),(9205,11374,17),(9206,11375,17),(9207,11376,17),(9208,11377,17),(9209,11378,17),(9210,11379,17),(9211,11380,17),(9212,11381,17),(9213,11382,17),(9214,11383,17),(9215,11384,17),(9216,11385,17),(9217,11386,17),(9218,11387,17),(9219,11388,17),(9220,11389,17),(9221,11390,17),(9222,11391,17),(9223,11392,17),(9224,11393,17),(9225,11394,17),(9226,11395,17),(9227,11396,17),(9228,11397,17),(9229,11398,17),(9230,11399,17),(9231,11400,17),(9232,11401,17),(9233,11402,17),(9234,11403,17),(9235,11404,17),(9236,11405,17),(9237,11406,17),(9238,11407,17),(9239,11408,17),(9240,11409,17),(9241,11410,17),(9242,11411,17),(9243,11412,17),(9244,11413,17),(9245,11414,17),(9246,11415,17),(9247,11416,17),(9248,11417,18),(9249,11418,18),(9250,11419,18),(9251,11420,18),(9252,11421,18),(9253,11422,18),(9254,11423,18),(9255,11424,18),(9256,11425,18),(9257,11426,18),(9258,11427,18),(9259,11428,18),(9260,11429,19),(9261,11430,19),(9262,11431,19),(9263,11432,19),(9264,11433,19),(9265,11434,19),(9266,11435,19),(9267,11436,19),(9268,11437,19),(9269,11438,19),(9270,11439,19),(9271,11440,19),(9272,11441,19),(9273,11442,19),(9274,11443,19),(9275,11444,19),(9276,11445,19),(9277,11446,19),(9278,11447,19),(9279,11448,19),(9280,11449,19),(9281,11450,19),(9282,11451,19),(9283,11452,19),(9284,11453,19),(9285,11454,19),(9286,11455,19),(9287,11456,19),(9288,11457,19),(9289,11458,19),(9290,11459,19),(9291,11460,19),(9292,11461,19),(9293,11462,19),(9294,11463,19),(9295,11464,19),(9296,11465,19),(9297,11466,19),(9298,11467,19),(9299,11468,19),(9300,11469,19),(9301,11470,19),(9302,11471,19),(9303,11472,19),(9304,11473,19),(9305,11474,19),(9306,11475,19),(9307,11476,19),(9308,11477,19),(9309,11478,19),(9310,11479,19),(9311,11480,19),(9312,11481,19),(9313,11482,19),(9314,11483,19),(9315,11484,19),(9316,11485,19),(9317,11486,19),(9318,11487,19),(9319,11488,19),(9320,11489,19),(9321,11490,19),(9322,11491,19),(9323,11492,19),(9324,11493,19),(9325,11494,19),(9326,11495,20),(9327,11496,20),(9328,11497,20),(9329,11498,20),(9330,11499,20),(9331,11500,20),(9332,11501,20),(9333,11502,20),(9334,11503,20),(9335,11504,20),(9336,11505,20),(9337,11506,20),(9338,11507,20),(9339,11508,20),(9340,11509,20),(9341,11510,21),(9342,11511,21),(9343,11512,21),(9344,11513,21),(9345,11514,21),(9346,11515,21),(9347,11516,22),(9348,11517,22),(9349,11518,22),(9350,11519,22),(9351,11520,22),(9352,11521,22),(9353,11522,22),(9354,11523,23),(9355,11524,23),(9356,11525,23),(9357,11526,23),(9358,11527,23),(9359,11528,23),(9360,11529,23),(9361,11530,23),(9362,11531,23),(9363,11532,23),(9364,11533,23),(9365,11534,23),(9366,11535,23),(9367,11536,23),(9368,11537,23),(9369,11538,23),(9370,11539,24),(9371,11540,24),(9372,11541,24),(9373,11542,24),(9374,11543,24),(9375,11544,24),(9376,11545,24),(9377,11546,24),(9378,11547,24),(9379,11548,24),(9380,11549,24),(9381,11550,24),(9382,11551,24),(9383,11552,24),(9384,11553,24),(9385,11554,24),(9386,11555,24),(9387,11556,24),(9388,11557,24),(9389,11558,24),(9390,11559,24),(9391,11560,24),(9392,11561,24),(9393,11562,24),(9394,11563,24),(9395,11564,24),(9396,11565,24),(9397,11566,24),(9398,11567,24),(9399,11568,24),(9400,11569,24),(9401,11570,24),(9402,11571,24),(9403,11572,24),(9404,11573,24),(9405,11574,24),(9406,11575,24),(9407,11576,24),(9408,11577,24),(9409,11578,25),(9410,11579,25),(9411,11580,25),(9412,11581,25),(9413,11582,25),(9414,11583,25),(9415,11584,25),(9416,11585,25),(9417,11586,25),(9418,11587,25),(9419,11588,25),(9420,11589,25),(9421,11590,25),(9422,11591,25),(9423,11592,25),(9424,11593,25),(9425,11594,25),(9426,11595,25),(9427,11596,25),(9428,11597,25),(9429,11598,25),(9430,11599,25),(9431,11600,25),(9432,11601,25),(9433,11602,25),(9434,11603,25),(9435,11604,25),(9436,11605,25),(9437,11606,25),(9438,11607,25),(9439,11608,25),(9440,11609,25),(9441,11610,25),(9442,11611,25),(9443,11612,25),(9444,11613,25),(9445,11614,25),(9446,11615,25),(9447,11616,25),(9448,11617,25),(9449,11618,25),(9450,11619,25),(9451,11620,25),(9452,11621,25),(9453,11622,25),(9454,11623,25),(9455,11624,25),(9456,11625,25),(9457,11626,25),(9458,11627,25),(9459,11628,25),(9460,11629,25),(9461,11630,25),(9462,11631,25),(9463,11632,25),(9464,11633,25),(9465,11634,25),(9466,11635,25),(9467,11636,25),(9468,11637,25),(9469,11638,25),(9470,11639,25),(9471,11640,25),(9472,11641,25),(9473,11642,25),(9474,11643,25),(9475,11644,25),(9476,11645,25),(9477,11646,25),(9478,11647,25),(9479,11648,25),(9480,11649,25),(9481,11650,25),(9482,11651,25),(9483,11652,25),(9484,11653,25),(9485,11654,25),(9486,11655,25),(9487,11656,25),(9488,11657,25),(9489,11658,25),(9490,11659,25),(9491,11660,25),(9492,11661,25),(9493,11662,25),(9494,11663,25),(9495,11664,25),(9496,11665,25),(9497,11666,25),(9498,11667,25),(9499,11668,25),(9500,11669,25),(9501,11670,25),(9502,11671,25),(9503,11672,25),(9504,11673,25),(9505,11674,25),(9506,11675,25),(9507,11676,25),(9508,11677,25),(9509,11678,25),(9510,11679,26),(9511,11680,26),(9512,11681,26),(9513,11682,26),(9514,11683,26),(9515,11684,26),(9516,11685,27),(9517,11686,27),(9518,11687,27),(9519,11688,27),(9520,11689,27),(9521,11690,27),(9522,11691,27),(9523,11692,27),(9524,11693,27),(9525,11694,27),(9526,11695,27),(9527,11696,27),(9528,11697,27),(9529,11698,27),(9530,11699,27),(9531,11700,27),(9532,11701,27),(9533,11702,27),(9534,11703,27),(9535,11704,27),(9536,11705,27),(9537,11706,27),(9538,11707,27),(9539,11708,27),(9540,11709,27),(9541,11710,27),(9542,11711,27),(9543,11712,27),(9544,11713,27),(9545,11714,27),(9546,11715,27),(9547,11716,27),(9548,11717,27),(9549,11718,27),(9550,11719,27),(9551,11720,27),(9552,11721,27),(9553,11722,27),(9554,11723,27),(9555,11724,27),(9556,11725,27),(9557,11726,27),(9558,11727,27),(9559,11728,27),(9560,11729,27),(9561,11730,27),(9562,11731,27),(9563,11732,27),(9564,11733,27),(9565,11734,27),(9566,11735,27),(9567,11736,27),(9568,11737,27),(9569,11738,27),(9570,11739,27),(9571,11740,27),(9572,11741,27),(9573,11742,27),(9574,11743,27),(9575,11744,27),(9576,11745,27),(9577,11746,27),(9578,11747,27),(9579,11748,27),(9580,11749,27),(9581,11750,27),(9582,11751,27),(9583,11752,27),(9584,11753,27),(9585,11754,27),(9586,11755,27),(9587,11756,27),(9588,11757,27),(9589,11758,27),(9590,11759,27),(9591,11760,27),(9592,11761,27),(9593,11762,27),(9594,11763,27),(9595,11764,27),(9596,11765,27),(9597,11766,27),(9598,11767,27),(9599,11768,27),(9600,11769,27),(9601,11770,27),(9602,11771,27),(9603,11772,27),(9604,11773,27),(9605,11774,27),(9606,11775,27),(9607,11776,27),(9608,11777,27),(9609,11778,27),(9610,11779,27),(9611,11780,27),(9612,11781,27),(9613,11782,27),(9614,11783,27),(9615,11784,27),(9616,11785,27),(9617,11786,27),(9618,11787,27),(9619,11788,27),(9620,11789,27),(9621,11790,27),(9622,11791,28),(9623,11792,28),(9624,11793,28),(9625,11794,28),(9626,11795,28),(9627,11796,28),(9628,11797,29),(9629,11798,29),(9630,11799,29),(9631,11800,29),(9632,11801,29),(9633,11802,29),(9634,11803,29),(9635,11804,29),(9636,11805,29),(9637,11806,29),(9638,11807,29),(9639,11808,29),(9640,11809,29),(9641,11810,29),(9642,11811,29),(9643,11812,29),(9644,11813,29),(9645,11814,29),(9646,11815,29),(9647,11816,29),(9648,11817,29),(9649,11818,29),(9650,11819,29),(9651,11820,29),(9652,11821,29),(9653,11822,29),(9654,11823,29),(9655,11824,29),(9656,11825,29),(9657,11826,29),(9658,11827,29),(9659,11828,29),(9660,11829,29),(9661,11830,29),(9662,11831,29),(9663,11832,29),(9664,11833,29),(9665,11834,29),(9666,11835,29),(9667,11836,29),(9668,11837,29),(9669,11838,29),(9670,11839,29),(9671,11840,29),(9672,11841,29),(9673,11842,29),(9674,11843,29),(9675,11844,29),(9676,11845,29),(9677,11846,29);
/*!40000 ALTER TABLE `places_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-27 14:10:49
