		<div class="container-fluid">

	          <!-- Page Heading -->
	          <div class="d-sm-flex align-items-center justify-content-between mb-4">
	            <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
	          </div>
	        <div class="row">

	            <div class="col-lg-12 mb-4">

	              <!-- Illustrations -->
	                <div class="card shadow mb-4">
	                  <div class="card-header py-3">
	                    <h6 class="m-0 font-weight-bold text-primary">Selamat Datang Kembali di halaman <?php if ($this->session->userdata('role_id') == '1') {echo "Admin";}elseif($this->session->userdata('role_id') == '2'){echo "Pimpinan";}elseif($this->session->userdata('role_id') == '3'){echo "Dosen";}elseif($this->session->userdata('role_id') == '4'){echo "Absensi";}?></h6>
	                  </div>
	                  <div class="card-body">
	                    <div class="text-center">
	                      <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="<?= base_url('assets/img/'); ?>undraw_posting_photo.svg" alt="">
	                    </div>
	                    <p>“Sunsets are proof that no matter what happens every day can end beautifull,”<br>- Kristen Butler-</p>
	                  </div>
	                </div>
	            </div>
	          </div>
	        </div>
        <!-- /.container-fluid -->
      </div>