<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard - StudyPartner</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Include Chart.js -->
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
        .sidebar a:hover {
            background-color: #6EB8E1;
        }
        /* Main content styling */
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }
        .hero {
            background: #89cdd5;
            color: white;
            text-align: center;
            padding: 100px 20px;
            position: relative;
        }
        .hero h1 {
            font-size: 3rem;
            font-weight: bold;
        }
        .hero p {
            font-size: 1.2rem;
            margin: 20px 0;
        }
        .hero img {
            position: absolute;
            top: 10px;
            right: 20px;
            width: 150px;
            border-radius: 50%;
            border: 3px solid white;
        }
        .footer {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .card-title {
            font-size: 1.25rem;
        }
        .card-text {
            font-size: 1rem;
        }
        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 5px;
        }
        /* Chart container styling */
        .chart-container {
            width: 100%;
            height: 400px;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <a href="studenthome">Dashboard</a>
        <a href="viewstudentreports">View Reports</a>
        <a href="viewmarks">View Marks</a>
        <a href="viewrecommendations">View Recommendations</a>
        <a href="studentProfile">Student Profile</a>
        <a href="updateprofile">Update Profile</a>
        <a href="studentlogin">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="hero">
            <h1>Welcome, ${student.name}!</h1>
            <p>You're on your StudyPartner Dashboard. Use the menu to monitor your progress, check reports, and get suggestions to improve.</p>
            <!-- Profile Image -->
            <img src="https://as2.ftcdn.net/v2/jpg/03/88/94/19/1000_F_388941905_0NjTRUeFAnFEojcn7z7RBZhNA0rVImx8.jpg" alt="Student Profile Picture" />
        </div>

        <!-- Dashboard Section -->
        <div class="container">
            <h2 class="mt-5">Dashboard Overview</h2>
            <p>Here you can monitor your academic progress, view detailed reports, and access personalized recommendations.</p>

            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="https://static.vecteezy.com/system/resources/previews/012/714/358/non_2x/little-children-feel-happy-because-they-get-good-marks-in-exams-vector.jpg" alt="Marks Image" />
                        <h5 class="card-title">Marks</h5>
                        <p class="card-text">Track your course grades and evaluate your progress over time.</p>
                        <a href="viewgrades" class="btn btn-primary">View Grades</a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxIQERUSDxIVFRAVFRUVFRYXEBgXFRcWFRgWFhcXFRUYHyogGBolGxYYITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OGxAQGjIlICUvLS0rLS0tLS0vLS4uLS0tLS4tLS0rLS0tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABAIDBQYHAQj/xABTEAABAwICAwoHCwoDBwUAAAABAAIDBBESIQUTMQYUQVFTYXGRktEHIjJSgZOxFRcjJUJUYqHB0uEWMzVjcnOClLKzo+LwZIOEtMPT8SRDosLE/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAIDBAEFBv/EADQRAAIBAgMFBQgCAwEBAAAAAAABAgMRBBIhEzFBUVIUMmGBkQUiM3GxweHwNKFi0fFyQv/aAAwDAQACEQMRAD8A7igCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAiV9cIudx2D7SsmKxcaC5t8C6jQdR+BHkqZ2txljcO0i5uBzqiVfFQjnlFW5cS1U6MnlUnclUNa2Zt25EGzgdoPdzrXh8RGvHNHzRTVoypuzJKvKggCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgPHOAzJsFxuwIc2lIm/KueYX+vYuOcVva9SLlyTfyTI50zfyY3dJIaPtVM8VRgu9f5ftiUIVZvSFvnp+THVlRjdi4b35hbYF4GIr7SeY9ejSyxsX5dLvc0twgXBF7nh5luq+0lOk4qOr08DNTwc1Uu2rf2Q6OqML8YBc0jC4DblmCOMjPrWHCYns9TNa6ej/35GytSVWGXjvRl4dPwOyLiw8TmkfgvehjKE90156fU8mVCrHfB+SuvVXJ7alhzD2kczgrlUi9zI5Jci6CpkQgCAIAgCAIAgCAIAgCAIAgCAIAgCA4g7d1pDE8b5yEsrR8FFsbI5oHk8QCoc3c3RpQaWg/LvSHzn/Ci+6uZ3zO7GHI9Zu40i4gCozJAHwUW05D5K46jSvcbGHI35jpC0CWQyPAzcbC54SAMgvn6+InWleT8jVSpRpr3Ue3VN2W2BK4LBAEAQHhAO1AWnUrDtaOq3sUXCL4E1UmuJjtM1tRSxONJKWWaXgENcPFzIs4G1xxcNlrweJlRqKF/deluXyK61GNaDk1qjVxu80h84/wY/ur6DOzBsYch+XekfnH+DH91czsbGHIzO43ddW1FdDDNNiifrMTdWwXwxPcMw2+0BThJt2K6tOMY3SOqq0yhAEAQBAEAQBAEAQBAEAQBAcX8HFLHLpCRsrGvbeqOF7Q4XExsbFUR7xsqNqmreB1b3ApPmsHqGdyuyoy55cymXQVKGktpYMQBItAy9xstlxqFSN4tJcCUJvMrs1wMqeQd2HL5hYXE9DPb2uH6z3V1PIO7Dk7LiehjaYfrGrqeQd2CnZcT0MbTD9Y1VTyDuwe9Oy4noY2mH6z3VVPIHsnvTsuJ6GNph+saqp5A9k96dlxPQxtMP1jU1XInsnvTsuJ6GNph+s91NVyJ7J71zsuJ6GNph+si1NBUyOYHQHDcB3i5WJF757LKylhK+0i5QejX1JurQVOSU9bP6GO3c7jAS6ehYA5vlwtFg4AeVENgf8AR2O6dv00qd1dHhUsQ08stxztrr7FnNxsXg9/SdN0y/2ZVOn3imv3TuKvMQQBAEAQBAEAQBAEAQBAEBBrqzD4rPK4TxfipJFFWpbRHKPBWfjF/RU/3Vnj32ejU+EvL6HZVcZQgCAIAgCAIAgCAIAgMZUeUelTW4plvNE3a7j9aXVNI34bbJEMhL9JvAJPqdw55qupTvqjTQr5fdluNY8H87W6Spi42GKUZi1iYpBYg7DfLNU0+8acRJRhd+B3VXmMIAgCAIAgCAIAgCAIAgItdU4BYeUfq511K5XUnlWm8xTQrDIc48Fn6Rd/xP8AcKyR757VT4S8jsyuMhTjF7XF7Xtw247ICxv+K+HWx4r2trG3vsta+2/AgDa+InCJYy69rCRt78Vr7UBU2rjLsAkYX5+KHjFlty2oC5rm2viFr2vcWve1r9OSAodVMDgwvaHnY0uGI34htQFx7wBckAc5ttyH1oA54FgSATkM9vDlx5IAHi5AOY283DmgLUdZE7FhkYcPlWeDh/ascvSgIzoop3YmyBwAscDwePbZdTIuKZIjoo27G9eftS7CikcWr220xIP9on+uN5+1Vw+Idx/8N+X1OobmNL6wamQ+OB4pPygODpHsV0omDBYnMskt/DxNhUD0AgCAIAgCAIAgCAICmV4aCTsCHG7K5hZHlxJO0qxKxjbu7s9aF0HNPBd+knf8V/cKyR757FT4S8jsyuMhorp5t9+6GqbvfX72x4zj3pfU/m8Nrb5+Fx3/ADaAzho4/dEHVsvvcuvgF8WtBve21AUUtFGNJzERsB3rSkHAPK1tXmDbbsQGH3FTNE8zDUUmPfekCINUBWC9VMcRk1ty0g4vzY8UjPhIEB0bqaAEAmmqaxuIWJ1VQK4AOtwMka2x2APaD8skAZfSdRRNqqtldqnY4oLRuaHySACW4jjsXPPM0E3QEWrpaiopaOikYXy73ZLV45sLhgYGRh0gDvhNcQ8EDbTuz4wLtYH18VCJDq6lssoc5oPwVVBFK1zmjK7RIw5HJzTxOQFhtTJPTaRJje2YSxMnjYHF1mQ0++GxEAOeDHjwkZkObbM2QE7S9VRTaNrm0Lqd+GjmY5sJYS0aqTCxzWZt4bNPOgMjuSqGPY/BUUc5Bbc0sQYG5ZCQCWS7tudx0IDPIDiOlR8dSfvpP7LlCHxDmP8A4b8vqbBHIWODmmzgbg8RC1M+aUnF3W86FomuE8TXjbscOJw2j/XGqWrM+goVVVgpImLhcEAQBAEAQBAEAQGO0lLcho6T9inFFFaXAiNCkUousahJHL/Bf+kj01X9blkj3z1qnwl5HZ1cZCJLpKFpLXSsDhtBeLjpHAu2KZYilF2clf5ldNWxSEiORriMyA4EgdC5YlCrCekWmVz1LI7ax7W32YnAX6LodlUjDvO3zLPunBy0frW96WZDtFLrXqh7pwctH61velmO0UuteqHunBy0frW96WY7RS616o8904OWj9a3vSzHaKXWvVD3Tg5aP1re9LMdopda9UXoKmOS+re11tuFwNumyE4VIT7rT+ReQmEAQHFNMj46k/ev/sFQh8Q5jv4b8vqZsrUfMszW5Ou1c2rJ8WTLocNnXs6lGa0NmBq5KmV7n9TdlUe2EAQBAEAQBAEB442QGDe/E4njViMTd3craF06i8xCaOV+DD9JHpqv63LJHvnqVPhLyO0K4yGuwaYZTxsErXBjmFzXgXDn3cXNy2O4c9t1K1zzo4qNGKU1ZWvfm+Xz+pcoxKXxST5OfI8hlh8Gwxusy+07ATfhRnae0cozqb23pyWV6fd+JP0rBG/DrGROte2sNrbPJyP+rLidjZUo06nfin8zHbwp+RpO2PupmZV2Oh0L0G8KfkaTtj7qZmOx0Oheg3hT8jSdsfdTMx2Oh0L0G8KfkaTtj7qZmOx0Oheg3hT8jSdsfdTMx2Oh0L0JFIGRX1TKZl9uGW17bL2ajdyynRp0+5FL5EnfruOH1/8AlXC0lwPxNBNv4XXHoPCgLiA4vp4W03J+8P10yhD4hzHfw35fUzJWo+ZZS1xBBGRBuDzjMIcu1qjpNBUCWNkg+U0HoPCPQVS959JSnngpcyQuFgQBAEAQBAEBG0g+0Z58utdW8rqu0TEtVhlRdaUJIvMQmjlXgx/SX8VV/U9ZI989Sp8JeR2lXGQxe8JA3AHROjDrtD4iSLHE3MOANjsNl25l2M0st01wuvzwL8dLIXtfK9pwXwhjC3Mi1yS43yJy50JqnNyUptabrL8sv1ETnWwkDpZi+3JcLyzvV/ns9SPvIBvV/ns9SPvIBvV/ns9SPvIBvV/ns9SPvIC7DBby8LuhgHegLmqb5o6ggGqb5o6ggKgLbEB6gONboh8eP/b/APyhQh8Q5jv4b/eJlitR8yygocNy3GT4oSzzHHqdn7bque89n2dO9Nx5M2BQN4QBAEAQBAEBjtMOyaOcnq/8qUSiu9EjHtKmZ0XWlCRdY5CVzlngzPxmP2qr2yLJHvnrVPhLyO1K4yGMpTLK0P12DFchoY02bfK5dckrpmhnms2a1+FizR6RJm1YkMjQ4scSwNAeGl9muGRsAQRzhdsV0696uTNfg9ONr7/qSNLulGHVTRxbb423vstbP/V1xWLq0arts5Jc7q5jtZU/PKbsDvXdCjZ4vrXp+RrKn55Tdgd6aDZ4vrXp+RrKn55Tdgd6aDZ4vrXp+RrKn55Tdgd6aDZ4vrXp+RrKn55Tdgd6aDZ4vrXp+SZo6pe3FvioheMsOGzbbb3zz4Fx2L6MayvtJJ8rKxO39FyjO23vXC8vMeHC7SCDsINx1oCpAcd3Tj48d0j/AJZQh8Qjjv4b/eJkitR80ygoRNi3ES/CSN42A9k2/wDsoTPR9my9+S8P36m4qs9gIAgCAIAgCAxWmTm3oP2KcTNiN6ILSpFBdaUJIra5Dpy7waH4yb+3Vf8AVWSPfPYqfCXkdsVxkNWmhYWMtNqKqMFhJy8W5uCDtHCCpXPKnCLirTyzWn79idRMiBhjpzibGXOcRntY5t3O2Yi53t4kZfSjTThClqldv0a18W2ZKtcRaxI27Ii/2DJRNxF1p85/8o/uQDWnzn/yj+5ANafOf/KP7kA1p85/8o/uQF2FrnbHkdMGH+qyAub3fyg9UO9AN7v5QeqHegJETSAATc8drfUgKkByDdWPjvq/5cqEPiEcd/Df7xJ5Wo+aKChEzO453/qemNw+tp+xRnuNvs/43k/sb0qj3AgCAIAgCAIDEab8pvQfsU4mXEb0Y8FSM6LjXISK2uQ7c5h4NT8Zs/bqv+qske+z2p/CXkdvVxkIj9JRAkY8wbGwJseK4G1dsVOvTTtcrp66N5wtdd1r2sQbcdjwLh2NWEnZMVddFDbWyNZe9sTgL222XUripWp0+/JL5kb3dpeXj7YTKyrtmH616oe7tLy8fbCZWO2YfrXqh7u0vLx9sJlY7Zh+teqHu7S8vH2wmVjtmH616oe7tLy8fbCZWO2YfrXqiRSV8U19VI19rXwuBtfZdGmiynXp1O5JP5ElcLQgCA5Nuogc/TgDGl3itJsL2GoIueIXUE0ql2MVTlUwrjFXd/uZ2PQUpFyWjmvdTddcEebD2RUavKSX9mNq6Z0TsLxn9RHGFbGakro8/EYedCeWX/TJ7jhep6GO9re9J7i32f8AG8n9je1Ue6EAQBAEAQBAYrTzcmnnI6//AApxM2JWiZiWlSMpWHIduVtch05p4Nz8ZxfvKr2TLJHvs9yfwl5HcFcZDXYtMimjYJY3assJa8Z4n3cSwjgJ4Dw5qVrnmrFKjBKa0to+b5f6LtGyXFC+oPjvke7BwRtMTrMHUL86MnTVS8JVHq23bkrPT94k/SYYcOPVcNtY2/ZUTZKEZd5XIOCHipOwF25DYUuleiGCHipOwEuNhS6V6IYIeKk7AS42FLpXohgh4qTsBLjYUuleiGCHipOwEuNhS6V6IuwTMZfA6mbfbhFr9NiuE404x7qsXd/nlYes96EybDLdocXNN+EeT6ECVy1PVWybnz8H4quU7bi2FK+rIOEXLrDE7yjbM2yF/Qqm7mhKysipcOkTSVC2Zljk4eSeI9ynCTi7oz4nDwrwyy8nyIO5CjcyeXGLFrAO069x2VqclKN0eLg8POjXlGa1S+vFeht6geoEAQBAEAQBAQtMR3iPNY9W36iV2O8prq8Ga8HK0wXJEMDnZ7AqpVEjTSw06ivuRIbTAbSfqCr23ga1gV1Gn7j9x0tLWGeSRurjfM5mRvIJA8DK/iWx8+Y9Kri9bmya9xRR0ilmxsDrWvwfUrYSzK5nqQyScSH7nyAYWSM1YN2h8OMtzxDMOGw7Mr5KdzHsZpWUlbxV/uvIuxUjy9r5ZA7DfCGx4ACRYk3JJNrj0oSjTlmUpyvbdpb7skTRuNsLy3oAN+sLheW97v5V3ZZ3IBvd/Ku7LO5AN7v5V3ZZ3IBvd/Ku7LO5AXYWEeU4u6QB7AgLiA1Td7pHSNPGx2jIBM4uGPxQ6zbOv4pc3hw7OdRWbP8A4287nXbL4/Y1DRO7HTVVJqnaOGNoLnYmSQMtkL4nkg+i6sko2szkM17ovaT3f1FEQK/Rr4gTZr21Aexx4g7Da/Ne6qVJS7si51XHvItQ+FWmd5cczP4GuHWHfYovD1ODRYsRS4pk7R/hDoHO8aYtB86N4+yygqNRPVFkq9KS0f8ARmot1lC/83V05PEZ2tPU7NcnCol7sSEakHxJsOm42uu1wJIHkuDmkdIWWWMdGVpxa/tFyw+1j7rM3RVzJgTGb225bFrw+Jp103DgY6tGdJ2kSVoKggCAIAgCAplaCCDsIIKHGrqxr0dEBkTc/UAq51m9EdoYGMVeev0JbiAL7AFUbdEjxovmfQOL8VywT5ELSGkmRyRQE/CzlzWNGZ8VrnuPRZv1hdjHM7HJTyLMbBSRYGBvCB+K0pJaIx3b1e8hUpllaH63CHXIaIwbC5tcnacl0zQ2lRZs1vCxaotIl0mESaxmN0ZJjw2e1uPxXDJwyIPOutFdKvedlK6u1u4pX0fHkSdKvmGHUyRM231l89lsNiuK3EurKs7bJpc7mO1tZy9J1O713Qoy4zqj6Ma2s5ek6nd6aDLjOqPoxrazl6Tqd3poMuM6o+jGtrOXpOp3emgy4zqj6Ma2s5ek6nd6aDLjOqPoybo6eUYt8SwOGWHAbcd73PQuO3Avoqsr7Vp8rXJu+o/Pb2guF4fmMTLEjYePmuuPwOxtfUxNZSxzsdHMxr43+U1zQWkbcwVnubLcDlO6XQGj4qptMKOz3NxB0crowBZxHisOZ8XiUqUajlbMZ8fiKVCi6ip3a8jEP3GRF2Us0bSeHC8DtNuetbpRaXuu7PnKHtaTqJVopRb1aT0/59CZUeCupDQ6KpieCLjFE5mRzHjNc72LKsS+KPpeyp92RhqrcDpGPZAyTnjnb7JMJU1iokJYOa4EURaSpjkyuiP0BNbL6Ud2nrU41Kb3FcqdSO+51Dwa6cqHUuKad8sjpX2bI4ufYYW4bO8baD1rxsdjJ08SoU3wWnPibsNh1OlmkvM6e05L1UYT1dAQBAEBi9IyFzsINmi1+cng6lnqybdjXRilHM95bZx8fs4FEm+RQ8YjbgGZ6eAfanENXRVLIGi5XUruyIykoxcnuRyrclpSSr01BNKczLUMaBsa1kU4AHV13U4q0rEZvNTzHbSbK4ympzQMwtw1GonDdVJc2uy5vkeEXJa4cfpU7nkTpxsrTyS3P5fu5/8ATJ0uqxQR0xDmR4icOYAwObdztlyXdJzXH4mqns7whS3K+75W+5kK51rZgbdsRf7NiibSJrPpD+UegGs+kP5R6Aaz6Q/lHoBrPpD+UegLsMZf5LmZcdOR7SgLm9X+dH6n/MgG9X+dH6n/ADICTE0gAG1+YWHUgMfUswvI4DmPt+v2qiaszXTd4mv7odz4qZIp2m00OIDiexzSC08Vibg9PGu05KLuzPjaMq1Jwjv0MR7mTYsOrdfoy7WxatpG17nznYsRmy5Hf+vXcbdSQ6tjWbcLQL9Cxyd3c+po09nTjDkrFb4mnaFBpMuUmtx5SwYZGEHhI6wQuwjaSYqTcoNGZstRgPUAQBAEB442FyjCV9DCx+MLn5RJPpWRa6noPTTkXV0iUsH15ogyBpSXMN9KuoRvK/I8/wBo1MtNQ5/Rfk5d4PInnSMD2tJbHJUueRsa0smYCf4nNHpUL2lc3WvSS8EdlM+eJ+YHB3LmbW7OZLRstCZSNOG5yuSbcV+BaErGRu7uX0AQBAEAQBAEAQBAEBYqocQy8oZjuUZxuiynPK/Ax7TdZzUeocCHQgKXG1jxFp6iEFr6GYWowhAEAQBAR682jd0EdeShU7rLKXfRAaLC3EqDUz1AEBitJROMgwi9wFfRkle55ntCjOcouKvw+5a3LaAbQwlgOKRzi+R9tpcSbD6IvYek8Kpbuz0Y91JmXgbrJAPktzPoU6Su78iuvKyUef0/JmVcZwgMRusqXxUkronYJCGxsfa5Y6V7Yg8A+aX39C6t5xkLcvBqairgZJI+CMwYdZK+VzZHRXkGN5JzGB1r7XnjR7gjZFw6EAQGD3V6aZTQSHWhkoDSAGh7wHkgEMPCcDwCQRcbHWsepXKa9ZUo34vRL9/s0infpB4E+pmEV8Rca+ox249W12D0AYeZTsjz3iq+XOldf+dPW9/O3kbZuR3QGo+De7GbOLJLAOdqyGyMkAAGNpc3MABwcDYWIEZKxvw9dVY33PijZ1EvCA16srmtrDBsJhZL03c9h6sLe0s9TSRso60/kS1EkEAQFMguCOZHuCdmZWF12g8YB6wtKd0YpKzaK104EAQBARtI/m3ej2hQqd1ltHvohKg0hAEB4gKJ32GW3YEfgdVt7Jei4wxhccr8J4h/orUo5UomByc5Ob4mG0pokyCV8OkZo6h4fqzvhuqYSDgbqbYS0G1zbEc811M4DpOvc04I6ONwblrK1zy51voR2aL8Nz0BdsgRKuirH07qaWppalkjMBke50ErSRm74K7XkOzFsFsulLoFWhqWspGOa2ejqHve6SSZ7nxPe91hdzG4hk1rWixGTQjaYRs1DUEsaJXxmX5Qjd4t/ogm+xROktAEBzrd/Rl1RnkHNhkafOEL3h4/hL4z/vVZA8v2mpKCkvFeqtc2SHdXSNgD3yNZhaMTDkQQNn47FHK7l1LG0XTVt/Lia7uDopHvFQGFkL5ppRfIBuDVgW2+MX4v4DddkRwEXZvy/fle3kdDUD0AgNB3Qw49O0gBIvTv2cwqCAea9upVTjmdjRTllhfxNljdfbtGRHOqkXtFaHAgCHCZo6S7LcLSW9Wz6rK6m7xM9aNpX56kpWFQQBAEBG0j+bPo9oUKndZbR76/eBCVBpCAIDwmyA1PSe6G+kaSiiIvI9+t+i1sUjwOkkA9A51KlrK5HEaQyrjvOgtYALWytb0LQY0Ub3Z5jeyEA3uzzG9kIBvdnmN7IQDe7PMb2QgPWwtBuGtB5mhAXEAQEPSmjI6lmCQHI4muBs5jrEYmngNiRbYQSCCCQup2ONJqzNag3CRiYSP1LwDc4qUiV1uN7ZA0HoZbmXc7M3Y6W7W3K7t6XsbfGwNADQABkABYAcwUTSkkrIqQ6EBpOmB8e0X7iX+mZQ/+y5fDfzNprKO5xs8rhHA4d6jOnfVHaVWyyy3ETFnYgg8RH+rqr5l+9XRUgCApim1b7nyHZHmPAV2Mssr8BOGeFuKMuCtJhPUAQBARdI+Rbjc36jf7FXU7pbR71yGqTSEB442zOxAtTympzMbnKMf/ACXYwc9XuFSoqei3/Q+fzNURVG+KaTDURzzuD3WdbE6RhycCDk4jMLt7PQ6oZo6mW/LjTnztnqIf+2pZ2R2ET0budOfOo/URf9tM7Gwiejd3pv5zH6iP7iZ2NhE9/LzTfziL1Mf3Uzs5sInv5fab5eL1LPupnY2ET38v9N8tD6lncm0Y2ET33wdN8rB6lqZ2d2ER74WmuUg9S1NoxsInvvh6a8+D1I702jObCJ774mmvPp/UjvTaMbCJ7742mvOp/Uj7ybQbCI98fTXHT+q/zJtBsInvvkaa/wBm9V/mTaM5sImX3IadqK3SdI+rwa1rJm+I3CLauQ8Z412LvI5UgowsjsKtMpG0hDiZl5QzHoVdSN4ltGeWWu5mPjfiAKpTuapKzsVocND3ZeEOCnDoaa00+wm/wTD9Jw8o8w9JCujQcl724plXyv3d5qm4jd/PDXY62Zz4JsMcmI+LHa+B7G7GtaTY2tkSTchaXBZbIy5m3dneta3jHWFUSK0AQGPrZLuw8DdvSfw9qpqSu7GmlG0b8yyqy0IChsWseGfJGbvsCKOaVg5ZI5uPAzDW2FhsC1GFu5p/vbUOZtLmXOPwvC4lx4OMqGRFyrySse+9vQ8UvrfwTZobeZ5729D+t9b+CbNDbzHvb0P631v4Js0NvMom8GlGfJdK0/tgjqsmziRlWqPc7eRAl8GTPkyX6SR7LruSBQ62K4Sj6fkju8G5HEf96ftau7OBW6+O/wATweDc83rT91NnAdox3+Jfi8GTT5Ulugl3tATJAmq2L4yj6f8ACdB4M6QeW+Vx5nBo9h9qjs4miNaqu87+Re97ah/W+t/BNmiW3mPe2of1vrfwTZo7t5HnvbUP631v4Js0NvIe9tQ/rfW/gmzQ28iZojcPS0szJ4tZrGYrYpLjxmlpuLcRXVBLUhKrKSszZlIrCA1XT+l4NH4nVDw1hzYNrnHzWN2krOqbztI2bWOzUm/A5Dut3f1FbeOK8NMcsIPjvH6xw4PojLjutcKSjv3mOdVyNPCtKimV4aCXbEZ1GL90puWl9c/vVOhYfZyiDB7tNPDR9HLUG2MDDGD8qR2TB0XzPMCupXdjjdjkm5vwoTReLWt1zCc5G2bKOcjJr/q9KToJ6osjXa0Z0/QmnqatbippWvt5Tdj2/tMOYWeUHHeaIzUtxkXGwvxKBNK5I0Q3xC47XEnqy71ZRXu3KcS/etyJ6uM4QBAEAQBAEAQBAEAQBAEAQBAEAQBAcC3a6BnqNNTQay5cBLG6R5IbC4A2G2zQ7E0AcS5WxEKFPPL5eZ2FKVSeWJp2laF9NM+GW2OM2NjlmA4EHisQVbSqxqwU47mVzg4ScWY01NzaMXPCfkj08KlfkLcz1tMNr/Gdz7B0BdscuXNU3zR1BLIXZ9dqgsOF+HLTj310VGQWxRRa0X2PkkuA4czWtIHO5ynDeRluOdq0gXKaofG4Pjc5j27HNcWuHQQjVzpvugvCfMwCOtbrWZDWNAbIB9JuTXei3pWaph8y900UsRlfvanYNzGmaarhDqWVsjWgBwGTmk52e05tO3aEUXFJMjOeaTZl10iEAQBAEAQBAEAQBAEAQBAEAQBAEAQHJ/Dho+djqeupGvMkYkilMYOIMDTK15I2NaGyXvl4y5KMZrLNXR2MpRd4uzOImaSqe58zy65u43uSTxk7VZGKtZaJEZPW/EmMaALAWCtKypAEB9ZVdS2KN8khDY2NL3E7A1ouSfQFnLT5U3T1btIVctVKXYpHXaMvEYMmM9DQPTc8KtUCGYx7Y5GeS7EOI7etds0ND1tUL2ddp5+9dzHLG07ltAwVccz5qjVmMAtALc7gnE7FtblbLrWHG4udBxyxvf8AbGnD0I1b3drHUPAZR4KGWU7ZZ3W/Zja1v9WNaqm8oidHUCQQBAEAQBAEAQBAEAQBAEAQBAEAQBAUSxhzS1wu1wIIOwg5EFAfJmlNFmgraijd/wC3IQ0naWeUw+ljmlWQZGRSrCAQBAfSfhI/RdX+6PtCpjvRZLcfNiuKwgImkNg6VGRKJRQ+SOlSp7mRlvPpLwPfomH9uf8AvSKqe8nHcbooEggCAIAgCAIAgCAIAgCAIAgCAIAgCAID5s8Mv6cf+7h/tlShvOPca0risIAgP//Z" alt="Reports Image" />
                        <h5 class="card-title">Attendence Tracking</h5>
                        <p class="card-text">Track Attendance, Boost Productivity!</p>
                        <a href="viewreports" class="btn btn-primary">View Attendence</a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card p-4">
                        <img src="https://i.pinimg.com/736x/78/f9/8b/78f98bde6b56f18fafca7f0901645386.jpg" alt="Recommendations Image" />
                        <h5 class="card-title">Feedback</h5>
                        <p class="card-text">Receive constructive feedback to enhance your performance and achieve academic excellence.</p>
                        <a href="viewrecommendations" class="btn btn-primary">View Feedback</a>
                    </div>
                </div>
            </div>

            
                <!-- Performance Pie Chart -->
                <div class="col-md-6">
                    <div class="card p-4">
                        <h5 class="card-title">Course Performance</h5>
                        <div class="chart-container">
                            <canvas id="performanceChart"></canvas> <!-- Canvas for Performance Pie Chart -->
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

    <!-- Chart.js Scripts -->
    <script>
       
        // Pie Chart for Performance
        const performanceChart = document.getElementById('performanceChart').getContext('2d');
        const performancePieChart = new Chart(performanceChart, {
            type: 'pie',
            data: {
                labels: ['Excellent', 'Good', 'Average', 'Poor'], // Example performance levels
                datasets: [{
                    data: [50, 30, 15, 5], // Example performance distribution
                    backgroundColor: ['#DE3163', '#F48FB1', '#FFD8DB', '#FF91A4'],
                    borderColor: '#ffffff',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    tooltip: {
                        callbacks: {
                            label: function(tooltipItem) {
                                return tooltipItem.label + ': ' + tooltipItem.raw + '%';
                            }
                        }
                    }
                }
            }
        });
    </script>
</body>
</html>
