<html>
    <center>
    <head>
    <title> TIX.boat-kapal </title>
    <link rel="stylesheet" href="style.css">
    </head>

    <body>
         <h3 align="center">Data Kapal</h3>

        <a href="tambah-kapal.php">Tambah Data</a>

        <table border="1" align="center" width="100">
            <tr bgcolor=#7E96C4>
            <div style="width: 200px">
                <th>no</th>
                <th>id</th>
                <th>jenis kapal</th>
                <th>nama kapal</th>
                <th>kode kapal</th>
                <th>aksi</th>
            </div>
            </tr>
            <?php
            include "koneksi.php";
            $query = mysqli_query($koneksi,"SELECT*FROM kapal") or die(mysqli_error());
            $nomor=1;
            while($data = mysqli_fetch_array($query)){
            ?>
            <tr align="center">
                <td><?php echo $nomor++ ?></td>
                <td><?php echo $data['id_kapal']; ?></td>
                <td><?php echo $data['jenis_kapal']; ?></td>
                <td><?php echo $data['nama_kapal']; ?></td>
                <td><?php echo $data['kode_kapal']; ?></td>
                <td>
                    <a href="ubah-kapal.php?id_kapal=<?php echo $data ['id_kapal']; ?>">Ubah</a>  
                    <a href="delete-kapal.php?id_kapal=<?php echo $data ['id_kapal']; ?>">Hapus</a>
                    <a href="tambah-transaksi.php?id_kapal=<?php echo $data ['id_kapal']; ?>">Transaksi</a>
                </td>
            </tr>
            <?php } ?>
        </table>
    </body>
</html>