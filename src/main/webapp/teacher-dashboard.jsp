<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Dashboard - StudyPartner</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 250px;
            background-color: #343a40;
            padding-top: 20px;
            color: white;
        }
        .sidebar a {
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            display: block;
        }
        .sidebar a img {
            width: 20px;
            height: 20px;
            margin-right: 10px;
            vertical-align: middle;
        }
        .sidebar a:hover {
            background-color: #343a40;
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }
        .hero {
            background: #89cdd5;
            color: white;
            text-align: center;
            padding: 100px 20px;
        }
        .hero img {
            max-width: 150px;
            margin-bottom: 20px;
        }
        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
        }
        .hero p {
            font-size: 1.2rem;
            margin: 20px 0;
        }
        .footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .card img {
            width: 100%;
            height: auto;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <a href="teacherhome"><img src="icons/dashboard.jpg" alt="Dashboard">Dashboard</a>
        <a href="viewstudentreports"><img src="icons/reports.png" alt="Reports">Student Reports</a>
        <a href="addreport"><img src="icons/reports.png" alt="Add Report">Add Student Reports</a>
        <a href="addrecommendation"><img src="icons/recommendations.png" alt="Recommendations">Add Student Recommendations</a>
        <a href="addstudent"><img src="icons/add students.png" alt="Add Student">Add Students</a>
        <a href="viewstudents"><img src="icons/view students.png" alt="View Students">View Students</a>
        <a href="deletestudent"><img src="icons/delete students.png" alt="Delete Student">Delete Students</a>
        <a href="viewstudentbyid"><img src="icons/search.png" alt="Search">View Students By ID</a>
        <a href="addmarks"><img src="icons/search.png" alt="add marks">Add Marks</a>
        <a href="/logout"><img src="icons/logout.png" alt="Logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="hero">
            <img src="https://media.istockphoto.com/id/1330641849/photo/female-math-teacher-in-school.jpg?s=612x612&w=0&k=20&c=qqqo-pRJBrE5ItkCljXOVfRSSpLnMa0hVrbhy-ZoydU=" alt="Welcome Image">
            <h1>Welcome, Faculty!</h1>
            <p>You're logged in to the StudyPartner Dashboard. Use the navigation to manage student performance and generate reports.</p>
            <a href="/viewstudentreports" class="btn btn-light btn-lg">View Student Reports</a>
        </div>

        <!-- Dashboard Section -->
        <div class="container">
            <h2 class="mt-5">Dashboard Overview</h2>
            <p>Here you can track student progress, generate detailed reports, and get insights to improve learning outcomes.</p>

            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="data:image/jpeg;base64,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" alt="Performance">
                        <h5 class="card-title">Student Performance</h5>
                        <p class="card-text">Monitor student grades, attendance, and overall progress.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="https://www.itarian.com/images/business-report.jpg" alt="Reports">
                        <h5 class="card-title">Generate Reports</h5>
                        <p class="card-text">Create custom reports based on student performance data.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="https://www.cflowapps.com/wp-content/uploads/2023/03/prcs_imprvmnt_tols.jpg" alt="Improvement">
                        <h5 class="card-title">Improvement Tracker</h5>
                        <p class="card-text">Identify students who need extra support and track improvements.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
          <div class="row">
            <div class="col-xl-3 col-xxl-3 col-sm-6">
              <div class="widget-stat card bg-primary">
                <div class="card-body">
                  <div class="media">
                    <span class="me-3">
                      <i class="la la-users"></i>
                    </span>
                    <div class="media-body text-white">
                      <p class="mb-1">Total Students</p>
                      <h3 class="text-white">80</h3>
                      <div class="progress mb-2 bg-white">
                        <div
                          class="progress-bar progress-animated bg-white"
                          style="width: 80%"
                        ></div>
                      </div>
                      <small>80% Increase in 20 Days</small>
                    </div>
                  </div>
                </div>
              </div>
            </div>
             <div class="col-xl-3 col-xxl-3 col-sm-6">
                    <div class="widget-stat card bg-secondary">
                      <div class="card-body">
                        <div class="media">
                          <span class="me-3">
                            <i class="la la-graduation-cap"></i>
                          </span>
                          <div class="media-body text-white">
                            <p class="mb-1">Total Performance</p>
                            <h3 class="text-white">85%</h3>
                            <div class="progress mb-2 bg-white">
                              <div
                                class="progress-bar progress-animated bg-white"
                                style="width: 76%"
                              ></div>
                            </div>
                            <small>5% Increase in 2 months</small>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
               <div class="col-xl-3 col-xxl-3 col-sm-6">
                    <div class="widget-stat card bg-warning">
                      <div class="card-body">
                        <div class="media">
                          <span class="me-3">
                            <i class="la la-user"></i>
                          </span>
                          <div class="media-body text-white">
                            <p class="mb-1">students passed</p>
                            <h3 class="text-white">45</h3>
                            <div class="progress mb-2 bg-white">
                              <div
                                class="progress-bar progress-animated bg-white"
                                style="width: 50%"
                              ></div>
                            </div>
                            <small>50% Increase in 25 Days</small>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  

        <!-- Footer -->
        <footer class="footer">
            <p>&copy; 2024 StudyPartner. All Rights Reserved.</p>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
