<?php
    include 'dbConnect.php';

if($_SERVER["REQUEST_METHOD"] == "POST") {

    if(isset($_POST['updateStatus'])) {
        $orderId = $_POST['orderId'];
        $status = $_POST['status'];

        $sql = "UPDATE `orders` SET `orderStatus`='$status' WHERE `orderId`='$orderId'";   
        $result = mysqli_query($conn, $sql);
        if ($result){
            echo "<script>alert('Berhasil melakukan update');
                window.location=document.referrer;
                </script>";
        }
        else {
            echo "<script>alert('Gagal melakukan update');
                window.location=document.referrer;
                </script>";
        }
    }
    
    if(isset($_POST['updateDeliveryDetails'])) {
        $trackId = $_POST['trackId'];
        $orderId = $_POST['orderId'];
        $name = $_POST['name'];
        $time = $_POST['time'];
        $phone = $_POST['phone'];
        if($trackId == NULL) {
            $sql = "INSERT INTO `deliverydetails` (`orderId`, `deliveryByName`, `deliveryByPhone`, `deliveryTime`, `dateTime`) VALUES ('$orderId', '$name', '$phone', '$time', current_timestamp())";   
            $result = mysqli_query($conn, $sql);
            $trackId = $conn->insert_id;
            if ($result){
                echo "<script>alert('Berhasil melakukan update');
                    window.location=document.referrer;
                    </script>";
            }
            else {
                echo "<script>alert('Gagal melakukan update');
                    window.location=document.referrer;
                    </script>";
            }
        }
        else {
            $sql = "UPDATE `deliverydetails` SET `deliveryByName`='$name', `deliveryByPhone`='$phone', `deliveryTime`='$time',`dateTime`=current_timestamp() WHERE `id`='$trackId'";   
            $result = mysqli_query($conn, $sql);
            if ($result){
                echo "<script>alert('Berhasil melakukan update');
                    window.location=document.referrer;
                    </script>";
            }
            else {
                echo "<script>alert('Gagal melakukan update');
                    window.location=document.referrer;
                    </script>";
            }
        }
    }
}

?>