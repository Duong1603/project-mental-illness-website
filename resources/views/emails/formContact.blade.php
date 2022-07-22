<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Send email </title>
	<script>scr="{{'js/core/bootstrap.min.js'}}" </script> 

</head>
<body>
    <h1>Test gửi mail</h1>
    <div className="page-section">
        <div className="container">
        <h1 className="text-center wow fadeInUp">Make an Appointment</h1>
        <form className="main-form" action={{route ('email.send')}} method="post">
            @csrf
            <div className="row mt-5 ">
            <div className="col-12 col-sm-6 py-2 wow fadeInLeft">
                <input
                type="text"
                className="form-control"
                name="name"
                placeholder="Full name"
                />
            </div>
            <div className="col-12 col-sm-6 py-2 wow fadeInRight">
                <input
                type="text"
                className="form-control"
                name="email" 
                placeholder="Email address.."
                />
            </div>
           
          
            <div className="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <input
                type="text"
                className="form-control"
                placeholder="Subject.."
                name="subject"
                />
            </div>
            <div className="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
                <textarea
                name="message"
                id="message"
                className="form-control"
                rows={6}
                placeholder="Enter message.."
            ></textarea>
            </div>
            </div>
            <button type="submit" className="btn btn-primary mt-3 wow zoomIn">
            Submit Request
            </button>
        </form>
        </div>
    </div>
</body>
</html>