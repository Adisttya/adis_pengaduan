

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registrasi</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="<?= base_url('assets/'); ?>assets/css/style.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" action="<?= base_url('C_adistya_auth/registrasi'); ?>" class="register-form" id="register-form">
                        <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="nama_lengkap" name="nama_lengkap"
                                        placeholder="Nama Lengkap" value="<?= set_value('name'); ?>">
                                        <?= form_error('name','<small class="text-danger pl-3">','</small>'); ?>
                                </div> 
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="nik" name="nik"
                                        placeholder="Nik" value="<?= set_value('nik'); ?>">
                                        <?= form_error('nik','<small class="text-danger pl-3">','</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="username" name="username"
                                        placeholder="Username" value="<?= set_value('username'); ?>"> <?= form_error('username', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-user" id="telepon" name="telepon"
                                        placeholder="Telepon" value="<?= set_value('telepon'); ?>"> <?= form_error('telepon', '<small class="text-danger pl-3">', '</small>'); ?>
                                </div>
                            <div class="form-group">
                            <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="password" name="password1" placeholder="Sandi">
                                            <?= form_error('password1','<small class="text-danger pl-3">','</small>'); ?>
                                    </div>
                            </div>
                            <div class="form-group">
                            <input type="password" class="form-control form-control-user"
                                            id="password" name="password2" placeholder="Ulang Sandi">
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="<?= base_url('assets/'); ?>assets/images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="<?= base_url('C_adistya_auth/')?>" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>

        <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>