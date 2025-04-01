<?php
include 'db.php'; // Database connection

// Fetch all students from the database
$result = $conn->query("SELECT * FROM students");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .btn {
            padding: 5px 10px;
            text-decoration: none;
            border: none;
            color: white;
            cursor: pointer;
        }
        .edit-btn {
            background-color: #4CAF50;
        }
        .delete-btn {
            background-color: #f44336;
        }
        .btn:hover {
            opacity: 0.8;
        }
        .container {
            max-width: 1200px;
            margin: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Student List</h1>
        <a href="add_student.php"><button class="btn" style="background: #007bff;">Add New Student</button></a>
        <table>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Middle Name</th>
                <th>Last Name</th>
                <th>Student ID</th>
                <th>Email</th>
                <th>Strand</th>
                <th>Level</th>
                <th>Actions</th>
            </tr>
            <?php while ($row = $result->fetch_assoc()): ?>
            <tr>
                <td><?= htmlspecialchars($row['id']) ?></td>
                <td><?= htmlspecialchars($row['first_name']) ?></td>
                <td><?= htmlspecialchars($row['middle_name']) ?></td>
                <td><?= htmlspecialchars($row['last_name']) ?></td>
                <td><?= htmlspecialchars($row['student_id']) ?></td>
                <td><?= htmlspecialchars($row['email']) ?></td>
                <td><?= htmlspecialchars($row['strand']) ?></td>
                <td><?= htmlspecialchars($row['level']) ?></td>
                <td>
                    <a href="edit_student.php?id=<?= $row['id'] ?>" class="btn edit-btn">Edit</a>
                    <a href="delete_student.php?id=<?= $row['id'] ?>" class="btn delete-btn" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
            <?php endwhile; ?>
        </table>
    </div>
</body>
</html>
