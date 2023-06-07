<html>
    <head>
    <h1>view tabel</h1>
    </head>

    <body>
        <h3>tiket</h3>
        <br>
            <a href="tambah-tiket.php">Tambah Data</a>
        </br>
        <table border="1" class="table">
            <tr>
                <th>No</th>
                <th>id_kapal</th>
                <th>rute_berangkat</th>
                <th>rute_Sampai</th>
                <th>jadwal_berangkat</th>
                <th>jumlah_pembelian</th>
                <th>kelas_layanan</th>
                <th>kode_tiket</th>
                <th>harga</th>
                <th>aksi</th>
            </tr>
            <?php
            include "koneksi.php";
            $query_mysql = mysqli_query($koneksi,"SELECT * FROM tiket") or die(mysqli_error());
            $nomor=1;
            while($data = mysqli_fetch_array($query_mysql)){
            ?>
            <tr>
                <td><?php echo $nomor++; ?></td>
                <td><?php echo $data['id_kapal']; ?></td>
                <td><?php echo $data['rute_berangkat']; ?></td>
                <td><?php echo $data['rute_sampai']; ?></td>
                <td><?php echo $data['jadwal_berangkat']; ?></td>
                <td><?php echo $data['jumlah_pembelian']; ?> tiket </td>
                <td><?php echo $data['kelas_layanan']; ?></td>
                <td><?php echo $data['kode_tiket']; ?></td>
                <td>Rp.<?php echo $data['harga']; ?></td>
                <td>
                <a href="ubah-tiket.php?id=<?php echo $data ['id_tiket']; ?>">Ubah</a>
                <a href="deletetiket.php?id=<?php echo $data ['id_tiket']; ?>">Hapus</a>
                <a href="tambah-transaksi.php?id=<?php echo $data ['id_tiket']; ?>">transaksi</a>
                </td>
            </tr>
            <?php } ?>
        </table>
    </body>
</html>
        