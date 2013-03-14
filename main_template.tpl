<!DOCTYPE html>
<html>
<head>
<title>Simple CMS</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script>
var drop = document.querySelector('#drop');

addEvent(drop, 'dragover', cancel);
addEvent(drop, 'dragenter', cancel);

addEvent(drop, 'drop', function (event) {
 if (event.preventDefault) {
   event.preventDefault();
 }

file = event.dataTransfer.getData('Text');
alert(file.name)

 return false;
});

function cancel(event) {
 if (event.preventDefault) {
   event.preventDefault();
 }
 return false;
}
</script>
</head>
<body>
<table border="1">
<tr>
<td>
<h1>files</h1>
%for file in files:
<h4>{{file}}</h4>
%end
</td>
<td>
<div id="drop" style="border: gray solid 1em; padding: 2em;">aaa
</div>
</td>
</tr>
</table>
</body>
</html>