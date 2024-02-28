//Add Employee
$(document).ready(function () {
    $("#content-area > div").hide();
    $("#sub_menu_employee").show();

    $("#subMenuEmployee").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_employee").show();
    });
    $("#subMenuPersonal").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_personal").show();
    });
    $("#subMenuContact").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_contact").show();
    });
    $("#subMenuFamily").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_family").show();
    });
    $("#subMenuEmergency").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_emergency").show();
    });
    $("#subMenuNominee").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_nominee").show();
    });
    $("#subMenuHealth").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_health").show();
    });
    $("#subMenuPhotograph").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_photograph").show();
    });
    $("#subMenuAttachments").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_attachments").show();
    });
    $("#subMenuJob").click(function (e) {
        $("ul.custom-submenu li").removeClass("active");
        $(this).addClass("active");
        $("#content-area > div").hide();
        $("#sub_menu_job").show();
    });

    $("ul.custom-submenu li a").click(function (e) {
        e.preventDefault();
        $(this).parents(".custom-main-menu").toggleClass("active");
        $(this).parents(".custom-main-menu").find(".fas").toggleClass("fa-minus fa-plus");
    });

    $(".custom-main-menu").click(function () {
        $(this).toggleClass("active");
        $(this).find(".fas").toggleClass("fa-minus fa-plus");
    });

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

var options = { searchable: true };

// Fetch countries data from the REST Countries API
  fetch("https://restcountries.com/v2/all")
    .then(response => response.json())
    .then(data => {
      // Loop through the data and create options for the select element
      data.forEach(country => {
        const option = document.createElement("option");
        option.value = country.name;
        option.text = country.name;
        document.getElementById("country").appendChild(option);
      });
    })
    .catch(error => {
      console.error("Error fetching countries:", error);
      // Handle errors appropriately, e.g., display an error message to the user
    });





//Contact
NiceSelect.bind(document.getElementById("addressType"), options);
NiceSelect.bind(document.getElementById("countryContact"), options);
NiceSelect.bind(document.getElementById("state"), options);
NiceSelect.bind(document.getElementById("district"), options);
NiceSelect.bind(document.getElementById("city"), options);

$(document).ready(function () {
    $("#openPopup").click(function (e) {
        e.preventDefault();
        var myModal = new bootstrap.Modal(document.getElementById("popupModal"), {
            keyboard: false,
        });
        myModal.show();
    });
    $("#btnCloseAddNewAddressPopup").click(function () {
        $("#popupModal").modal("hide");
    });
});


//Emergency
NiceSelect.bind(document.getElementById("relationEmergency"), options);

$(document).ready(function () {
    var table = $("#emergencyRecords").DataTable({});
    $("#emergencyAddRecordBtn").click(function (e) {
        e.preventDefault();
        $("#emergencyRecords_wrapper").toggle();
    });
    $("#emergencyRecords_wrapper").toggle();
});

//Employee
NiceSelect.bind(document.getElementById("salutation"), options);
NiceSelect.bind(document.getElementById("department"), options);

NiceSelect.bind(document.getElementById("unit"), options);
NiceSelect.bind(document.getElementById("designation"), options);
NiceSelect.bind(document.getElementById("group"), options);
NiceSelect.bind(document.getElementById("employeeEligibleFor"), options);

//Family
NiceSelect.bind(document.getElementById("relationFamily"), options);
NiceSelect.bind(document.getElementById("genderFamily"), options);
NiceSelect.bind(document.getElementById("maritalStatusFamily"), options);
NiceSelect.bind(document.getElementById("nationalityFamily"), options);

$(document).ready(function () {
    $("#familyForm").toggle();
    $("#addNewRecord").click(function (e) {
        e.preventDefault();
        $("#familyForm").toggle();
        $("#addNewRecord").toggle();
    });
});

$(document).ready(function () {
    var table = $("#familyRecords").DataTable({});
    $("#familyAddRecordBtn").click(function (e) {
        e.preventDefault();
        $("#familyRecords_wrapper").toggle();
    });
    $("#familyRecords_wrapper").toggle();
});


