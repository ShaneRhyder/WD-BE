var descriptions = [
   "A08: Islands of Personality"
];
var links = [
   "webpages/A08/index.php"
];

for (var i = 0; i < descriptions.length; i++) {
    var myContainer = document.getElementById("cardContainer");

    myContainer.innerHTML +=
        '<div class="project-card">' +
        '<h1><b>' + 'Project' + " " + (i+1) + '</b></h1>' +
        '<p>' + descriptions[i] + '</p>' +
        '<a href="' + links[i] + '">' +
        '<button class="project-btn">View Details</button>' +
        '</a>' +
        '</div>';
}

