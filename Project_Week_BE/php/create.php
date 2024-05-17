<?php
    require_once "db_connect.php";
    require_once "file_upload.php";
    require_once "footer.php";
    require_once "navbar.php";

    if (!isset($_SESSION["adm"]) && !isset($_SESSION["shelter"])) {
        header("Location: home.php");
        exit;
    }
    $agencyForm = "";
    $agencyForm2 = "";
    $agencyOptions = "";

    if (isset($_SESSION["shelter"])) {
        $stmt = $connect->prepare("SELECT * FROM users WHERE id = ?");
        $stmt->bind_param("i", $_SESSION["shelter"]);
    } elseif (isset($_SESSION["adm"])) {
        $stmt = $connect->prepare("SELECT * FROM users WHERE id = ?");
        $stmt->bind_param("i", $_SESSION["adm"]);

        $sqlAcc = "SELECT * FROM users";
        $resultAcc = mysqli_query($connect, $sqlAcc);
        if (mysqli_num_rows($resultAcc) > 0) {
            while ($rowAcc = mysqli_fetch_assoc($resultAcc)) {
                if ($rowAcc["status"] == "shelter") {
                    $agencyOptions .= 
                    "<option value='{$rowAcc['id']}'>{$rowAcc['first_name']} {$rowAcc['last_name']}</option>";
                }
            }
        }
        $agencyForm = "
        <div class='mb-4'>
            <label for='agencyID' class='form-label'>Agency:</label>
                <select id='agencyID' class='form-select mt-2' name='agencyID'>
                    <option value=''>select agency</option>";
        $agencyForm2 = "
                    </select>
            </div>";
    }

    $stmt->execute();
    $resultUsers = $stmt->get_result();
    $rowUser = $resultUsers->fetch_assoc();

    if (isset($_POST["create"])) {
        $name = mysqli_real_escape_string($connect, $_POST["name"]);
        $address = mysqli_real_escape_string($connect, $_POST["address"]);
        $description = mysqli_real_escape_string($connect, $_POST["description"]);
        $size = (int) $_POST["size"];
        $age = (int) $_POST["age"];
        $vaccinated = mysqli_real_escape_string($connect, $_POST["vaccinated"]);
        $breed = mysqli_real_escape_string($connect, $_POST["breed"]);
        $price = (float) $_POST["price"];
        $picture = fileUpload($_FILES["picture"], "animal");
        $status = 1;

        if (isset($_SESSION["adm"])) {
            $agencyID = (int) $_POST["agencyID"];
        } else {
            $agencyID = $rowUser["id"];
        }

        $stmt = $connect->prepare("INSERT INTO animals (name, address, description, size, age, vaccinated, breed, status, picture, agency_id_fk, price) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssisssssdi", $name, $address, $description, $size, $age, $vaccinated, $breed, $status, $picture[0], $agencyID, $price);

        if ($stmt->execute()) {
            echo "<div class='alert alert-success' role='alert'>
            New entry has been created. {$picture[1]}
                </div>";
            header("refresh: 3; url=home.php");
        } else {
            echo "<div class='alert alert-danger' role='alert'>
                Oops! Something went wrong. {$picture[1]}
                </div>";
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create</title>
    <link rel="stylesheet" href="../css/update.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?= $nav ?>
    <div class="text-center mt-5 mb-5">
        <h2 class="text-center " id="welcome">Create a new entry:</h2>
        <hr class="MLLine" style="width:20vw;">
    </div>

    <div class="container mb-5 mt-5">
        <form method="POST" enctype="multipart/form-data"> 
           <div class="mb-4 mt-5">
               <label for="name" class="form-label">Name:</label>
               <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="mb-4">
                <label for="address" class="form-label">Address:</label>
                <input type="text" class="form-control" id="address" placeholder="E.g. Praterstraße 34, 1020 Vienna" name="address" required>
            </div>
            <div class="mb-4">
                <label for="description" class="form-label">Description:</label>
                <textarea class="form-control" id="description" style="height: 20vh;" name="description" required></textarea>
            </div>
            <div class="mb-4">
                <label for="size" class="form-label">Size:</label>
                <input type="number" class="form-control" id="size" placeholder="Size in cm" name="size" required>
            </div>
            <div class="mb-4">
                <label for="age" class="form-label">Age:</label>
                <input type="number" class="form-control" id="age" placeholder="Age in years" name="age" required>
            </div>
            <div class="mb-4">
                <label for="vaccinated" class="form-label">Vaccinated:</label>
                <select class="form-select mb-3" name="vaccinated" id="vaccinated" required>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select> 
            </div>
            <div class="mb-4">
                <label for="breed" class="form-label">Breed:</label>
                <select class="form-select mb-3" name="breed" id="breed" required>
                    <option value="Cat">Cat</option>
                    <option value="Dog">Dog</option>
                    <option value="Leopard Gecko">Leopard Gecko</option>
                    <option value="Bunny">Bunny</option>
                    <option value="Jumping Spider">Jumping Spider</option>
                </select> 
            </div>
            <div class="mb-4">
                <label for="price" class="form-label">Price(in$):</label>
                <input type="number" step="0.01" class="form-control" id="price" name="price" required>
            </div>
            <?= $agencyForm ?>
            <?= $agencyOptions ?>
            <?= $agencyForm2 ?>
           <div class="mb-4">
                <label for="picture" class="form-label">Picture:</label>
                <input type="file" class="form-control" id="picture" name="picture" required>
            </div>
            <button name="create" type="submit" class="btn text-white mb-5 mt-4 me-3" id="upBtn">Create Entry</button>
            <a href="home.php" class="btn btn-dark mb-5 mt-4">Back to Home</a>
        </form>
    </div>

    <?= $footer ?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
