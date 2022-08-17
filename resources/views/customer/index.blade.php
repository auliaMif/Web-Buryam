@extends('layouts.dashboard')
@section('content')
<div class="container-fluid">
  <div class="row">
    <div class="col">
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">
            Data Customer
          </h3>
        </div>
        <div class="card-body">
          <form action="#">
            <div class="row">
              <div class="col">
                <input type="text" name="keyword" id="keyword" class="form-control" placeholder="ketik keyword disini">
              </div>
              <div class="col-auto">
                <button class="btn btn-primary">
                  Cari
                </button>
              </div>
            </div>
          </form>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama</th>
                  <th>Email</th>
                  <th>No Tlp</th>
                  <th>Alamat</th>
                  <th>Status</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Amin</td>
                  <td>amin@gmail.com</td>
                  <td>085852527575</td>
                  <td>
                    G ada yang tau
                  </td>
                  <td>
                    Aktif
                </td>
                <td>
                  <a href="{{ route('customer.edit', 1) }}" class="btn btn-sm btn-primary">Edit</a>
                </td>
              </tr>
              <tr>
                <td>2</td>
                <td>Yanti</td>
                <td>Yanti@gmail.com</td>
                <td>085852527576</td>
                <td>
                  G ada yang tau
                </td>
                <td>
                  Aktif
                </td>
                <td>
                  <a href="{{ route('customer.edit', 2) }}" class="btn btn-sm btn-primary">Edit</a>
                </td>
              </tr>
              <tr>
                <td>3</td>
                <td>Yanto</td>
                <td>yanto@gmail.com</td>
                <td>085852527577</td>
                <td>
                  G ada yang tau
                </td>
                <td>
                  Aktif
                </td>
                <td>
                  <a href="{{ route('customer.edit', 3) }}" class="btn btn-sm btn-primary">Edit</a>
                </td>
              </tr>
              </tbody>
            </table>
        </div>
    </div>
  </div>
</div>
</div>
</div>
@endsection