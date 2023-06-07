<html>
    <head>
    <title> Data Voucher </title>
    </head>

    <body>

    <center>
        <h3 align="center">voucher</h3>
        <br>
            <a href="tambah-voucher.php">Tambah Data</a>
        </br>
        <table border="1" width="600px" >
            <tr bgcolor="#008B8B">
                <th>no</th>
                <th>jenis_voucher</th>
                <th>aksi</th>
            </tr>
            <?php
            include "koneksi.php";
            $query_mysql = mysqli_query($koneksi,"SELECT*FROM voucher") or die(mysqli_error());
            $nomor=1;
            while($data = mysqli_fetch_array($query_mysql)){
            ?>
            <tr>
                <td><?php echo $nomor++; ?></td>
                <td><?php echo $data['jenis_voucher']; ?></td>
                <td><a href="ubahvoucher.php?id=<?php echo $data['id_voucher'];?>">Edit</a>   |
                <a href="hapusvoucher.php?id=<?php echo $data['id_voucher'];?>">Hapus</a>
                </td>
            </tr>
            <?php } ?>
        </table>
    </center>
    </body>
</html>