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


