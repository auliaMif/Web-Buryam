@extends('layouts.dashboard')
@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-6 col-lg-3 mb-3">
            <div class="small-box bg-primary">
                <div class="inner">
                    <h3>150</h3>
                    <p>Order Baru</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="small-box bg-info">
                <div class="inner">
                    <h3>150</h3>
                    <p>Produk</p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="small-box bg-warning">
                <div class="inner">
                    <h3>150</h3>        
                    <p>User</p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <div class="col-6 col-lg-3">
            <div class="small-box bg-success">
                <div class="inner">
                    <h3>150</h3>       
                    <p>Transaksi</p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>

    <!-- table produk baru -->
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Produk Baru</h4>
                        <div class="card-tools">
                            <a href="#" class="btn btn-sm btn-primary">
                                More
                            </a>
                        </div>
                </div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Kode</th>
                                <th>Nama</th>
                                <th>Kategori</th>
                                <th>Qty</th>
                                <th>Harga</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Adidas-01</td>
                                <td>Adidas Breaknet Shoes</td>
                                <td>Sepatu Olahraga</td>
                                <td>12 pcs</td>
                                <td>900.000</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Nike-01</td>
                                <td>Nike Court Vision</td>
                                <td>Sepatu Olahraga</td>
                                <td>20 pcs</td>
                                <td>800.000</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection