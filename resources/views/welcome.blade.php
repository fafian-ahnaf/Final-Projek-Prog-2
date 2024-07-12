<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Pemilihan Karyawan Terbaik PT. Abadi Jaya</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

    <!-- Styles -->
    <style>
        html, body {
            background-color: #fff;
            color: #636b6f;
            font-family: 'Nunito', sans-serif;
            font-weight: 200;
            margin: 0;
            padding: 0;
        }

        .full-height {
            height: 90vh;
        }

        .flex-center {
            align-items: center;
            display: flex;
            justify-content: center;
        }

        .position-ref {
            position: relative;
        }

        .top-right {
            position: absolute;
            right: 10px;
            top: 18px;
        }

        .content {
            text-align: center;
        }

        .title {
            font-size: 84px;
        }

        .links > a {
            color: #636b6f;
            padding: 0 25px;
            font-size: 13px;
            font-weight: 600;
            letter-spacing: .1rem;
            text-decoration: none;
            text-transform: uppercase;
        }

        .m-b-md {
            margin-bottom: 30px;
        }

        .navbar {
            width: 100%;
            background-color: #f8f9fa;
            padding: 1rem;
            position: fixed;
            top: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            z-index: 1000;
        }

        .navbar .left-links, .navbar .right-links {
            display: flex;
            align-items: center;
        }

        .navbar a {
            margin: 0 15px;
            color: #636b6f;
            text-decoration: none;
            font-weight: 600;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .hero {
            height: 90vh;
            background: url('{{ asset('images/hero.jpg') }}') no-repeat center center;
            background-size: cover;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff;
            padding: 20px;
            margin-top: 80px;
        }

        .hero h1 {
            font-size: 64px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        .hero p {
            font-size: 24px;
            margin-bottom: 40px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
        }

        .hero .btn {
            padding: 10px 20px;
            font-size: 18px;
            font-weight: 600;
            color: #fff;
            background-color: #636b6f;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            text-transform: uppercase;
        }

        .hero .btn:hover {
            background-color: #4a4e51;
        }

        section {
            padding: 60px 20px; /* Adjusted padding for sections */
            text-align: center;
        }

        section h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        section p {
            font-size: 18px;
            max-width: 800px;
            margin: 0 auto;
        }

        #about, #panduan, #kontak {
            min-height: calc(100vh - 80px);
            margin-bottom: 20px;
        }

        .timeline {
            position: relative;
            margin: 0 auto;
            padding: 40px 0;
            max-width: 800px;
            margin-top: 2px;
        }

        .timeline::before {
            content: '';
            position: absolute;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 4px;
            height: 100%;
            background-color: #636b6f;
        }

        .timeline-item {
            position: relative;
            margin: 20px 0;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .timeline-item::before {
            content: '';
            position: absolute;
            top: 20px;
            left: -8px;
            width: 16px;
            height: 16px;
            background-color: #636b6f;
            border-radius: 50%;
            z-index: 1;
        }

        .timeline-item:nth-child(even) {
            left: 50%;
            transform: translateX(-50%);
        }

        .timeline-item:nth-child(odd) {
            right: 50%;
            transform: translateX(50%);
        }

        .timeline-item-content {
            padding: 10px 20px;
            text-align: left;
        }

        .timeline-item-content h3 {
            margin-top: 0;
            font-size: 24px;
        }

        .timeline-item-content p {
            margin: 5px 0 0;
            font-size: 16px;
        }

        .card-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px 0;
        }

        .card {
            background-color: #f8f9fa;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            width: 300px;
            padding: 20px;
            text-align: left;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
        }

        .card h3 {
            font-size: 24px;
            margin-top: 0;
        }

        .card p {
            font-size: 16px;
        }

        .contact-form {
            max-width: 600px;
            margin: 0 auto;
            text-align: left;
        }

        .contact-form label {
            font-size: 16px;
            margin-top: 10px;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .contact-form button {
            padding: 10px 20px;
            font-size: 18px;
            font-weight: 600;
            color: #fff;
            background-color: #636b6f;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-transform: uppercase;
        }

        .contact-form button:hover {
            background-color: #4a4e51;
        }

        .footer {
            background-color: #f8f9fa;
            padding: 20px;
            text-align: center;
            box-shadow: 0 -2px 4px rgba(0,0,0,0.1);
        }

        .footer p {
            margin: 0;
            font-size: 14px;
            color: #636b6f;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="left-links">
            <a href="#home">Home</a>
            <a href="#about">Tentang</a>
            <a href="#panduan">Panduan</a>
            <a href="#kontak">Kontak</a>
        </div>
        <div class="right-links">
            @if (Route::has('login'))
                @auth
                    <a href="{{ route('home') }}">Home</a>
                @else
                    <a href="{{ route('login') }}">Login</a>
                    @if (Route::has('register'))
                        <a href="{{ route('register') }}">Register</a>
                    @endif
                @endauth
            @endif
        </div>
    </div>

    <div class="hero" id="home">
        <h1>Pemilihan Karyawan Terbaik</h1>
        <p>PT. Abadi Jaya</p>
        <a href="#about" class="btn">Pelajari Lebih Lanjut</a>
    </div>

    <section id="about">
        <h2>Tentang</h2>
        <p>PT. Abadi Jaya berkomitmen untuk mengakui dan memberikan penghargaan kepada karyawan-karyawan yang luar biasa melalui program "Pemilihan Karyawan Terbaik".</p>
        <div class="card-container">
            <div class="card">
                <h3>Sertifikat</h3>
                <p>Pemenang akan mendapatkan sertifikat penghargaan resmi dari perusahaan sebagai bentuk apresiasi.</p>
            </div>
            <div class="card">
                <h3>Bonus</h3>
                <p>Bonus khusus akan diberikan kepada karyawan yang terpilih sebagai karyawan terbaik.</p>
            </div>
            <div class="card">
                <h3>Pengakuan Resmi</h3>
                <p>Pemenang akan mendapatkan pengakuan resmi dari perusahaan dan dipublikasikan di berbagai media internal.</p>
            </div>
        </div>
    </section>

    <section id="panduan">
        <h2>Panduan</h2>
        <p>Panduan untuk memahami proses pemilihan karyawan terbaik di PT. Abadi Jaya.</p>
        <div class="timeline">
            <div class="timeline-item">
                <div class="timeline-item-content">
                    <h3>Langkah 1: Nominasi</h3>
                    <p>Karyawan dapat dinominasikan oleh rekan kerja atau atasan mereka berdasarkan kinerja yang luar biasa.</p>
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-item-content">
                    <h3>Langkah 2: Pengumpulan Data</h3>
                    <p>Data terkait kinerja dan kontribusi karyawan dikumpulkan untuk penilaian lebih lanjut.</p>
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-item-content">
                    <h3>Langkah 3: Penilaian</h3>
                    <p>Tim penilai melakukan evaluasi berdasarkan kriteria yang telah ditetapkan.</p>
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-item-content">
                    <h3>Langkah 4: Pengumuman</h3>
                    <p>Karyawan terbaik diumumkan dan diberikan penghargaan pada acara perusahaan.</p>
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-item-content">
                    <h3>Langkah 5: Penghargaan</h3>
                    <p>Pemberian penghargaan kepada karyawan terbaik sebagai bentuk apresiasi dari perusahaan.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="kontak">
        <h2>Kontak</h2>
        <p>Untuk informasi lebih lanjut, hubungi kami melalui:</p>
        <p>Email: info@abadijaya.com<br>
           Telepon: (021) 123-4567<br>
           Alamat: Jl. Abadi Jaya No. 123, Jakarta, Indonesia</p>

        <div class="contact-form">
            <form action="/submit-contact" method="POST">
                <label for="name">Nama:</label>
                <input type="text" id="name" name="name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="message">Pesan:</label>
                <textarea id="message" name="message" rows="4" required></textarea>

                <button type="submit">Kirim</button>
            </form>
        </div>
    </section>

    <div class="footer">
        <p>&copy; 2024 PT. Abadi Jaya. All rights reserved.</p>
    </div>
</body>
</html>
