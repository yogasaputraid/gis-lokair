<!doctype html>
<html class="no-js" lang="zxx">

<?php include 'head.php' ?>

<body>
    <!-- ? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="<?= templates('img/favicon.png', 'website') ?>" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->

    <?php include 'header.php' ?>

    <main>

        <?= $content ?>
        <?php $cak = $this->db->get('tbl_cakupan')->result_array(); ?>
        <?php $kec = $this->db->get('tbl_kecamatan')->result_array(); ?>
        <?php $pipa = $this->db->get('tbl_pipa')->result_array(); ?>
        <?php $bang = $this->db->get('tbl_bangunan')->result_array(); ?>
        <?php $air = $this->db->get('tbl_air')->result_array(); ?>
        <div class="count-down-area pt-25 section-bg" data-background="<?= templates('assets/img/gallery/section_bg02.png', 'website') ?>">
            <div class="row justify-content-center">
                <div class="col-lg-12 col-md-12">
                    <div class="count-down-wrapper">
                        <div class="row justify-content-between">
                            <div class="col-lg-2 col-md-4 col-sm-4">
                                <!-- Counter Up -->
                                <div class="single-counter text-center">
                                    <span class="counter color-green"><?= count($cak) ?></span>
                                    <!-- <span class="plus">+</span> -->
                                    <p class="color-green">Cakupan</p>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-4">
                                <!-- Counter Up -->
                                <div class="single-counter text-center">
                                    <span class="counter color-green"><?= count($kec) ?></span>
                                    <!-- <span class="plus">+</span> -->
                                    <p class="color-green">Kecamatan</p>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-4">
                                <!-- Counter Up -->
                                <div class="single-counter text-center">
                                    <span class="counter color-green"><?= count($pipa) ?></span>
                                    <!-- <span class="plus">+</span> -->
                                    <p class="color-green">Pipa Existing</p>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-4">
                                <!-- Counter Up -->
                                <div class="single-counter text-center">
                                    <span class="counter color-green"><?= count($air) ?></span>
                                    <!-- <span class="plus">+</span> -->
                                    <p class="color-green">Titik Air</p>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-4">
                                <!-- Counter Up -->
                                <div class="single-counter text-center">
                                    <span class="counter color-green"><?= count($bang) ?></span>
                                    <!-- <span class="plus">+</span> -->
                                    <p class="color-green">Perumahan</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>

    <?php include 'footer.php' ?>

    <?php include 'javascript.php' ?>
    <?php
    if (isset($js)) {
        echo $js;
    }
    ?>


</body>

</html>