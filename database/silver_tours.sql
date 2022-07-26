<?php 
require_once 'PHPSAPGateway.php';
$gateway= new PhpSapGateway;

//Set your authentication credentials below(Required)
$username="Dennis";
$apiKey="0Mr0xi42yZ1TYmHAHquF5so1HHlgkBMZq6Q9rg3FG76lS022GougG2nQqYw9MLBt";


//Set PhoneNumber and Amount below(Required)
$PhoneNumber="+2547579690";
$Amount="10";
//Set any metadata you want to attach to the request below(optional);
$LNMOmetadata = [
    "MetaData"   => "0987654321"
];

//Pass authentication credentials and your LNMO data into an array
$LNMOData = array(
'PhoneNumber' => $PhoneNumber,
'Amount' => $Amount,
'username'=>$username,
'apiKey'=>$apiKey,
'LNMOmetadata'=>$LNMOmetadata
);

//Convert the array into JSON string.
$LNMODataEncoded = json_encode($LNMOData);

//Thats it,from here we will take care of the rest.
try {
$result=$gateway->ProcessLNMO($LNMODataEncoded);
print_r($result);
} catch (Exception $e) {
echo $e->getMessage();
}
?>
<?php
echo '<script>
window.alert("Please wait for Mobile checkout/STK-PUSH on your device to continue with payment.");
window.location.href="tour-history.php";
</script>';
?>