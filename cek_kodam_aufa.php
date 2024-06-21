<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cek Khodam</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('singa.jpg'); 
            background-size: cover;
            background-position: center;
            text-align: center;
            height: 100vh;
            overflow: hidden; 
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            max-width: 500px;
            background-color: rgba(255, 255, 255, 0.9); 
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.5);
            text-align: center;
            position: relative;
            z-index: 1; 
        }
        h1 {
            color: #333;
            font-size: 24px;
            margin-top: 20px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
            margin-top: 10px; 
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        p {
            margin: 20px 0;
            font-size: 18px;
        }
        .author-info {
            position: absolute;
            bottom: 10px;
            left: 0;
            right: 0;
            color: #333;
            font-size: 14px;
        }
        .author-info a {
            color: #333;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Cek Khodam</h1>
        <?php
        $nama = "";
        $error = "";
        
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $nama = trim($_POST['nama']);
            
            if (empty($nama)) {
                $error = "Nama tidak boleh kosong!";
            } else {
                echo "<p>Nama Anda: $nama</p>";

                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "aufa_kodam";
                
                $conn = new mysqli($servername, $username, $password, $dbname);
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }
                
                $sql = "SELECT nama_khodam FROM khodam_names ORDER BY RAND() LIMIT 1";
                $result = $conn->query($sql);
                
                if ($result->num_rows > 0) {
                    $row = $result->fetch_assoc();
                    $khodam_name = $row["nama_khodam"];
                    echo "<p>Nama Khodam Anda: $khodam_name</p>";
                } else {
                    echo "<p>Khodam tidak ditemukan!</p>";
                }
                
                $conn->close();
            }
        }
        ?>
        
        <form method="post">
            <label for="nama">Masukkan Nama Anda:</label><br>
            <input type="text" id="nama" name="nama" value="<?php echo htmlspecialchars($nama); ?>"><br>
            <span style="color: red;"><?php echo $error; ?></span><br><br>
            <input type="submit" value="Cek Khodam">
        </form>
        
        <div class="author-info">
            Author by <a href="https://github.com/Aufaruq" target="_blank">github.com/Aufaruq</a>
        </div>
    </div>
</body>
</html>
