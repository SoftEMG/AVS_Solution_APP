﻿$(document).ready(function () {


    $("#btnPersonalDet").click(function () {


         //Validation data 

        var idForm = $('#lblidForm').text();

        var ddlVisaAp = $('#ddVisaApp').val();
        var ddlPurpose = $('#ddPurpose').val();
        var durationStay = $('#txtDurationStay').val();
        var ddVisasTime = $('#ddVisasTime').val();
        var ddTypeVisa = $('#ddTypeVisa').val();
        var ddPortIn = $('#ddPortIn').val();
        var ddPortOut = $('#ddPortOut').val();
        var PlacesVisited = $('#txtPlacesVisited').val();
        var DetProfesion = $('#txtDetailsProfesion').val();




        $.ajax(
            {
                type: "POST",
                url: '/Formularies/SavePersonalDetPakistan',
                data: {
                    idForm: idForm,
                    idVisaAp: ddlVisaAp,
                    idPurpose: ddlPurpose,
                    durationStay: durationStay,
                    idVisasTime: ddVisasTime,
                    idTypeVisa: ddTypeVisa,
                    idPortsIn: ddPortIn,
                    idPortsOut: ddPortOut,
                    pvPakistan: PlacesVisited,
                    dOfProfesion: DetProfesion

                },
                error: function (result) {
                    alert("There is a Problem, Try Again!");
                },
                success: function (result) {
                    console.log(result);
                    if (result.message == 'OK') {
                        //window.location.href = '/Formularies/Login';
                    }
                    else {

                        alert(result.messagePage);
                    }
                }
            });

    });

    $("#btnAppDetails").click(function () {



        //Validation data 





        var idForm = $('#lblidForm').text();

        var name = $('#txtNamePassport').val();
        var middName = $('#txtMiddleName').val();
        var lastName = $('#txtLastName').val();
        var dateBirth = $('#dtp_birht').val();
        var cityBirth = $('#txtCityBirth').val();
        var ddlCountry = $('#ddCountryDetails').val();

        var sex;

        if ($('#chekSexMen').is(":checked")) {
            sex = true;
        }

        if ($('#chekSexWom').is(":checked")) {
            sex = false;
        }

        var maritalStatus;

        if ($('#chekMaritalSingle').is(":checked")) {
            maritalStatus = false;
        }

        if ($('#chekMaritalMarried').is(":checked")) {
            maritalStatus = true;
        }

        var bloodGroup = $('#txtBlood').val();
        var idMark = $('#txtIdMark').val();
        var natLan = $('#txtNatLan').val();
        var religion = $('#txtReligion').val();
        var natPresent = $('#txtPresentNat').val();
        var natPrev = $('#txtPreviousNat').val();
        var natDual = $('#txtDualNat').val();


        $.ajax(
            {
                type: "POST",
                url: '/Formularies/SaveApplicantsDetPakistan',
                data: {
                    idForm: idForm,
                    name: name,
                    middleName: middName,
                    lastName: lastName,
                    dateBirth: dateBirth,
                    cityBirth: cityBirth,
                    idCountry: ddlCountry,
                    bitSex: sex,
                    bitMarital: maritalStatus,
                    bloodGroup: bloodGroup,
                    idMark: idMark,
                    natLanguage: natLan,
                    religion: religion,
                    natPresent: natPresent,
                    natPrevious: natPrev,
                    natDual: natDual

                },
                error: function (result) {
                    alert("There is a Problem, Try Again!");
                },
                success: function (result) {
                    console.log(result);
                    if (result.message == 'OK') {
                        //window.location.href = '/Formularies/Login';
                    }
                    else {

                        alert(result.messagePage);
                    }
                }
            });
    });

    $("#btnPassportDet").click(function () {


        //Validation data 

        var idForm = $('#lblidForm').text();
        var ddTypePass = $('#ddTypePass').val();
        var travelDocs;

        if ($('#chekUNTravel').is(":checked")) {
            travelDocs = true;
        }

        var passportNum = $('#passNum').val();
        var placeIssue = $('#txtIssue').val();
        var dateIssue = $('#dtp_issue').val();
        var dateExpiry = $('#dtp_Expiry').val();
        var issueAuht = $('#txtIsAuth').val();


        $.ajax(
            {
                type: "POST",
                url: '/Formularies/SavePassportPakistan',
                data: {
                    idForm: idForm,
                    idTypePass: ddTypePass,
                    bitTravelDocs: travelDocs,
                    passportNum: passportNum,
                    placeIssue: placeIssue,
                    dateIssue: dateIssue,
                    dateExpiry: dateExpiry,
                    issueAuht: issueAuht
    

                },
                error: function (result) {
                    alert("There is a Problem, Try Again!");
                },
                success: function (result) {
                    console.log(result);
                    if (result.message == 'OK') {
                        //window.location.href = '/Formularies/Login';
                    }
                    else {

                        alert(result.messagePage);
                    }
                }
            });

    });

    $("#btnAddDetails").click(function () {


        //Validation data 

        var idForm = $('#lblidForm').text();
        var ddCountryAdress = $('#ddCountryAdress').val();
        var phoneHome = $('#txtPhoneHome').val();
        var phoneWork = $('#txtPhoneWork').val();
        var phoneCell = $('#txtPhoneCell').val();
        var inPakist = $('#txtInPakistan').val();
        var phoneHomeb = $('#txtPhoneHomeb').val();
        var phoneWokrb = $('#txtPhoneWorkb').val();
        var phoneCellb = $('#txtPhoneCellb').val();
        var email = $('#txtEmail').val();



        var visitSponsored = false;

        if ($('#chekSponsored').is(":checked")) {
            visitSponsored = true;
        }


        var OtherSponsored = false;

        if ($('#chekSponOther').is(":checked")) {
            OtherSponsored = true;
        }

    
        var nameSpon = $('#txtNameSponsorA').val();
        var addSpon = $('#txtAddressA').val();
        var citySpon = $('#txtCityA').val();
        var zipCoSpon = $('#txtPCA').val();
        var telPhoneSpon = $('#txtPHomeSponsorA').val();
        var telWorkSpon = $('#txtPWorkSponsorA').val();
        var telCellSpon = $('#txtPCellSponsorA').val();


        var nameSponB = $('#txtNameSponsorB').val();
        var addSponB = $('#txtAddressB').val();
        var citySponB = $('#txtCityB').val();
        var zipCoSponB = $('#txtPCB').val();
        var telPhoneSponB = $('#txtPHomeSponsorB').val();
        var telWorkSponB = $('#txtPWorkSponsorB').val();
        var telCellSponB = $('#txtPCellSponsorB').val();
     

        $.ajax(
            {
                type: "POST",
                url: '/Formularies/SaveConctactDetails',
                data: {
                    idForm: idForm,
                    idContry: ddCountryAdress,
                    telHome: phoneHome,
                    telWork: phoneWork,
                    telCell: phoneCell,
                    inPakistan: inPakist,

                    telHomeb: phoneHomeb,
                    telWorkb: phoneWokrb,
                    telCellb: phoneCellb,
                    email: email,
                    bitSponsor: visitSponsored,

                    nameSponA: nameSpon,
                    addSponA: addSpon,
                    telHomeSponA: telPhoneSpon,
                    telWorkSponA: telWorkSpon,
                    telCellSponA: telCellSpon,
                    citySponA: citySpon,
                    zipCodSponA: zipCoSpon,

                    bitSponsorB: OtherSponsored,
                    nameSponB: nameSponB,
                    addSponB: addSponB,
                    telHomeSponB: telPhoneSponB,
                    telWorkSponB: telWorkSponB,
                    telCellSponB: telCellSponB,
                    citySponB: citySponB,
                    zipCodSponB: zipCoSponB

                },
                error: function (result) {
                    alert("There is a Problem, Try Again!");
                },
                success: function (result) {
                    console.log(result);
                    if (result.message == 'OK') {
                        //window.location.href = '/Formularies/Login';
                    }
                    else {

                        alert(result.messagePage);
                    }
                }
            });

    });

    $("#btnAddPastJobs").click(function () {


        //Validation data 

        var idForm = $('#lblidForm').text();

        var designation = $('#txtDesignation').val();
        var depto = $('#txtDepartament').val();
        var dateStart = $('#dtp_durFrom').val();
        var dateFinish = $('#dtp_durTo').val();
        var duties = $('#txtDuties').val();
        var nameHead = $('#txtNameHead').val();
        var address = $('#txtAdressJobs').val();
        var phoneHead = $('#txtPhoneHead').val();
        var descrip = $('#txtProvideRes').val();

        var applyVisa = false;

        if ($('#chekApp3Country').is(":checked")) {
            applyVisa = true;
        }


        $.ajax(
            {
                type: "POST",
                url: '/Formularies/SavePastJobs',
                data: {
                    idForm: idForm,
                    designation: designation,
                    depto: depto,
                    dateStart: dateStart,
                    dateFinish: dateFinish,
                    duties: duties,
                    address: address,
                    phone: phoneHead,
                    descp: descrip,
                    bitApply: applyVisa,
                    name: nameHead

                },
                error: function (result) {
                    alert("There is a Problem, Try Again!");
                },
                success: function (result) {
                    console.log(result);
                    if (result.message == 'OK') {
                        //window.location.href = '/Formularies/Login';
                    }
                    else {

                        alert(result.messagePage);
                    }
                }
            });

    });

    $("#btnAddFamilySec1").click(function () {


        //Validation data 

        var idForm = $('#lblidForm').text();

        var nMother = $('#txtNameMother').val();
        var nFather = $('#txtNameFatherr').val();
        var IdNatMother = $('#ddlNatMother').val();
        var IdNatFather = $('#ddlNatFather').val();
        var SpouseName = $('#txtNameSpouse').val();
        var IdNatSpouse = $('#ddlNatSpouse').val();
        var dateBirth = $('#dtp_BirthSpo').val();
        var placeBirth = $('#txtPlaceBirth').val();
        var profesion = $('#txtProfesion').val();
        var nameEmpSpouse = $('#txtNameEmployer').val();
        var addresEmpSpuse = $('#txtAddEmp').val();
        var telEmpSpouse = $('#txtPhoneEmp').val();

        var bitChildrens = false;

        if ($('#checkChildren').is(":checked")) {
            bitChildrens = true;
        }

        $.ajax(
            {
                type: "POST",
                url: '/Formularies/SaveFamilyData',
                data: {
                    idForm: idForm,
                    nMother: nMother,
                    nFather: nFather,
                    idNatMother: IdNatMother,
                    idNatFather: IdNatFather,
                    spouseName: SpouseName,
                    idNatSpouse: IdNatSpouse,
                    dateBirth: dateBirth,
                    placeBirth: placeBirth,
                    profesion: profesion,
                    bitChildrens: bitChildrens,
                    nameEmpSpouse: nameEmpSpouse,
                    addresEmpSpuse: addresEmpSpuse,
                    telEmpSpouse: telEmpSpouse

                },
                error: function (result) {
                    alert("There is a Problem, Try Again!");
                },
                success: function (result) {
                    console.log(result);
                    if (result.message == 'OK') {
                        //window.location.href = '/Formularies/Login';
                    }
                    else {

                        alert(result.messagePage);
                    }
                }
            });
        
        if (bitChildrens == true) {
            var model = [];
            //Loop through the Table rows and build a JSON array.
            $("#tblChildrens TBODY TR").each(function () {
                var row = $(this);
                dataToSend = {
                    idForm: $('#lblidForm').text(), nameChild: row.find("TD").eq(0).html(), dateOfBirth: row.find("TD").eq(1).html()
                };

                model.push(dataToSend);
            });
            //Send the JSON array to Controller using AJAX.
            console.log(JSON.stringify(model));
            $.ajax({
                type: "POST",
                url: "/Formularies/SaveChildrens",
                data: JSON.stringify(model),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    alert(r + " record(s) inserted.");
                }
            });
        }

    });

    $("body").on("click", "#btnSave", function () {
        var model = [];
        var dataToSend;
        //Loop through the Table rows and build a JSON array.
        $("#tblChildrens TBODY TR").each(function () {
            var row = $(this);
             dataToSend = {
                 idForm: $('#lblidForm').text(), nameChild: row.find("TD").eq(0).html(), dateOfBirth: row.find("TD").eq(1).html() 
            };

            model.push(dataToSend);
        });
        //Send the JSON array to Controller using AJAX.
        console.log(dataToSend);
        console.log(JSON.stringify(model));
        $.ajax({
            type: "POST",
            url: "/Formularies/SaveChildrens",
            data: JSON.stringify(model),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (r) {
                alert(r + " record(s) inserted.");
            }
        });
    });

    $("body").on("click", "#btnAdd", function () {
        //Reference the Name and Country TextBoxes.
        var txtName = $("#txtNameChild");
        var txtCountry = $("#txtBirthChild");

        //Get the reference of the Table's TBODY element.
        var tBody = $("#tblChildrens > TBODY")[0];

        //Add Row.
        var row = tBody.insertRow(-1);

        //Add Name cell.
        var cell = $(row.insertCell(-1));
        cell.html(txtName.val());

        //Add Country cell.
        cell = $(row.insertCell(-1));
        cell.html(txtCountry.val());

        //Add Button cell.
        cell = $(row.insertCell(-1));
        var btnRemove = $("<input />");
        btnRemove.attr("type", "button");
        btnRemove.attr("onclick", "Remove(this);");
        btnRemove.attr("class", "btn-danger")
        btnRemove.val("Remove");
        cell.append(btnRemove);

        //Clear the TextBoxes.
        txtName.val("");
        txtCountry.val("");
    });


});


function Remove(button) {
    //Determine the reference of the Row using the Button.
    var row = $(button).closest("TR");
    var name = $("TD", row).eq(0).html();
    if (confirm("Do you want to delete: " + name)) {
        //Get the reference of the Table.
        var table = $("#tblChildrens")[0];

        //Delete the Table row using it's Index.
        table.deleteRow(row[0].rowIndex);
    }
};

function Validate() {

    var user = $('#user').val();
    var pass = $('#pass').val();

    if (user == '' && pass == '') {
        alert('Please capture user and password.');
        return;
    }

    if (user == '') {
        alert('Please capture user.');
        return;
    }


    if (pass == '') {
        alert('Please capture password.');
        return;
    }

    $.ajax(
        {
            type: "POST",
            url: '/Account/Validate',
            data: {
                user: user,
                pass: pass
            },
            error: function (result) {
                alert("There is a Problem, Try Again!");
            },
            success: function (result) {
                console.log(result);
                if (result.message == 'OK') {
                    window.location.href = '/Formularies/Form' + result.countrylog;
                }
                else {
                    alert(result.message);
                }
            }
        });
}

