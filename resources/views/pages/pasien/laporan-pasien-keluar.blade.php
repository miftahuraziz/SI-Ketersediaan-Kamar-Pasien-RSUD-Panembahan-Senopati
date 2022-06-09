<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    </head>
    <body>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <div class="text-center">
                    <img src="{{asset('assets/images/logo-bantul.png') }}" style="width:100px; height:100px;">
                    
                </div>
            </div>
            <div class="col-sm-6">
                <h3 class="text-center">PEMERINTAH KABUPATEN BANTUL</h3>
                <h4 class="text-center">RSUD PANEMBAHAN SENOPATI</h4>
                <h5 class="text-center">Jl. Wahidin Sudirohusodo Bantul 55714</h5>
            </div>
            <div class="col-sm-2">
                <div class="text-center">
                    <img src="{{ asset('assets/images/logo-rsud.png') }}" style="width:100px; height:100px;">
                </div>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <hr>
        <br>
        <h2 class="text-center">LAPORAN PASIEN KELUAR</h2>
        <p class="text-center"><span>Per </span>{{\Carbon\Carbon::parse($waktu)->locale('id')->isoFormat('LL')}}</p>
        <br>
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th class="text-center">No</th>
                            <th class="text-center">Nomor Pasien</th>
                            <th>Tanggal Masuk</th>
                            <th>Tanggal Keluar</th>
                            <th>Nama Pasien</th>
                            <th>Diagnosa Akhir</th>
                            <th>Status Pasien</th>
                            <th>RS Rujukan</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($diagnosa as $data)
                        <tr>
                            <td class="text-center">{{ $loop->iteration }}</td>
                            <td class="text-center">{{ $data->pasien->nomor_pasien }}</td>
                            <td>{{ \Carbon\Carbon::parse($data->pasien->created_at)->locale('id')->isoFormat('LL') }}</td>
                            <td>{{ \Carbon\Carbon::parse($data->created_at)->locale('id')->isoFormat('LL') }}</td>
                            <td>{{ $data->pasien->nama_pasien }}</td>
                            <td>{{ $data->diagnosa_akhir }}</td>
                           
                            @if($data->status_pasien == 'Sembuh')
                            <td><span class="badge bg-success">Sembuh</span></td>
                            @elseif($data->status_pasien == 'Rujukan')
                            <td><span class="badge bg-warning">Rujukan</span></td>
                            @else
                            <td><span class="badge bg-danger">Meninggal</span></td>
                            @endif

                            @if (strlen($data->rs_rujukan) < 1)
                            <td>Pulang</td>
                            @else
                            <td><span class="badge bg-info">{{ $data->rs_rujukan }}</span></td>
                            @endif
                        </tr>
                        @empty
                        <tr>
                            <td colspan="8" class="text-center">Data Kosong</td>
                        </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
            <div class="col-sm-1"></div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/usm/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            window.print();
        </script>
    <body>
</html>