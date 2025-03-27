# Dashboard_Laporan_Pinjaman_Bank
Untuk memantau dan menilai aktivitas serta kinerja pemberian pinjaman di bank, diperlukan untuk membuat Laporan Pinjaman Bank yang komprehensif. Laporan ini bertujuan untuk memberikan wawasan mengenai metrik utama yang berkaitan dengan pinjaman serta perubahan yang terjadi seiring waktu. Laporan ini akan membantu dalam pengambilan keputusan dengan basis data, melacak kesehatan portofolio pinjaman, dan mengidentifikasi tren yang dapat menjadi dasar strategi pemberian pinjaman

## Dataset yang Digunakan
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/financial_loan.csv">Dataset</a>

## Dashboard Interaktif
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/Analisis%20Pinjaman%20Bank.pbix">Dashboard Power BI</a>
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/Bank%20Loan%20Analysis%20Dashboar.twbx">Dashboard Tableu</a>
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/financial_loan_Project.xlsx">Dashboard Excel</a>

## Perhitungan dengan Menggunakan MySQL Workbench
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/Bank_Loan_Analysis.sql">Query</a>
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/Penjelasan%20Query%20SQL%20Laporan%20Pinjaman%20Bank.docx">Penjelasan Query</a>

## DASHBOARD 1 - RINGKASAN
## Persyaratan KPI
1. **Total Aplikasi Pinjaman**
   - Menghitung jumlah total aplikasi pinjaman yang diterima dalam periode tertentu.
   - Memantau aplikasi pinjaman bulan berjalan (Month-to-Date/MTD)
   - Melacak perubahan dari Bulan ke Bulan (Month-over-Month/MoM)
2. **Total Dana yang Dicairkan Bank**
   - Memahami jumlah total dana yang dicairkan sebagai pinjaman.
   - Memantau total dana yang dicairkan MTD
   - Mengananalisis perubahan dari Bulan ke Bulan (MoM) pada metrik ini
3. **Total Dana yang Diterima**
   - Melacak total dana yang diterima dari peminjam untuk menilai arus kas bank serta pelunasan pinjaman
   - Menganalisis total dana yang diterima MTD
   - Mengamati perubahan dari bulan ke bulan (MoM)
4. **Rata-Rata Suku Bunga**
   - Menghitung rata-rata suku bunga di seluruh pinjaman.
   - Menghitung rata-rata suku bunga MTD
   - Memantau variasi rata-rata suku bunga MoM
5. **Rata-Rata Debt-to-Income Ratio (DTI)**
   - Mengevaluasi rata-rata rasio utang terhadap pendapatan (DTI) peminjam untuk mengukur kesehatan finansial peminjam.
   - Menghitung rata-rata DTI untuk semua pinjaman dan MTD.
   - Melacak fluktuasi rata-rata DTI dari MoM
  
## KPI Pinjaman Baik
1. **Persentase Aplikasi Pinjaman Baik**
   - Menghitung persentase aplikasi pinjaman yang diklasifikasikan sebagai "Pinjaman Baik"
   - Kategori pinjaman baik mencakup pinjaman dengan Status "Lunas" (Fully Paid) dan "Aktif" (Current).
2. **Jumlah Aplikasi Pinjaman Baik**
   - Mengidentifikasi jumlah total aplikasi pinjaman yang masuk dalam kategori "Pinjaman Baik"
   - Yang masuk kategori "Pinjaman Baik" yaitu pinjaman dengan status "Lunas" dan "Aktif"
3. **Total Dana yang Dicairkan untuk Pinjaman Baik**
   - Menentukan jumlah tota dana yang dicairkan sebagai "Pinjaman Baik"
4. **Total Dana yang Diterima dari Pinjaman Baik**
   - Melacak jumlah total dana yang diterima dari peminjam untuk "Pinjaman Baik" yang mencakup pembayaran yang dilakukan pada pinjaman dengan status "Lunas" dan "Aktif"

## KPI Pinjaman Buruk
1. **Persentase Aplikasi Pinjaman Buruk**
   - Menghitung persentase aplikasi pinjaman yang dikategorikan sebagai "Pinjaman Buruk"
   - Kategori ini secara khusus mencakup pinjaman dengan status "Macet" (Charged Off).
2. **Jumlah Aplikasi Pinjaman Buruk**
   - Mengidentifikasi jumlah total aplikasi pinjaman yang masuk dalam kategori "Pinjaman Buruk"
   - Yang masuk kategori "Pinjaman Buruk" yaitu pinjaman dengan status "Macet".
3. **Total Dana yang Dicairkan untuk Pinjaman Buruk**
   - Menentukan jumlah tota dana yang dicairkan sebagai "Pinjaman Buruk"
4. **Total Dana yang Diterima dari Pinjaman Buruk**
   - Melacak jumlah total dana yang diterima dari peminjam untuk "Pinjaman Buruk" yang mencakup semua pembayaran yang dilakukan pada pinjaman dengan status "Macet".

