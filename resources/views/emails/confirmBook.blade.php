@extends('emails.master')
@section('emails.content')
  <!-- <body>
      dear Mr,
      we are going meeting wity yy at: ........
      Tink is link: <a>link google meet</a>


      <footer>
        phi fdsf dsf sdf
        -- logo --


        make by pnv()
      </footer>
  
  </body>
</html> -->

<body style="background-color: rgb(136,189,191)">
        <div class="form">
            <div>
                <img class="" alt="logo" src="http://imgur.com/VCdfPKq" width="10%">           
            </div>
        
            <div class="form-small"; style="padding: 0px">
                <div>
                    <img class="mail-image" alt="top image" src="http://imgur.com/jc0kp97" width="">
                </div>
                <h1 class="h1-font">Email Confirmation<h1>
                <p class="p-font">Hey @user, you're almost ready to start enjoying <b>Elephantry</b>.  
                Simply click the BIG yellow button below to verify your email address.</p>
                <div class="wrapper">
                    <a class="button" href="#">Verify email address</a>
                </div>

                <!-- Filter: https://css-tricks.com/gooey-effect/ -->
                <svg style="visibility: hidden; position: absolute;" width="0" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1">
                    <defs>
                        <filter id="goo"><feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />    
                            <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo" />
                            <feComposite in="SourceGraphic" in2="goo" operator="atop"/>
                        </filter>
                    </defs>
                </svg>               
            </div>

            <div>
                <h3 class="contact-font">Stay in touch<h3>

                <div class="social-buttons">
                    <a class="social-button facebook" href="#">
                        <i class="fa fa-facebook">
                        </i>
                    </a>
                    
                    <a class="social-button twitter" href="#">
                        <i class="fa fa-twitter">
                        </i>
                    </a>
                    
                    <a class="social-button google" href="#">
                        <i class="fa fa-google">
                        </i>
                    </a>
                </div>

                <p class="p-footer">Email sent by Elephantry.com <br>
                Copyright © 2017 Elephantry Inc. All rights reserved</p>
            </div>
        </div>

       
    </body>
@endsection