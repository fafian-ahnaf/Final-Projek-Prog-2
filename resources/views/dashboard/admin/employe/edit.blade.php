@extends('dashboard.master')

@section('content')
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Daftar Karyawan</h1>
  </div>
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card shadow-sm mb-4">
                <div class="card-header font-weight-bold text-primary">Edit Karyawan
                </div>

                <div class="card-body">
                    <div class="table-responsive">
                        <form action="{{route('employe.update',['id'=>$employe->id])}}" method="POST">
                            @csrf
                            @method('put')
                                <div class="form-group">
                                  <label for="full_name">Nama Lengkap</label>
                                <input type="text" name="full_name" class="form-control" id="full_name" aria-describedby="full_nameHelp" value="{{$employe->full_name}}">
                                </div>
                                <div class="form-group">
                                  <label for="gender">Jenis Kelamin</label>
                                  <select name="gender" class="form-control" id="gender">
                                    <option value='Laki-laki' {{$employe->gender=='Laki-laki'?'selected':''}}>Laki-Laki</option>
                                    <option value='Perempuan' {{$employe->gender=='Perempuan'?'selected':''}}>Perempuan</option>
                                  </select>
                                </div>
                                <div class="form-group">
                                  <label for="birth_place">Tempat Lahir</label>
                                  <input type="text" name="birth_place" class="form-control" id="birth_place" aria-describedby="birth_placeHelp" value="{{$employe->birth_place}}">
                                </div>
                                <div class="form-group">
                                    <label for="birth_date">Tanggal Lahir</label>
                                    <input type="date" name="birth_date" class="form-control" id="birth_date" aria-describedby="birth_dateHelp" value="{{$employe->birth_date}}">
                                </div>
                                <div class="form-group">
                                    <label for="address">Alamat</label>
                                    <textarea name="address" class="form-control" id="address" aria-describedby="addressHelp" >{{$employe->address}}</textarea>
                                </div>
                                <div class="form-group">
                                <label for="position">Posisi</label>
                                <input type="text" name="position" class="form-control" id="position" aria-describedby="positionHelp" value="{{$employe->position}}">
                                </div>
                                <button type="submit" class="btn btn-primary">Kirim</button>
                              </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection