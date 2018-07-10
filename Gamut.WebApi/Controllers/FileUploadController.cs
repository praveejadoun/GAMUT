using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;

// Smaple Script to use this code file upload
//<script>
//        $(document).ready(function () {
//            $('#btn1').click(function() {
//        if ($('#myfile').val() == '') {
//            alert('Please select file');
//            return;
//        }

//        var formData = new FormData();
//        var file = $('#myfile')[0];
//        formData.append('file', file.files[0]);
//                $.ajax({
//            url: '/api/fileUpload',
//                    type: 'POST',
//                    data: formData,
//                    contentType: false,
//                    processData: false,
//                    success: function(d) {
//                alert('file is uploaded successfully')

//},
//                    error: function() {
//                alert('Some thing went wrong');
//            }
//        });
//    });
//});
//    </script>

namespace Gamut.WebAPI.Controllers
{
    public class FileUploadController : ApiController
    {

            public Task<HttpResponseMessage> Post()
            {
                List<string> savedFilePath = new List<string>();
                // Check if the request contains multipart/form-data
                if (!Request.Content.IsMimeMultipartContent())
                {
                    throw new HttpResponseException(HttpStatusCode.UnsupportedMediaType);
                }
                //Get the path of folder where we want to upload all files.
                string rootPath = HttpContext.Current.Server.MapPath("~/UploadFiles");
                var provider = new MultipartFileStreamProvider(rootPath);
                // Read the form data.
                //If any error(Cancelled or any fault) occurred during file read , return internal server error
                var task = Request.Content.ReadAsMultipartAsync(provider).
                    ContinueWith<HttpResponseMessage>(t =>
                    {
                        if (t.IsCanceled || t.IsFaulted)
                        {
                            Request.CreateErrorResponse(HttpStatusCode.InternalServerError, t.Exception);
                        }
                        foreach (MultipartFileData dataitem in provider.FileData)
                        {
                            try
                            {
                            //Replace / from file name
                            string name = dataitem.Headers.ContentDisposition.FileName.Replace("\"", "");
                            //Create New file name using GUID to prevent duplicate file name
                            string newFileName = Guid.NewGuid() + Path.GetExtension(name);
                            //Move file from current location to target folder.
                            File.Move(dataitem.LocalFileName, Path.Combine(rootPath, newFileName));


                            }
                            catch (Exception ex)
                            {
                                string message = ex.Message;
                            }
                        }

                        return Request.CreateResponse(HttpStatusCode.Created, savedFilePath);
                    });
                return task;
            }
        }
    }

