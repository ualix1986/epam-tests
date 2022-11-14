Function Test-Subnet {

param (

     [parameter(Mandatory=$true)]

     [Net.IPAddress]

     $ipaddress1,

 

     [parameter(Mandatory=$true)]

     [Net.IPAddress]

     $ipaddress2,

 

     [parameter(Mandatory=$true)]

     [Net.IPAddress]

     $mask

)

 

($ipaddress1.address -band $mask.address) -eq ($ipaddress2.address -band $mask.address)

 

}