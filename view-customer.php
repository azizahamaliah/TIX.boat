<html>
    <head>
    <h1>Tabel Customer</h1>
    </head>

    <body>
         <h3>Customer</h3>
         <br>
            <a href="tambah-customer.php">tambah data</a>
        <br/>  
        <table border="1" class="table">
            <tr>
                <th>no</th>
                <th>nama</th>
                <th>jenis_kelamin</th>
                <th>asal</th>
                <th>tanggal_lahir</th>
                <th>no_telp</th>
                <th>email</th>
                <th>username</th>
                <th>password</th>
                <th>aksi</th>
            </tr>
            <?php
            include "koneksi.php";
            $query_mysql = mysqli_query($koneksi,"SELECT*FROM customer") or die(mysqli_error());
            $nomor=1;
            while($data = mysqli_fetch_array($query_mysql)){
            ?>
            <tr>
                <td><?php echo $nomor++ ?></td>
                <td><?php echo $data['nama']; ?></td>
                <td><?php echo $data['jenis_kelamin']; ?></td>
                <td><?php echo $data['asal']; ?></td>
                <td><?php echo $data['tanggal_lahir']; ?></td>
                <td><?php echo $data['no_telp']; ?></td>
                <td><?php echo $data['email']; ?></td>
                <td><?php echo $data['username']; ?></td>
                <td><?php echo $data['password']; ?></td>
                <td>
                <a href="ubah-cust.php?id=<?php echo $data ['id_customer']; ?>">Ubah</a>
                <a href="deletecust.php?id=<?php echo $data ['id_customer']; ?>">Hapus</a>
                </td>
            </tr>
            <?php } ?>
        </table>
    </body>     
</html>
