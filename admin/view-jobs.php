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

if (!isset($_SESSION['userid']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

$result = $conn->query("SELECT * FROM jobs");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin - View Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1542744173-8e7e53415bb0') no-repeat center center fixed;
            background-size: cover;
        }
        .container-box {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            max-width: 900px;
            margin: 60px auto;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }
        h2 {
            color: #000;
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .job-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 15px;
            background: #f9f9f9;
        }
        .job-card h5 {
            color: #333;
        }
        .btn-back {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container container-box">
    <h2>All Jobs Posted</h2>
    <?php if ($result && $result->num_rows > 0): ?>
        <?php while ($row = $result->fetch_assoc()): ?>
            <div class="job-card">
                <h5><?php echo htmlspecialchars($row['title']); ?></h5>
                <p><strong>Location:</strong> <?php echo htmlspecialchars($row['location']); ?></p>
                <p><strong>Salary:</strong> <?php echo htmlspecialchars($row['salary_range']); ?></p>
                <p><strong>Description:</strong> <?php echo htmlspecialchars($row['description']); ?></p>
            </div>
        <?php endwhile; ?>
    <?php else: ?>
        <div class="alert alert-warning text-center">No jobs have been posted yet.</div>
    <?php endif; ?>

    <div class="text-center btn-back">
        <a href="admin-dashboard.php" class="btn btn-secondary">Back to Dashboard</a>
    </div>
</div>

</body>
</html>
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

if (!isset($_SESSION['userid']) || $_SESSION['role'] !== 'admin') {
    header("Location: ../login.php");
    exit;
}

$result = $conn->query("SELECT * FROM jobs");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin - View Jobs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1542744173-8e7e53415bb0') no-repeat center center fixed;
            background-size: cover;
        }
        .container-box {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            max-width: 900px;
            margin: 60px auto;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }
        h2 {
            color: #000;
            text-align: center;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .job-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 15px;
            background: #f9f9f9;
        }
        .job-card h5 {
            color: #333;
        }
        .btn-back {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container container-box">
    <h2>All Jobs Posted</h2>
    <?php if ($result && $result->num_rows > 0): ?>
        <?php while ($row = $result->fetch_assoc()): ?>
            <div class="job-card">
                <h5><?php echo htmlspecialchars($row['title']); ?></h5>
                <p><strong>Location:</strong> <?php echo htmlspecialchars($row['location']); ?></p>
                <p><strong>Salary:</strong> <?php echo htmlspecialchars($row['salary_range']); ?></p>
                <p><strong>Description:</strong> <?php echo htmlspecialchars($row['description']); ?></p>
            </div>
        <?php endwhile; ?>
    <?php else: ?>
        <div class="alert alert-warning text-center">No jobs have been posted yet.</div>
    <?php endif; ?>

    <div class="text-center btn-back">
        <a href="admin-dashboard.php" class="btn btn-secondary">Back to Dashboard</a>
    </div>
</div>

</body>
</html>
