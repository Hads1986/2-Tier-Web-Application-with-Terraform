#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`

cat > /var/www/html/index.html <<EOL
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  
</head>
<style media="screen">
  body {
          background-color:#800000;
          font-size: 50pt;
          color: white;
    }
</style>
<body>
    <div class="container-fluid">
      <div id="main" class="text-left">
  <h2> <p style="color:white;"> Welcome to  ACS Final Project website in ${env} Environment! </p></h2>
    <h2> <i>  <p style="color:white;"> Built by  ${prefix} </i> </h2>
    <h2><i><p style="color:white;"> <i>Group Members:Sneha Pillay, Sneha Mudavath, Arun Bains & Varnika Bassi</i></h2>
        <h2><i>Request Resolved by DSN host  $(hostname -f)</i></h2>
             <h2><i>Thank you!</i></h2>
              </div>
      <div class="row">
        <div class="col-md-6 text-center">
         <img src="https://acs-webimages.s3.amazonaws.com/thankyou-first.jpg" width="400" height="400" alt="..." class="img-rounded">
        </div>
      
      
      
      </div>
    </div>
</body>
</html>
EOL
sudo systemctl start httpd
sudo systemctl enable httpd