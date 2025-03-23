<?php
    ob_start();
    include('header.php');
    include("database.php");
?>
    <div class="container"></div>


<?php 
$sel="select * from payment where email='".$_SESSION['email']."'";
$res=mysqli_query($conn,$sel); 
$fetres=mysqli_fetch_object($res); 
@$pname2=$fetres->product_name; 


if(isset($_POST['submit']))
{
    $_SESSION['uid']=$oid=uniqid();
    $_SESSION['unm']=$name=$_POST['name'];
    $email=$_POST['email'];
    $number=$_POST['mobile'];
    $address=$_POST['address'];
    $payment=$_POST['cardo'];
    $card=$_POST['card'];
    $date=$_POST['expiry'];
    date_default_timezone_set('Asia/Kolkata');
    $odate=date('d-m-y');
    $fndate=date("Y-m-d");
    $delivery_date=date("Y-m-d",strtotime("+5 days")); 
    var_dump($payment);
    if(isset($_SESSION['cart_item']))
    {
        $count=0;
        $i=1;
        $product= array();
        $pr=array();
        $priceofprod=array();
        foreach($_SESSION['cart_item'] as $key)
        {
        $p=$key['price'];
            $result=$key['price']*$key['quantity'];
            $product[$count]=$key['name'];
            $count++;
            $price[$count]=$key['price'];
            $count++;
        }
        foreach($_SESSION['cart_item'] as $key)
        {
            $pr[$count]=$key['quantity']; 
            $count++;
            $priceofprod[$count]=$key['price']*$key['quantity'];
            $count++;
        }
        foreach($_SESSION['cart_item'] as $key=>$value)
        {
            @$total=$total+$value['price']*$value['quantity']; 
        }
        $_SESSION["totalpr"]=$total;
        $tpr=$_SESSION['totalpr']*(5/100);
        $tpay=$_SESSION['totalpr']+$_SESSION['totalpr']*(5/100); 
        $pri=implode(",",$price);
        $prod=implode(",", $product);
        $qty=implode(",",$pr); 
        $prodp=implode(",",$priceofprod); 

  # if($payment == 'card')
   # {
    #        $qr=mysqli_query($conn,"INSERT INTO `payment`(`o_id`, `name`, `email`, `mobile_no`, `payment_method`, `card_no`, `expiry_date`,`order_date`,`product_name`,
     #       `product_quantity`, `product_price`, `total_price`) VALUES ('$oid','$name','$email','$number','$payment','$card','$date','$odate','$prod',
      #      '$qty','$pri','$total')");
        
       #     echo "<script>alert('thank you for shopping..');document.location='invoice.php?id=$oid'</script>";
    #}
    #else
    #{
     #   $qr=mysqli_query($conn,"INSERT INTO `payment`(`o_id`, `name`, `email`, `mobile_no`, `payment_method`, `card_no`, `expiry_date`,`order_date`,`product_name`,
      #  `product_quantity`, `product_price`, `total_price`) VALUES ('$oid','$name','$email','$number','$payment','$card','$date','$odate','$prod',
       # '$qty','$pri','$total')");
    
        #echo "<script>alert('thank you for shopping..');document.location='invoice.php?id=$oid'</script>";
    #}

    if($payment == 'card') {
        $qr = mysqli_query($conn, "INSERT INTO `payment`(`o_id`, `name`, `email`, `mobile_no`, `payment_method`, `card_no`, `expiry_date`, `order_date`, `product_name`, `product_quantity`, `product_price`, `total_price`,`shipping_address`) VALUES ('$oid','$name','$email','$number','$payment','$card','$date','$odate','$prod','$qty','$pri','$total','$address')");
        
        echo "<script>alert('Thank you for shopping! Your payment was successful.');document.location='invoice.php?id=$oid'</script>";
    } elseif($payment == 'cash') {
        $qr = mysqli_query($conn, "INSERT INTO `payment`(`o_id`, `name`, `email`, `mobile_no`, `payment_method`, `order_date`, `product_name`, `product_quantity`, `product_price`, `total_price`,`shipping_address`) VALUES ('$oid','$name','$email','$number','$payment','$odate','$prod','$qty','$pri','$total','$address')");
        
        echo "<script>alert('Thank you for shopping! Your order has been placed successfully, and you have opted for Cash on Delivery.');document.location='invoice.php?id=$oid'</script>";
    }
    
}}
if(isset($_SESSION['email']))
{
    $result=mysqli_query($conn,"SELECT * FROM `registration` WHERE `email`='".$_SESSION['email']."'");
    $row=mysqli_fetch_array($result);
}
?>
<script>
 // $(document).ready(function(){
   // $("#card").hide();
     //$("#cash").click(function(){
       // $("#card").hide();
    //});
    //$("#crd").click(function(){
      //  $("#card").show();
       // $("#crno").val('');
        //$("#date").val('');
        //$("#cvv").val('');
    //});


