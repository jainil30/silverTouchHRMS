//Master Page 2

var dropdown = document.getElementsByClassName("dropdown-btn");
var i;
for (i = 0; i < dropdown.length; i++) {
    dropdown[i].addEventListener("click", function () {
        this.classList.toggle("active");
        var dropdownContent = this.nextElementSibling;
        if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
        } else {
            dropdownContent.style.display = "block";
        }
    });
}

document.querySelectorAll(".dropdown-item").forEach((item) => {
    item.addEventListener("click", (event) => {
        const dropdownToggle = item.closest(".dropdown").querySelector(".dropdown-toggle");
        dropdownToggle.innerText = event.target.dataset.value;
    });
});


