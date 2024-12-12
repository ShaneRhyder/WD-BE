<?php
include("connect.php");

$islandID = isset($_GET['islandID']) ? $_GET['islandID'] : '';

$query = "SELECT * FROM islandsofpersonality";
$result = executeQuery($query);

$contentQuery = "SELECT * FROM islandcontents WHERE islandOfPersonalityID = '$islandID'";
$contentResult = executeQuery($contentQuery);

$islandImageQuery = "SELECT * FROM islandsofpersonality WHERE islandOfPersonalityID = '$islandID'";
$islandImageResult = executeQuery($islandImageQuery);

if (!isset($_GET['islandID'])) {
  header("Location: index.php?islandID=1");
}
?>

<!DOCTYPE html>
<!-- saved from url=(0065)https://www.w3schools.com/w3css/tryw3css_templates_portfolio2.htm -->
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Islands of Personality</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/png" href="../favicon/favicon.png">
  <link rel="stylesheet" href="./media/w3.css">
  <link rel="stylesheet" href="./media/css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body,
    h1,
    h2,
    h3,
    h4,
    h5 {
      font-family: "Raleway", sans-serif;
    }

    .w3-third img {
      margin-bottom: -6px;
      opacity: 0.8;
      cursor: pointer;
      transition: opacity 0.3s ease;
    }

    .w3-third img:hover {
      opacity: 1
    }

    .island img {
      cursor: pointer
    }
  </style>
</head>

<body class="w3-content" style="max-width: 100%; background-color: rgb(86, 86, 184);">

  <!-- Sidebar/menu -->
  <form method="GET">
    <nav class="w3-sidebar w3-bar-block w3-collapse w3-top w3-center w3-animate-left"
      style="z-index:3;width:300px;font-weight:bold; background-color: black;" id="mySidebar"><br>
      <h3 class="w3-padding-64 w3-center" style="color: white;"><b>Islands
          of<br>Personality</b></h3>
      <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-hide-large"
        style="color: white;">CLOSE</a>
      <?php
      if (mysqli_num_rows($result) > 0) {
        while ($personalityRow = mysqli_fetch_assoc($result)) {
      ?>
          <a href="?islandID=<?php echo $personalityRow['islandOfPersonalityID']; ?>"
            onclick="w3_close()"
            class="w3-bar-item w3-button"
            style="color: <?php echo $personalityRow['color']; ?>;">
            <?php echo $personalityRow['name']; ?>
          </a>
      <?php
        }
      }
      ?>
    </nav>
  </form>

  <!-- Top menu on small screens -->
  <header class="w3-container w3-top w3-hide-large w3-black w3-xlarge w3-padding-16"
    style="background-color: black; color: #ffffff;">
    <span class="w3-left w3-padding">Islands of Personality</span>
    <a href="javascript:void(0)" class="w3-right w3-button w3-black" onclick="w3_open()">☰</a>
  </header>

  <!-- Overlay effect when opening sidebar on small screens -->
  <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer"
    title="close side menu" id="myOverlay"></div>

  <!-- !PAGE CONTENT! -->
  <div class="w3-main w3-animate-right" style="margin-left:300px;">

    <!-- Push down content on small screens -->
    <div class="w3-hide-large" style="margin-top:83px"></div>

    <!-- Photo grid -->
    <div class="w3-row">
      <?php
      if (mysqli_num_rows($islandImageResult) > 0) {
        while ($islandImageRow = mysqli_fetch_assoc($islandImageResult)) {
      ?>
          <div class="w3-row island" style="background-color: <?php echo $islandImageRow['color']; ?>; color: black">
            <h1 class="text-center align-middle py-3 m-0"><b><?php echo $islandImageRow['name'] ?></b></h1>
            <h5 class="text-center align-middle py-3 m-0"><?php echo $islandImageRow['shortDescription'] ?></h5>
            <img src="./media/<?php echo $islandImageRow['image'] ?>" class="p-0" style="width: 100%;" onclick="onClick(this)" alt="<?php echo $islandImageRow['longDescription'] ?>">
            <h1 class="text-center align-middle py-3 m-0"><b>Core Memories</b></h1>
          </div>

      <?php
        }
      }
      ?>

      <?php
      if (mysqli_num_rows($contentResult) > 0) {
        while ($contentRow = mysqli_fetch_assoc($contentResult)) {
      ?>
          <div class="w3-third">
            <img src="./media/<?php echo $contentRow['image']; ?>" style="width:100%" onclick="onClick(this)"
              alt="<?php echo $contentRow["content"]; ?>">
          </div>
      <?php
        }
      }
      ?>
    </div>

    <!-- Modal for full size images on click-->
    <div id="modal01" class="w3-modal w3-black" style="background-image: url(media/background\ image.jpg); background-size: cover; padding-top:0" onclick="this.style.display='none'">
      <span class="w3-button w3-black w3-xlarge w3-display-topright">×</span>
      <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
        <img id="img01" class="w3-image mb-3">
        <p id="caption"></p>
      </div>
    </div>

  </div>

  <script>
    // Script to open and close sidebar
    function w3_open() {
      document.getElementById("mySidebar").style.display = "block";
      document.getElementById("myOverlay").style.display = "block";
    }

    function w3_close() {
      document.getElementById("mySidebar").style.display = "none";
      document.getElementById("myOverlay").style.display = "none";
    }

    // Modal Image Gallery
    function onClick(element) {
      document.getElementById("img01").src = element.src;
      document.getElementById("modal01").style.display = "block";
      var captionText = document.getElementById("caption");
      captionText.innerHTML = element.alt;
    }
  </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</body>

</html>