//});
$(document).ready(function() {
    $("#card").hide();

    $("#cash").click(function() {
        $("#card").hide();
        $("#crno").removeAttr('required'); // Remove required attribute when not needed
        $("#date").removeAttr('required');
        $("#cvv").removeAttr('required');
    });

    $("#crd").click(function() {
        $("#card").show();
        $("#crno").attr('required', true); // Add required attribute when needed
        $("#date").attr('required', true);
        $("#cvv").attr('required', true);
    });
});

</script>


<div class="row" style="background-color:#F3F3F3;">
<div class="col-sm-6 col-sm-offset-3">
<form class="form-horizontal" method="post" enctype="multipart/form-data">
    <legend class="text-danger col-sm-offset-1"></legend>
        <div class="form-group">
            <label class="control-label col-sm-3">Name:</label>
            <div class="col-sm-9">
                <input type="text" class="form-control"  name="name"  value="<?php echo $row['name']; ?>"/>
            </div>
        </div>
        
        <div class="form-group">
            <label class="control-label col-sm-3">Email:</label>
            <div class="col-sm-9">
                <input type="email" class="form-control"  name="email" value="<?php echo $row['email']; ?>"
                            readonly="readonly"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3">Mobile no:</label>
            <div class="col-sm-9">
                <input type="text" class="form-control"  name="mobile" value="<?php echo $row['mobile']; ?>"/>
            </div>
        </div>        

        <div class="form-group">
            <label class="control-label col-sm-3">Address:</label>
            <div class="col-sm-9">
               <input type="text" class="form-control" name="address" value="<?php echo $row['address']; ?>"/>

            </div> 
        </div>       


         <div class="form-group">
            <label class="control-label col-sm-3">Payment method:</label>
            <div class="col-sm-9 radio radio-inline">
               <label class="col-sm-3 col-sm-offset-3"><input type="radio" name="cardo" id="crd" value="card" required/>Card</label>
               <label class="col-sm-3 col-sm-offset-3"><input type="radio" name="cardo" id="cash" value="cash" required/>Cash on delivery</label> 
           <br><br>
        <span id="card" style="background-color:#060;">
        <div class="form-group">
            <label class="control-label col-sm-3">Card No:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  name="card" id="crno" required/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Expiry Date:</label>
            <div class="col-sm-5">
                <input type="date" class="form-control"  name="expiry" id="date" required/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3">Cvv:</label>
            <div class="col-sm-5">
                <input type="text" class="form-control"  name="cvv" id="cvv" required/>
            </div>
        </div>
        </span>
        </div>
        </div> <div class="form-group">            
             <div class="col-sm-offset-3 col-sm-9">
                <input type="submit" class="btn btn-success" name="submit"  value="submit"/>
             </div>
         </div>  
        
    <div class="col-sm-1"></div>

</div>
</div>  

<?php include('footer.php'); ?> 