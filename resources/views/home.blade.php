@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    Sistem Pendukung Keputusan (SPK) untuk pemilihan karyawan terbaik menggunakan Metode Simple Additive Weighting (SAW) adalah alat bantu yang digunakan untuk membantu manajemen dalam memilih karyawan yang paling layak berdasarkan berbagai kriteria yang telah ditentukan. Metode SAW, juga dikenal sebagai metode penjumlahan terbobot, adalah salah satu teknik Multi-Criteria Decision Making (MCDM) yang populer karena kesederhanaan dan kemampuannya memberikan hasil yang objektif.
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
