<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>StudyPartner - Home</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-image: data:image/jpeg;base64,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; /* Replace with the actual URL */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-position: center;
    }
    /* Sidebar Styles */
    .sidebar {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 250px;
        background-color: #343a40
; /* Semi-transparent blue */
        padding-top: 20px;
        color: white;
    }
    .sidebar a {
        color: white;
        padding: 10px 15px;
        text-decoration: none;
        display: block;
    }
    .sidebar a:hover {
        background-color: #FFFFFF; /* Darker blue on hover */
    }
    /* Main content styling */
    .main-content {
        margin-left: 250px;
        padding: 20px;
    }
    .hero {
background: #89cdd5; /* Solid blue color */
        color: white;
        text-align: center;
        padding: 100px 20px;
        border-radius: 10px;
    }
    /* Add other existing styles here */
</style>

</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <a href="/">Home</a>
        <li>
            <a class="has-arrow" href="javascript:void(0);" aria-expanded="false">
                <i class="fa fa-sign-in"></i> <span class="nav-text">Login</span>
            </a>
            
            <ul aria-expanded="false">
                <li><a href="teacherlogin.jsp">Teacher Login</a></li>
                <li><a href="studentlogin.jsp">Student Login</a></li>
            </ul>
        </li>
        <a href="studentregister">Student Registration</a>
        <a href="about.jsp">About Us</a>
        <a href="contact.jsp">Contact</a>
        <a href="faqs.jsp">FAQs</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Hero Section -->
        <div class="hero">
            <h1>Welcome to StudyPartner</h1>
            <p>Join us to explore a wide range of courses and enhance your skills!</p>
            <a href="teacherlogin.jsp" class="btn btn-light btn-lg text-primary">Teacher Login</a>
            <a href="studentlogin.jsp" class="btn btn-outline-light btn-lg">Student Login</a>
        </div>

        <!-- Features Section -->
        <div class="container features text-center mt-5">
            <h2 class="mb-4">Why Choose StudyPartner?</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXKg2qJGL2EeWx6nWnn32m4Ix6OHewpHG8Rg&s" class="card-img-top mx-auto" alt="Easy Analysis" style="width: 100px;">
                        <div class="card-body">
                            <h5 class="card-title">Easy Performance Analysis</h5>
                            <p class="card-text">Get detailed insights.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="data:image/png;base64,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" class="card-img-top mx-auto" alt="Custom Reports" style="width: 100px;">
                        <div class="card-body">
                            <h5 class="card-title">Custom Reports</h5>
                            <p class="card-text">Generate custom reports.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcv7PXxe34Ir2_T2U2uuBQQv_8UBw4hy2S-Q&s" class="card-img-top mx-auto" alt="Improvement Tracking" style="width: 100px;">
                        <div class="card-body">
                            <h5 class="card-title">Track Progress</h5>
                            <p class="card-text">Monitor student progress.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer>
            <p>&copy; 2024 StudyPartner. All Rights Reserved.</p>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
