@extends('layout.app-home')

@section('title', 'Homepage')

@section('content')
<div class="page-heading text-center">
    <h3>Selamat Datang di RSUD Panembahan Senopati</h3>
</div>
<div class="page-content">
    <section class="row">
        <div class="col-12 col-lg-12">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4 mx-auto">
                                    <img src="{{ asset('assets/images/logo-rsud.png') }}" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Deskripsi</h4>
                        </div>
                        <div class="card-body">
                            <h5>Rumah Sakit Umum Daerah Panembahan Senopati Kabupaten Bantul
                            </h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Kontak</h4>
                        </div>
                        <div class="card-title">
                            <table class="table mr-2">
                                <tr>
                                    <td>Kategori</td>
                                    <td>:</td>
                                    <td>Rumah Sakit Umum</td>
                                </tr>
                                <tr>
                                    <td>Lokasi</td>
                                    <td>:</td>
                                    <td>Kec. Bantul, Kab. Bantul, Daerah Istimewa Yogyakarta</td>
                                </tr>
                                <tr>
                                    <td>Alamat</td>
                                    <td>:</td>
                                    <td>Jl. Wahidin Sudirohusodo Bantul 55714</td>
                                </tr>
                                <tr>
                                    <td>Nomor Telpon</td>
                                    <td>:</td>
                                    <td>(0274) 367381</td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>:</td>
                                    <td>rsudps@bantulkab.go.id</td>
                                </tr>
                                <tr>
                                    <td>Jam Buka</td>
                                    <td>:</td>
                                    <td>
                                        <table class="table">
                                            <tr>
                                                <td>Hari</td>
                                                <td>Buka</td>
                                                <td>Tutup</td>
                                            </tr>
                                            <tr>
                                                <td>Senin</td>
                                                <td>00:00</td>
                                                <td>24:00</td>
                                            </tr>
                                            <tr>
                                                <td>Selasa</td>
                                                <td>00:00</td>
                                                <td>24:00</td>
                                            </tr>
                                            <tr>
                                                <td>Rabu</td>
                                                <td>00:00</td>
                                                <td>24:00</td>
                                            </tr>
                                            <tr>
                                                <td>Kamis</td>
                                                <td>00:00</td>
                                                <td>24:00</td>
                                            </tr>
                                            <tr>
                                                <td>Jum'at</td>
                                                <td>00:00</td>
                                                <td>24:00</td>
                                            </tr>
                                            <tr>
                                                <td>Sabtu</td>
                                                <td>00:00</td>
                                                <td>24:00</td>
                                            </tr>
                                            <tr>
                                                <td>Minggu</td>
                                                <td>00:00</td>
                                                <td>24:00</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection