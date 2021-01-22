<?php

function koneksi()
{
  return mysqli_connect('localhost', 'root', '', 'phpdasar');
}

function query($query)
{
  $conn = koneksi();

  $result = mysqli_query($conn, $query);

  // jika hasilnya hanya 1 data 
  if (mysqli_num_rows($result) == 1) {
    return mysqli_fetch_assoc($result);
  }
  // kalau datanya yang banyak lakukan ini
  $rows = [];
  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }

  return $rows;
}

function tambah($data)
{
  // untuk mengirim data tinggal kita panggil fungsi mysqli_query,dan fungsi ini mempunyai 2 paramaeter yang pertama koneksi dan yang kedua sting query 
  // dan untuk string querynya kita pecah aja ya ga usah digabung di parameternya "INSERT INTO" biar rapi
  $conn = koneksi();

  $nama = htmlspecialchars($data['nama']);
  $nrp = htmlspecialchars($data['nrp']);
  $email = htmlspecialchars($data['email']);
  $jurusan = htmlspecialchars($data['jurusan']);
  $gambar = htmlspecialchars($data['gambar']);

  $query = "INSERT INTO 
                  mahasiswa
                  VALUES
                  (null, '$nama', '$nrp', '$email', '$jurusan', '$gambar' );
                  ";
  mysqli_query($conn, $query);
  echo mysqli_error($conn);
  return mysqli_affected_rows($conn);
}
