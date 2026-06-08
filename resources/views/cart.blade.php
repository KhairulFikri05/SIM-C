<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>Keranjang Anda - SIM-C KING COFFEE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-white">

<div class="container mt-5">
    <h2 class="mb-4">Keranjang Pesanan Anda</h2>
    
    @if(session('cart'))
    <table class="table table-dark table-hover">
        <thead>
            <tr>
                <th>Menu</th>
                <th>Jumlah</th>
                <th>Harga</th>
            </tr>
        </thead>
        <tbody>
            @foreach(session('cart') as $id => $details)
            <tr>
                <td>{{ $details['name'] }}</td>
                <td>{{ $details['quantity'] }}</td>
                <td>Rp {{ number_format($details['price'] * $details['quantity'], 0, ',', '.') }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <div class="card bg-secondary text-white p-4">
        <form action="{{ route('cart.checkout') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label>Pilih Nomor Meja:</label>
                <select name="table_id" class="form-control">
                    <option value="1">Meja 1</option>
                    <option value="2">Meja 2</option>
                    <option value="3">Meja 3</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary btn-lg w-100">Konfirmasi Pesanan & Bayar</button>
        </form>
    </div>
    @else
        <p>Keranjang kosong. Yuk pesan kopi dulu!</p>
        <a href="/" class="btn btn-warning">Kembali ke Menu</a>
    @endif
</div>

</body>
</html>