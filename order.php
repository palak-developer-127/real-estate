<?php

include 'components/connect.php';

if (isset ($_COOKIE['user_id'])) {
    $user_id = $_COOKIE['user_id'];
} else {
    $user_id = '';
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <?php include 'components/user_header.php'; ?>
    <section class="services">

        <h1 class="heading">our Agents</h1>

        <div class="box-container">

            <div class="box">
                <img src="images/pic-3.png" alt="">
                <h3><i class="fas fa-phone"></i><span>+1 947-363-8836</span></h3>
                <h3><a href="mailto:john42@gmail.com" class="agentEmail"><i
                            class="fas fa-envelope"></i><span>john42@gmail.com</span></a>
                </h3>
            </div>

            <div class="box">
                <img src="images/pic-1.png" alt="">
                <h3><i class="fas fa-phone"></i><span>+1 947-363-8836</span></h3>
                <h3><a href="mailto:william74@gmail.com" class="agentEmail"><i
                            class="fas fa-envelope"></i><span>william74@gmail.com</span></a></h3>
            </div>

            <div class="box">
                <img src="images/pic-2.png" alt="">
                <h3><i class="fas fa-phone"></i><span>+1 947-363-8836</span></h3>
                <h3><a href="mailto:Amelia296@gmail.com" class="agentEmail"><i
                            class="fas fa-envelope"></i><span>Amelia296@gmail.com</span></a></h3>
            </div>

            <div class="box">
                <img src="images/pic-4.png" alt="">
                <h3><i class="fas fa-phone"></i><span>+1 384-342-5993</span></h3>
                <h3><a href="mailto:Ashlyn@gmail.com" class="agentEmail"><i
                            class="fas fa-envelope"></i><span>Ashlyn@gmail.com</span></a>
                </h3>
            </div>

            <div class="box">
                <img src="images/pic-5.png" alt="">
                <h3><i class="fas fa-phone"></i><span>+1 244-048-9635</span></h3>
                <h3><a href="mailto:harry86@gmail.com" class="agentEmail"><i
                            class="fas fa-envelope"></i><span>harry86@gmail.com</span></a>
                </h3>
            </div>

            <div class="box">
                <img src="images/pic-6.png" alt="">
                <h3><i class="fas fa-phone"></i><span>+1 846-298-3993</span></h3>
                <h3><a href="mailto:Luna76@gmail.com" class="agentEmail"><i
                            class="fas fa-envelope"></i><span>Luna76@gmail.com</span></a>
                </h3>
            </div>

        </div>

    </section>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

<?php include 'components/footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

<?php include 'components/message.php'; ?>

</html>