<?php
session_start();
$timeout_duration = 900; // 15 minutes = 900 seconds

if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY']) > $timeout_duration) {
    session_unset();
    session_destroy();
    header("Location: ../login.php?session_expired=1");
    exit();
}
$_SESSION['LAST_ACTIVITY'] = time();

include '../config.php';

// Admin authentication
if (!isset($_SESSION['userid']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1542744173-8e7e53415bb0') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            color: black;
        }
        .dashboard-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            max-width: 800px;
            margin: 60px auto;
        }
        h2 {
            font-size: 32px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }
        .nav-link {
            color: black !important;
            font-weight: bold;
        }
        .nav-link:hover {
            background-color: #f1f1f1 !important;
        }
    </style>
</head>
<body>

<div class="container dashboard-container">
    <h2>Welcome, <?php echo htmlspecialchars($_SESSION['username']); ?> (Admin)</h2>

    <!-- Navigation Menu -->
    <nav class="nav nav-pills justify-content-center mb-4">
        <a class="nav-link me-2" href="view-users.php">View All Users</a>
        <a class="nav-link me-2" href="view-jobs.php">View All Jobs</a>
        <a class="nav-link me-2" href="view-applications.php">View All Applications</a>
        <a class="nav-link me-2" href="../change-password.php">Change Password</a>
        <a class="nav-link me-2" href="../contact.php">Contact Us</a>
        <a class="nav-link" href="../logout.php">Logout</a>
    </nav>

    <div class="alert alert-info text-center">
        Use the navigation menu to manage users, jobs, and applications.
    </div>
</div>

</body>
</html>