## Tampilan Grid Status Pinjaman
Membuat laporan tampilan grid yang dikategorikan berdasarkan "Status Pinjaman". Dengan memberikan wawasan mengenai metrik seperti :
- Total Aplikasi Pinjaman
- Total Dana yang Dicairkan beserta MTD
- Total Dana yang Diterima beserta MTD
- Rata-Rata Suku Bunga
- Rata-Rata DTI

## Dashboard
![Dashboard Laporan Pinjaman Bank - Ringkasan](https://github.com/user-attachments/assets/221f380c-fb4c-405c-a4e1-1a1573924a3d)
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/Dashboard%20Laporan%20Pinjaman%20Bank%20-%20Ringkasan.png">Dashboard KPI</a>

## Insight
1. **Performa Pinjaman Secara Keseluruhan**
   - Total Aplikasi Pinjaman : 38,6K dengan kenaikan 6,9% MoM
   - Dana yang Dicairkan : $435,7 Juta naik 13,1% MoM
   - Dana yang Diterima Kembali : $473 juta, mengalami peningkatan 15,9% MoM
   - Rata-rata Suku Bunga : 12,05%, naik 3,5% MoM
   - Rata-Rata DTI : 13,33%, naik 2,7% MoM
     
Artinya, bank mengalami peningkatan jumlah aplikasi pinjaman, pencairan dana, dan dana yang diterima kembali dibandingkan bulan sebelumnya. Namun, suku bunga dan rasio DTI juga meningkat, yang perlu diawasi untuk menjaga risiko kredit.

2. **Kualitas Pinjaman**
   - **Pinjaman Baik**
     - 86,2% dari total pinjaman termasuk kategori baik
     - Sebanyak 33,2K aplikasi pinjaman baik dengan dana yang dicairkan sebanyak $370,2 M
   - **Pinjaman Buruk**
     - 13,8% dari total pinjaman termasuk kategori buruk
     - Sebanyak 5,3K aplikasi masuk kategori pinjaman buruk dengan dana yang dicairkan sebesar $65,5M
     - Dana diterima kembali dari pinjaman buruk hanya $37,3M, menandakan potensi gagal bayar
     - Peminjam buruk perlu dikontrol karena jumlah dana yang diterima lebih kecil dari yang dicairkan

Rasio pinjaman buruk cukup rendah (13,8%), yang menunjukkan bahwa mayoritas pinjaman yang diberikan berada dalam kategori aman. Namun, jumlah dana yang diterima kembali dari pinjaman buruk lebih kecil dibandingkan dana yang dicairkan, menunjukkan adanya risiko gagal bayar yang perlu dikendalikan.

3. **Status Pinjaman Berdasarkan Kategori**
   - Fully Paid (Lunas)
     - Jumlah aplikasi sebanyak (32.141 aplikasi) dengan dana dicairkan $351,3M dan dana yang diterima $414,5M.
     - Ini menunjukkan bahwa mayoritas peminjam mampu melunasi pinjamannya
   - Current (Sedang Berjalan)
     - 1.097 aplikasi dengan dana dicairkan $18,9M.
     - Masih dalam status pembayaran aktif
   - Charged Off (Gagal Bayar)
     - 5.332 aplikasi dengan dana dicairkan $65,5M, tetapi dana diterima hanya $37,2M yang berarti terdapat kerugian signifikan akibat gagal bayar
     - Rata-rata suku bunga pada kategori ini lebih tinggi (13,88%), mungkin sebagai kompensasi risik0

Mayoritas pinjaman berada dalam status lunas atau sedang berjalan, namun jumlah gagal bayar cukup besar (5.332 aplikasi) yang bisa menjadi fokus perbaikan strategi risiko kredit. Bank bisa mempertimbangkan pengetatan syarat pinjaman atau peningkatan strategi mitigasi risiko


## DASHBOARD 2 - GAMBARAN UMUM
1. **Tren Bulanan Berdasarkan Tanggal**
   - Menampilkan variasi Total Aplikasi Pinjaman, Total Dana yang dibiayai, dan Total Dana yang Diterima seiring waktu, memungkinkan untuk mengidentifikasi pola serta tren jangka panjang dalam aktivitas pemberian pinjaman.
2. **Analisis Wilayah Berdasarkan Negara Bagian**
   - Merepresentasikan metrik pinjaman berdasarkan negara bagian dengan menggunakan Filled Map, untuk membantu mengidentifikasi wilayah dengan aktivitas pinjaman yang signifikan serta menilai kesenjangan antar wilayah
3. **Analisis Jangka Waktu Pinjaman**
   - Menampilkan statistik pinjaman berdasarkan jangka waktu pinjaman yang berbeda, sehingga dapat memahami distribusi pinjaman berdasarkan panjang tenor
4. **Analisis Lama Bekerja Peminjam**
   - Menunjukkan distribusi metrik pinjaman berdasarkan lama bekerja peminjam, membantu untuk menilai dampak riwayat pekerjaan terhadap aplikasi pinjaman.
5. **Rincian Tujuan Pinjaman**
   - Menyajikan rincian visual metrik pinjaman berdasarkan tujuan pinjaman yang dinyatakan oleh peminjam, sehingga dapat memahami alasan untama mereka mencari pembiayaan
6. **Analisis Kepemilikan Rumah**
   - Peta hiearkis menampilkan metrik pinjaman berdasarkan status kepemilikan rumah, memungkinkan dapat melihat bagaimana kepemilikan ruma memengaruhi aplikasi dan pencairan pinjaman.

## Dashboard
![Dashboard Laporan Pinjaman Bank - Gambaran Umum](https://github.com/user-attachments/assets/6506dc74-1b61-4f8e-8158-a742c458b0a6)
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/Dashboard%20Laporan%20Pinjaman%20Bank%20-%20Gambaran%20Umum.png">Dashboard Gambaran Umum</a>

## Insight
1. **Tren Aplikasi Pinjaman Per Bulan**
   - Total aplikasi pinjaman terus meningkat sepanjang tahun, dengan puncaknya di bulan November mencapai 4,3K aplikasi
   - Peningkatan yang stabil menunjukkan adanya permintaan pinjaman yang terus bertambah, kemungkinan dipengaruhi oleh faktor musiman atau kondisi ekonomi
   - **Bank dapat menganalisis penyebab tren ini dan mengoptimalkan strategi pemasaran di bulan-bulan dengan permintaan tinggi**.
2. **Distribusi Aplikasi Pinjaman Berdasarkan Wilayah**
   - Peta menunjukkan bahwa beberapa wilayah memiliki jumlah aplikasi yang lebih tinggi dibanding wilayah lain, yang bisa disebabkan oleg faktor ekonomi, geografi, atau kebijakan bank.
   - **Bank dapat menargetkan wilayah dengan aplikasi rendah untuk meningkatkan penetrasi pasar atau menyesuaikan strategi risiko kredit di wilayah dengan tingkat pinjaman tinggi**
3. **Jangka Waktu Pinjaman**
   - Mayoritas pinjaman memiliki tenor 36 bulan (73,2%) dibandingkan dengan 60 bulan (26,8%).
   - Artinya peminjam lebih cenderung memilih pinjaman jangka pendek, mungkin karena disebabkan oleh suku bunga yang lebih rendah dibandingkan dengan tenor yang lebih panjang atau preferensi untuk melunasi utang lebih cepat.
4. **Aplikasi Pinjaman Berdasarkan Lama Bekerja**
   - Peminjam dengan pengalaman kerja lebih dari 10 tahun paling banyak mengajukan pinjaman (8,9K aplikasi), diikuti oleh ereka yang memiliki pengalaman kerja 1-4 tahun (3,5K - 4,6K aplikasi).
   - Peminjam dengan pengalaman kerja 6 tahun memiliki jumlah aplikasi lebih rendah yaitu 2,2K aplikasi.
   - **Ini memungkinkan bahwa stabilitas pekerjaan mungkin menjadi faktor utama dalam persetujuan pinjaman, karena mereka dengan pengalaman kerja lama memiliki kemungkinan lebih besar untuk disetujui.**
5. **Tujuan Pinjaman**
   - Tujuan utama peminjam adalah untuk Debt Consolidation (Konsolidasi Utang) dengan jumlah aplikasi tertinggi, yaitu 18K.
   - Tujuan lainnya seperti kartu kredit (5k), usaha kecil (2k), dan pernikahan (1k) memiliki jumlah aplikasi lebih rendah.
   - **Ini menunjukkan bahwa banyak peminjam menggunakan pinjaman untuk melunasi utang yang lebih lama, bukan untuk kebutuhan konsumtif atau investasi**.
6. **Kepemilikan Rumah**
   - Mayoritas peminjam adalah penyewa rumah (RENT - 18K) dibandingkan dengan yang memiliki rumah dengan hipotek (MORTGAGE - 17K)


**NOTE: Untuk Pengukuran (Measure) lainnya (Total Dana yang Dicairkan dan Total Dana yang Diterim) bisa diakses dilink Dashboard Interaktif**


## DASHBOARD 3 - DETAIL
Tujuan Dashboard detail adalah menyediakan antarmuka yang komprehensif dan ramah pengguna untuk mengakses data pinjaman yang penting. Dashboard ini akan menjadi solusi terpadu bagi pengguna yang ingin mendapatkan wawasan mendalam tentang portofolio pinjaman bnak, profil peminjam, dan kinerja pinjaman

![Dashboard Laporan Pinjaman Bank - Detail](https://github.com/user-attachments/assets/ad9f1b66-c20d-490f-9112-65c79a64be04)
- <a href="https://github.com/ifanapridarahman/Dashboard_Laporan_Pinjaman_Bank/blob/main/Dashboard%20Laporan%20Pinjaman%20Bank%20-%20Detail.png">Dashboard Detail</a>


Dashboard ini menunjukkan bahwa permintaan pinjaman terus meningkat dengan mayoritas pinjaman dalam kategori baik. Namun, porsi pinjaman buruk masih cukup signifikan (13.8%), sehingga diperlukan strategi mitigasi risiko kredit yang lebih ketat. Selain itu, suku bunga yang stabil dan pertumbuhan dana yang diterima bank menunjukkan performa yang sehat dalam pengelolaan pinjaman

