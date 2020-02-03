<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Laravel 5.8 - Import Export Data in CSV File</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script>
  function validate(file) {
    var ext = file.split(".");
    ext = ext[ext.length-1].toLowerCase();      
    var arrayExtensions = ["csv"];

    if (arrayExtensions.lastIndexOf(ext) == -1) {
        alert("We Only Accept CSV Files!!!");
        $("#image").val("");
    }
}
</script>

<style>
body {
  background-color: linen;
}
.cap{transform: translate(450px,25px);animation: slide1 2s;}
@keyframes slide1 {
    0%{transform: translate(100px,25px);}
    50%{transform: translate(450px,25px);}
    75%{transform: translate(480px,25px);}
}

</style>
 </head>
<body>
<div class="container">

<br/>
<div class="panel panel-default">
   <div class="panel-heading">
   <h3 class="panel-title">Import/Export data in csv file</h3>
   </div>

   <div class="panel-body">
<form action="{{ url('submit') }}" method="post" enctype="multipart/form-data">
<input type="hidden" name="_token" value="{{ CSRF_Token() }}">
<input type="file" name="file" id="image" onChange="validate(this.value)"><br>
<button class="btn btn-success">Import Data</button><br><br><br>
</form>

<a class="btn btn-warning" href="{{ url('export') }}">Export Data</a><br>
<div class="cap">
<h3>Demo Laravel Project - Nikhlesh</h3><br>
</div>
<h2>Spendings per Month</h2>
<table class="table table-bordered table-striped">
<thead>
<tr>
<th>Month</th>
<th>Total Pre Tax Amount</th>
<th>Total Tax Amount</th>
<th>Total</th>
</tr>
</thead>

@foreach($data1 as $row)
  <?php $a=$row->total_pre_tax_amount;
  $b=$row->total_tax_amount;
  $c=$a+$b;
  ?>
<tr>
<td>{{ $row->month }}</td>
<td>{{ $row->total_pre_tax_amount }}</td>
<td>{{ $row->total_tax_amount }}</td>
<td><?php echo $c; ?></td>
</tr>
@endforeach
</table><br>
<h2>Spendings per Category</h2>


<table class="table table-bordered table-striped">
<thead>
<tr>
<th>Category</th>
<th>Total Pre Tax Amount</th>
<th>Total Tax Amount</th>
<th>Total</th>
</tr>
</thead>

@foreach($data2 as $row)
  <?php $a=$row->total_pre_tax_amount;
  $b=$row->total_tax_amount;
  $c=$a+$b;
  ?>
<tr>
<td>{{ $row->category }}</td>
<td>{{ $row->total_pre_tax_amount }}</td>
<td>{{ $row->total_tax_amount }}</td>
<td><?php echo $c; ?></td>
</tr>
@endforeach
</table><br>
<h2>All Data</h2>
<table class="table table-bordered table-striped">
<thead>
<tr>
<th>Date</th>
<th>Category</th>
<th>Lot Title</th>
<th>Lot Location</th>
<th>Lot Condition</th>
<th>Pre Tax Amount</th>
<th>Tax Name</th>
<th>Tax Amount</th>
</tr>
</thead>
<tbody>

@foreach($data as $row)
<tr>
<td>{{ $row->date }}</td>
<td>{{ $row->category }}</td>
<td>{{ $row->lot_title }}</td>
<td>{{ $row->lot_location }}</td>
<td>{{ $row->lot_condition }}</td>
<td>{{ $row->pre_tax_amount }}</td>
<td>{{ $row->tax_name }}</td>
<td>{{ $row->tax_amount }}</td>
</tr>
@endforeach

</tbody>
</table>
{{ $data->links() }} 
</div>
</div>
</div>
    







</body>
</html>