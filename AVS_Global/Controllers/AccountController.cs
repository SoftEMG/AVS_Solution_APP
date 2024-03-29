﻿using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using RestSharp;
using RestSharp.Authenticators;
using RestSharp.Deserializers;
using System.Net;
using RestSharp.Serialization.Json;
using Microsoft.AspNetCore.Session;
using Microsoft.AspNetCore.Http;

namespace AVS_Global.Controllers
{
    public class AccountController : Controller
    {
        const string SessionName = "_Name";
        const string SessionForm = "_Form";
        const string SessionCountry = "_CountryName";
        public IActionResult Login()
        {
            const string urlApiCatCustomers = "http://localhost/avs_api/api/Account/";
            #region CallCatVisasApplied
            var client = new RestClient(urlApiCatCustomers + "CatCountriesCustomer");
            //client.Authenticator = new HttpBasicAuthenticator(userApiKey, PassApiKey);
            var request = new RestRequest(Method.GET);
            var response = client.Execute<List<Models.CatCountriesCustomers>>(request);
            ViewBag.items = response.Data;
            #endregion
            return View();
        }


        public ActionResult SaveCustomer(string RegisteredMail, string pass, int IdCountry)
        {
            var client = new RestClient("http://localhost/avs_api/api/Account/SaveAccount");
            //client.Authenticator = new HttpBasicAuthenticator(userApiKey, PassApiKey);
            var request = new RestRequest(Method.POST);

            Models.SaveCustomers dataAccount = new Models.SaveCustomers();
            dataAccount.IdCountry = IdCountry;
            dataAccount.RegisteredMail = RegisteredMail;
            dataAccount.Pass = pass;
            request.AddJsonBody(dataAccount);

            var response = client.Execute(request);
            string content = response.Content.Replace("\"", "");
            string dataMessa = string.Empty;
            if (response.StatusCode == HttpStatusCode.OK)
            {

                if (content == "Customer created!")
                {
                    dataMessa = "OK";
                }
                else
                {
                    dataMessa = response.Content;
                }

            }
            return Json(new { status = true, message = dataMessa, messagePage = "Customer created, Please log in with your crendenciales." });
            //ResponseApiClubPremier responseAPICP = new JsonDeserializer().Deserialize<ResponseApiClubPremier>(response);
        }

       
        public ActionResult Validate(string user, string pass)
        {
            var client = new RestClient("http://localhost/avs_api/api/Account");
            //client.Authenticator = new HttpBasicAuthenticator(userApiKey, PassApiKey);
            var request = new RestRequest(Method.POST);

            Models.Accounts dataAccount = new Models.Accounts();
            dataAccount.Mail = user;
            dataAccount.Pass = pass;
            dataAccount.Seed = "";
            request.AddJsonBody(dataAccount);

            var response = client.Execute(request);
            string content = response.Content.Replace("\"", "");
            string dataMessa = string.Empty;
            string countryLogOn = string.Empty;
            string idForm = string.Empty;
            string role = string.Empty;
            if (response.StatusCode == HttpStatusCode.OK)
            {
                Models.responseCustomersLog responseAPI = new JsonDeserializer().Deserialize<Models.responseCustomersLog>(response);

                if (responseAPI.loginSuccess)
                {
                    HttpContext.Session.SetString(SessionName, dataAccount.Mail);
                    dataMessa = "OK";
                    countryLogOn = responseAPI.CountryLog.ToString();
                    idForm = responseAPI.IdForm.ToString();
                    role = responseAPI.rol.ToString();
                    HttpContext.Session.SetString(SessionCountry, countryLogOn);
                    HttpContext.Session.SetString(SessionForm, idForm);

                }
                else
                {
                    dataMessa = response.Content;
                }

            }
            return Json(new { status = true, message = dataMessa, countrylog = countryLogOn, rol = role });
            
        }

        public ActionResult logOutSesession()
        {
            HttpContext.Session.Remove(SessionName);
            return Json(new { status = true, message = "OK"});
        }
    }
}
