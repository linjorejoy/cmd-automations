var obj = new ActiveXObject("Scripting.FileSystemObject");

// Get Word Doc Name
var docPath = WScript.Arguments(0);
// Get OutputFolder Name
var outputFolder = WScript.Arguments(1);
docPath = obj.GetAbsolutePathName(docPath);

// Setting varables for Output PDF Folder
var pdfPath = docPath.replace(/\.doc[^.]*$/, ".pdf");
var pdfPath = pdfPath.replace("Input Word Files", "Output\\" + outputFolder);

var objWord = null;
// Creation
try {
  objWord = new ActiveXObject("Word.Application");
  objWord.Visible = false;

  var objDoc = objWord.Documents.Open(docPath);
  var format = 17;
  objDoc.SaveAs(pdfPath, format);
  objDoc.Close();
  WScript.Echo("------------------------------------");
  WScript.Echo(
    "Saving\n" + docPath + "\n=======CONVERTED===============>>>>>>\n" + pdfPath
  );
  WScript.Echo("------------------------------------");
} finally {
  if (objWord != null) {
    objWord.Quit();
  }
}
