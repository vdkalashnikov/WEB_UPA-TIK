<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
        content="">

    <!-- title -->
    <title>Polban</title>

    <!-- favicon -->
    <link rel="shortcut icon" type="image/png" href="/assets/img/polban2.png">
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
    <!-- fontawesome -->
    <link rel="stylesheet" href="/assets/css/all.min.css">
    <!-- bootstrap -->
    <link rel="stylesheet" href="/assets/bootstrap/css/bootstrap.min.css">
    <!-- owl carousel -->
    <link rel="stylesheet" href="/assets/css/owl.carousel.css">
    <!-- magnific popup -->
    <link rel="stylesheet" href="/assets/css/magnific-popup.css">
    <!-- animate css -->
    <link rel="stylesheet" href="/assets/css/animate.css">
    <!-- mean menu css -->
    <link rel="stylesheet" href="/assets/css/meanmenu.min.css">
    <!-- main style -->
    <link rel="stylesheet" href="/assets/css/main.css">
    <!-- responsive -->
    <link rel="stylesheet" href="/assets/css/responsive.css">
    <script src="/assets/js/jquery-1.11.3.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">

</head>
<?= $this->renderSection('stylesheets'); ?>

<body >

    <!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->

    <?php include ('inc/header-display.php') ?>

    <?= $this->renderSection('content'); ?>


    <!-- bootstrap -->
    <script src="/assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- count down -->
    <script src="/assets/js/jquery.countdown.js"></script>
    <!-- isotope -->
    <script src="/assets/js/jquery.isotope-3.0.6.min.js"></script>
    <!-- waypoints -->
    <script src="/assets/js/waypoints.js"></script>
    <!-- owl carousel -->
    <script src="/assets/js/owl.carousel.min.js"></script>
    <!-- magnific popup -->
    <script src="/assets/js/jquery.magnific-popup.min.js"></script>
    <!-- mean menu -->
    <script src="/assets/js/jquery.meanmenu.min.js"></script>
    <!-- sticker js -->
    <script src="/assets/js/sticker.js"></script>
    <!-- main js -->
    <script src="/assets/js/main.js"></script>
    <?= $this->renderSection('scripts'); ?>

</body>

</html>