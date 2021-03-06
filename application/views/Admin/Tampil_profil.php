<!DOCTYPE html>
<html lang="en">

<head>
    <?php
$this->load->view('template/head'); ?>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">

        <!-- Preloader -->
        <!-- <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div> -->

        <!-- Navbar -->
        <?php $this->load->view('template/navbar'); ?>
        <!-- /.navbar -->

        <!-- ini sidebar -->
        <?php $this->load->view('template/sidebar'); ?>

        <!-- Ini content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <?php
                    // Cek apakah terdapat session nama message
                    if ($this->session->flashdata('success')) { ?>
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <h5><i class="icon fas fa-check"></i> Data Berhasil Di Edit</h5>
                    </div>
                    <?php }
                    ?>
                    <div class="row mb-2">
                        <div class="col-sm-6">

                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active">Profil</li>
                                <li class="breadcrumb-item active">Edit Profil</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->



            <!-- Main content Ini Bagian Content -->
            <section class="content">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-md-3">

                            <!-- Profile Image -->
                            <div class="card card-primary card-outline">
                                <div class="card-body box-profile">
                                    <div class="text-center">
                                        <img class="profile-user-img img-fluid img-circle"
                                            src="<?php echo base_url() ?>assets/Gambar/foto_profil/<?php echo $user->foto_admin ?>"
                                            alt="User profile picture">
                                    </div>
                                    <h3 class="profile-username text-center"><?php echo $user->nama_admin ?></h3>

                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->


                        </div>
                        <!-- /.col -->
                        <div class="col-md-9">


                            <div class="card card-primary card-outline">
                                <?php $id_admin = $this->session->userdata('id_admin') ?>
                                <form action="<?php echo base_url('Profil/edit/' . $id_admin) ?>" method="POST"
                                    role="form" enctype="multipart/form-data">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <input name="id_admin" value="<?php echo $user->id_admin; ?>" type="hidden">
                                            <input name="password" type="hidden">
                                            <input name="username" value="<?php echo $user->username; ?>" type="hidden"
                                                class="form-control" id="exampleInputUsername1">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputNama1">Nama</label>
                                            <input name="nama_admin" value="<?php echo $user->nama_admin; ?>"
                                                type="nama" class="form-control" id="exampleInputNama1">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputAlamat1">Alamat</label>
                                            <input name="alamat_admin" value="<?php echo $user->alamat_admin; ?>"
                                                type="alamat" class="form-control" id="exampleInputAlamat1">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputNomorTelepon1">Nomor Telepon</label>
                                            <input value="<?php echo $user->no_admin; ?>" name="no_admin" type="text"
                                                class="form-control" minlength="9" min="9" maxlength="14"
                                                placeholder="Enter No HP (Harus Angka)"
                                                onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" required
                                                oninvalid="this.setCustomValidity('No HP Tidak Boleh Kosong!')"
                                                oninput="setCustomValidity('')">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <input name="email_admin" value="<?php echo $user->email_admin; ?>"
                                                type="email" class="form-control" id="exampleInputEmail1">
                                        </div>

                                        <div class="form-group">
                                            <label>Foto</label>
                                            <input name="foto_admin" value="<?php echo $user->foto_admin; ?>"
                                                type="file" multiple accept='image/*' id="menu_images">
                                            <input name="foto_admin" type="hidden"
                                                value="<?php echo $user->foto_admin ?>">

                                            <img src="<?php echo base_url() ?>assets/Gambar/foto_profil/<?php echo $user->foto_admin ?>"
                                                alt="" width="200px" hight="200px">
                                        </div>
                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-success float-right">
                                            Simpan</button>
                                    </div>

                                </form>
                            </div>

                        </div>


                    </div>
                    <!-- /.col -->
                </div>

                <!-- Ini bagian Content -->


        </div>

        <?php 
$this->load->view('template/footer'); ?>
    </div>
    <!-- ./wrapper -->
    <?php
$this->load->view('template/js'); ?>
</body>

</html>