Saya Radhiya Fitrunnisa XI RPL, selama pengerjaan saya tidak melakukan
kecurangan dalam mengerjakan Ujian Praktek Basis Data. Jika saya 
melakukan kecurangan maka Allah atau Tuhan menjadi saksi saya 



create database restoran;

	use restoran;

create table pelayan(
  id_pelayan varchar(10) primary key,
  nama_pelayan varchar(30) not null,
  jenis_kelamin varchar(2) not null,
  kontak varchar(13) not null
);

desc pelayan;

create table pelanggan(
  id_pelanggan varchar(10) primary key,
  nama_pelanggan varchar(30) not null,
  alamat varchar(30) not null,
  kontak varchar (13) not null
);

desc pelanggan;

create table makanan(
  id_makanan varchar(10) primary key,
  nama_makanan varchar(30) not null,
  harga int(6) not null
);

desc makanan;

create table pemesanan(
  id_pesanan varchar(10) primary key,
  id_pelayan varchar(10) not null,
  id_pelanggan varchar(10) not null,
  id_makanan varchar(10) not null,
  tanggal_pesan date not null,
  jml_pemesanan int(4) not null,
  foreign key (id_pelayan) references pelayan (id_pelayan),
  foreign key (id_pelanggan) references pelanggan (id_pelanggan),
  foreign key (id_makanan) references makanan (id_makanan)
  );

insert into pelayan values
 ('PL01','Burhan','L','082736889187'),
 ('PL02','Tikah','P','080988761524'),
 ('PL03','Tegar','L','081982736099'),
 ('PL04','Cipa','P','084988273652');

insert into pelanggan values
 ('PG01','Godric Griffyndor','Hogsmead','0978276235899'),
 ('PG02','Helga Hufflepuff','Diagon Alley','982777625135'),
 ('PG03','Rowena Ravenclaw','Privet Drive','809716225837'),
 ('PG04','Salazar Slytherin','Azkaban','789733645082');

insert into makanan values
	('MN01','Lumpia Kering','5000'),
	('MN02','Spicy Wings','12000'),
	('MN03','Bibimbap','65000'),
	('MN04','Potato Wedges','30000'),
	('MN05','Iga Bakar Madu','20000'),
	('MN06','Beef Bulgogi','45000'),
	('MN07','Wagyu Steak','70000'),
	('MN08','Kepiting Asap','50000');


insert into pemesanan values
	('PS01','PL01','PG01','MN01','2017-03-10','10'),
	('PS02','PL02','PG02','MN02','2017-03-11','12'),
	('PS03','PL03','PG03','MN03','2017-03-12','30'),
	('PS04','PL04','PG04','MN04','2017-03-13','25'),
	('PS05','PL01','PG01','MN05','2017-03-12','40'),
	('PS06','PL02','PG02','MN06','2017-03-15','15'),
 	('PS07','PL03','PG03','MN07','2017-03-14','10'),
  ('PS08','PL04','PG04','MN08','2017-03-12','12'),
  ('PS09','PL01','PG01','MN02','2017-03-11','40'),
  ('PS10','PL02','PG02','MN03','2017-03-10','39'),
	('PS11','PL03','PG03','MN04','2017-03-15','15'),
 	('PS12','PL04','PG04','MN05','2017-03-13','20'),
  ('PS13','PL01','PG01','MN06','2017-03-13','10'),
  ('PS14','PL02','PG02','MN07','2017-03-14','5'),
	('PS15','PL03','PG03','MN08','2017-03-11','35'),
 	('PS16','PL04','PG04','MN01','2017-03-10','20');
 

 	