<html>
    <head>
    <title> Data Jenis Pembayaran </title>
    </head>

    <body>

    <center>
        <h3 align="center">Jenis</h3>
        <table border="1" width="600px" >
            <tr bgcolor="#008B8B">
                <th>no</th>
                <th>nama_pembayaran</th>
                <th>aksi</th>
            </tr>
            <?php
            include "koneksi.php";
            $query_mysql = mysqli_query($koneksi,"SELECT*FROM jenis_pembayaran") or die(mysqli_error());
            $nomor=1;
            while($data = mysqli_fetch_array($query_mysql)){
            ?>
            <tr>
                <td><?php echo $nomor++; ?></td>
                <td><?php echo $data['nama_pembayaran']; ?></td>
                <td>
                    <a href="ubahjenis.php?id=<?php echo $data['id_pembayaran'];?>">Edit</a>   |
                    <a href="hapusjenis.php?id=<?php echo $data['id_pembayaran'];?>">Hapus</a>
                </td>
            </tr>
            <?php } ?>
        </table>
    </center>
    </body>
</html>