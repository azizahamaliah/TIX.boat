<html>
<head>
    <title> Halaman Admin</title>
</head>
 
<body>
<h3 align="center"> Tiket </h3>

<form action="" method="post">
<table align="center" width="40%" bgcolor="#008B8B">
    <tr>
        <td>ID Tiket</td>
        <td> : </td>
        <td><input type="text"  name="id_tiket"></td>
    </tr>
    <tr>
        <td>ID Kapal</td>
        <td> : </td>
        <td><input type="text" name="id_kapal"></td>
    </tr>
    <tr>
        <td> Rute </td>
        <td> : </td>
        <td><input type="text" name="rute_berangkat"></td>
    </tr>
    <tr>
        <td> tujuan </td>
        <td> : </td>
        <td><input type="text" name="rute_sampai"></td>
    </tr>
    <tr>
        <td> Tanggal Berangkat</td>
        <td> : </td>
        <td><input type="datetime-local" name="jadwal_berangkat"></td>
    </tr>
    <tr>
        <td> Jumlah Beli</td>
        <td> : </td>
        <td><input type="number" name="jumlah_pembelian"></td>
    </tr>
         <td> Kelas </td>
         <td> : </td>
         <td>
            <select name="kelas_layanan">
                <option value="">--Pilih--</option>
                <option value ="Ekonomi">ekonomi</option>
                <option value ="Bisnis">bisnis</option>
                <option value ="VIP">vip</option>
            </select>
        </td>
    <tr>
        <td> Kode Tiket </td>
        <td> : </td>
        <td><input type="text" name="kode_tiket"></td>
    </tr>
    <tr>
        <td> Harga Total </td>
        <td> : </td>
        <td><input type="text" name="total_harga"></td>
    </tr>
    <tr>
        <td></td>
        <td><input type="submit" value="simpan" name="proses"></td>
    </tr>
</table>
</form>

<?php
include "koneksi.php";

if(isset($_POST['proses'])){ 
    $idt = $_POST['id_tiket'];
    $idk = $_POST['id_kapal'];
    $asal = $_POST['rute_berangkat'];
    $tujuan = $_POST['rute_sampai'];
    $jadwal = $_POST['jadwal_berangkat'];
    $jumlah = $_POST['jumlah_pembelian'];
    $kelas = $_POST['kelas_layanan'];
    $kodet = $_POST['kode_tiket'];
    $total = $_POST['total_harga'];
    $sql = "INSERT INTO tiket values
    ('$idt','$idk','$asal','$tujuan','$jadwal','$jumlah','$kelas','$kodet','$total')";
    $result = mysqli_query($koneksi, $sql);
    header("location:view-tiket.php");
}  
?>
</body>
</html>