//Health
NiceSelect.bind(document.getElementById("bloodGroup"), options);


//Nominee
NiceSelect.bind(document.getElementById("relationNominee"), options);
NiceSelect.bind(document.getElementById("genderNominee"), options);

$(document).ready(function () {
    $("#nomineeTable tbody tr").addClass("align-middle");
    var table = $("#nomineeRecords").DataTable({});
    $("#nomineeAddRecordBtn").click(function (e) {
        e.preventDefault();
        $("#nomineeRecords_wrapper").toggle();
    });
    $("#nomineeRecords_wrapper").toggle();
});


//Personal
NiceSelect.bind(document.getElementById("gender"), options);
NiceSelect.bind(document.getElementById("marriageStatus"), options);
NiceSelect.bind(document.getElementById("communityCategory"), options);
NiceSelect.bind(document.getElementById("religion"), options);
NiceSelect.bind(document.getElementById("caste"), options);
NiceSelect.bind(document.getElementById("nationality"), options);
NiceSelect.bind(document.getElementById("bankName"), options);
NiceSelect.bind(document.getElementById("bankBranchName"), options);
NiceSelect.bind(document.getElementById("vehicleType"), options);
NiceSelect.bind(document.getElementById("issuedState"), options);
NiceSelect.bind(document.getElementById("country"), options);

$(document).ready(function () {
    $("#vahicleProvided").change(function () {
        if ($(this).is(":checked")) {
            $("#governmentVehicleProvidedExtra").show();
        } else {
            $("#governmentVehicleProvidedExtra").hide();
        }
    });

    $("#isResidentOfOtherCountry").change(function () {
        if ($(this).is(":checked")) {
            $("#isResidentOfOtherCountryExtra").show();
        } else {
            $("#isResidentOfOtherCountryExtra").hide();
        }
    });

    $("#governmentVehicleProvidedExtra").hide();
    $("#isResidentOfOtherCountryExtra").hide();
});


//Photograph

function handleImagePreview(input, previewId, nameInputId, noImageTextId) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $(previewId).css("background-color", "");
            $(previewId).find("img").remove();
            $(previewId).prepend('<img src="' + e.target.result + '" alt="Uploaded Image">');
            $(noImageTextId).hide();
        };

        reader.readAsDataURL(input.files[0]);
        $(nameInputId).val(input.files[0].name);
    } else {
        $(previewId).css("background-color", "white");
        $(previewId).find("img").remove();
        $(noImageTextId).show();
    }
}
$("#resetPhotograph").click(function (e) {
    $("#noImageText").remove();
    $("#noSignatureText").remove();
    $("#photoPreview").find("img").remove();
    $("#photoPreview").append('<div id="noImageText" class="no-image-text">No Image</div>');
    $("#signaturePreview").find("img").remove();
    $("#signaturePreview").append('<div id="noSignatureText" class="no-image-text">No Image</div>');
});
$("#photoInput").change(function () {
    $("#photoPreview").find("#noImageText").remove();
    handleImagePreview(this, "#photoPreview", "#photoName", "#noImageText");
});

$("#signatureInput").change(function () {
    $("#signaturePreview").find("#noSignatureText").remove();
    handleImagePreview(this, "#signaturePreview", "#signatureName", "#noSignatureText");
});


//Attachments 

NiceSelect.bind(document.getElementById("documentCategory"), options);

$("#documentInput").change(function () {
    $("#documentPreview").find("#noDocumentText").remove();
    handleImagePreview(this, "#documentPreview", "#documentName", "#noDocumentText");
});

$("#resetAttachments").click(function (e) {
    $("#noDocumentText").remove();
    $("#documentPreview").find("img").remove();
    $("#documentPreview").append('<div id="noDocumentText" class="no-image-text">No Image</div>');
});

//Job
NiceSelect.bind(document.getElementById("employmentType"), options);

NiceSelect.bind(document.getElementById("employmentCategory"), options);

NiceSelect.bind(document.getElementById("employmentStatus"), options);

NiceSelect.bind(document.getElementById("employmentGrade"), options);
NiceSelect.bind(document.getElementById("insuranceStartGroup"), options);
