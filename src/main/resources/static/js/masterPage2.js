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

$(document).ready(function () {
    console.log("onload of masterPage2 is called")
    console.log("Page is loaded")
        //Save&Continue
        function selectMenuItem(selectValue) {
            // Get the <ul> element by its class name
            console.log("selectMenuItem() Called")
            var submenuList = document.querySelector('.custom-submenu');
            if (!submenuList) {
                console.error('Could not find the submenu list.');
                return;
            }

            // Find the <li> element with the ID matching the selectValue
            var selectedMenuItem = document.getElementById('subMenu' + selectValue);
            if (!selectedMenuItem) {
                console.error('Could not find the menu item with ID subMenu' + selectValue);
                return;
            }

            // Remove the 'active' class from all <li> elements
            var menuItems = submenuList.getElementsByTagName('li');
            for (var i = 0; i < menuItems.length; i++) {
                menuItems[i].classList.remove('active');
            }

            // Add the 'active' class to the selected <li> element
            selectedMenuItem.classList.add('active');
        }

        // Call the function with the value of the "select" parameter
        var selectParameterValue = getUrlParameter('select');
        if (selectParameterValue) {
            console.log("calling selectMenuItem()")
            selectMenuItem(selectParameterValue);
        }
});


