<html>
    <head>
    <h1>view tabel</h1>
    </head>

    <body>
        <h3>transaksi</h3>
        <br>
            <a href="tambah-transaksi.php">tambah data</a>
        </br>
        <table border="1" class="table">
            <tr>
                <th>no</th>
                <th>jadwal_berangkat</th>
                <th>jenis_voucher</th>
                <th>nama_pembayaran</th>
                <th>nama</th>
                <th>aksi</th>
            </tr>
            <?php
            include "koneksi.php";
            $query_mysql = mysqli_query($koneksi,"SELECT transaksi.*, tiket.jadwal_berangkat, voucher.jenis_voucher, jenis_pembayaran.nama_pembayaran, customer.nama FROM transaksi 
            INNER JOIN tiket ON tiket.id_tiket = transaksi.id_tiket 
            INNER JOIN voucher ON voucher.id_voucher = transaksi.id_voucher 
            INNER JOIN jenis_pembayaran ON jenis_pembayaran.id_pembayaran = transaksi.id_pembayaran 
            INNER JOIN customer ON customer.id_customer = transaksi.id_customer;") or die(mysqli_error());
            $nomor=1;
            while($data = mysqli_fetch_array($query_mysql)){
            ?>
            <tr>
                 <td><?php echo $nomor++; ?></td>
                <td><?php echo $data['jadwal_berangkat']; ?></td>
                <td><?php echo $data['jenis_voucher']; ?></td>
                <td><?php echo $data['nama_pembayaran']; ?></td>
                <td><?php echo $data['nama']; ?></td>
                <td>
                <a href="ubah-transaksi.php?id_transaksi=<?php echo $data ['id_transaksi']; ?>">Ubah</a>
                <a href="deletetransaksi.php?id_transaksi=<?php echo $data ['id_transaksi']; ?>">Hapus</a>
                </td>
            </tr>
            <?php } ?>
        </table>
    </body>
</html>
        