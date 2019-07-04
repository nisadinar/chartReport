<?php session_start(); 
include('koneksi.php');

  $query= "SELECT * FROM report";
  $dt_query = $koneksi->query($query); 
?>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css">
</head>
<body>
<center>
        <h2>LAPORAN PENJUALAN</h2>
    
    <?php 
    include 'koneksi.php';
    ?>
 
    <div style="width: 800px;margin: 0px auto;">
        <canvas id="myChart"></canvas>
    </div>
 
    <br/>
    <br/>

    </center>
<table id="example" class="display responsive" width="100%">
        <thead>
            <tr>
                <th class="all">ID Penjualan</th>
                <th class="min-phone-l">Outlet</th>
                <th class="min-tablet">Metode Pembayaran</th>
                <th class="none">Total</th>
                <th class="desktop">Tanggal Transaksi</th>
                
            </tr>
        </thead>
         <tbody>

        <?php         
          while ($report = $dt_query->fetch_array()) { 
        ?>
            <tr>         
              
              <td><?php echo $report['id_penjualan']; ?></td>
              <td><?php echo $report['outlet']; ?></td>  
              <td><?php echo $report['metode']; ?></td>   
              <td><?php echo $report['total']; ?></td>    
              <td><?php echo $report['tanggal']; ?></td>   
            </tr> 
        <?php 
          } 
        ?> 
      </tbody> 


              
    </table>
    <script type="text/javascript" src="chartjs/Chart.js"></script>
    <script src= "https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src= "https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
   
    <script type="text/javascript">

    $(document).ready(function() {
    $('#example').DataTable( {
       responsive: true
        
    } );
    } );
    </script>
    <script>
        var ctx = document.getElementById("myChart").getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: ["Nelongso", "Nelongso Surabya"],
                datasets: [{
                    label: '',
                    data: [
                    <?php 
                    $jumlah_nelongso = mysqli_query($koneksi,"select SUM(total) as total from report where outlet='Nelongso'");
                    foreach ($jumlah_nelongso as $key) {
                        echo $key['total'];
                    }
                    ?>, 
                    <?php 
                    $jumlah_nelongsoSby = mysqli_query($koneksi,"select SUM(total) as total from report where outlet='Nelongso Surabaya'");
                    foreach ($jumlah_nelongsoSby as $key) {
                        echo $key['total'];
                    }
                    ?>, 
                    ],
                    backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                    ],
                    borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            
        });
    </script>
    </body>

</html>