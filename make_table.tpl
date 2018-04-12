%#template to generate a HTML table from a list of tuples (or list of lists, or tuple of tuples or ...)
<p>The items are as follows: </p><h1>{{Open}}</h1>
<a href="open">Open</button></a>		<a href="close">Close</a>		<a href="new">New</a>		<a href="delete">Delete</a>	

<table border="1">
%for row in rows:
  <tr  onmouseover="on(this)" onmouseout="off(this)" onclick="edit2({{row[0]}})">
  %for col in row:
    <td>{{col}}</td>
  %end
  </tr>
%end
</table>
<p id="edit_p" style="visibility:hidden;"><font color="red">Click on row to edit</font></p>	
<script>
var TableBackgroundNormalColor = "#ffffff";
var TableBackgroundMouseoverColor = "#9999ff";
function on(row){
	row.style.backgroundColor = TableBackgroundMouseoverColor;
	document.getElementById("edit_p").style.visibility="visible";
}
function off(row){
	row.style.backgroundColor = TableBackgroundNormalColor;
	document.getElementById("edit_p").style.visibility="hidden";
}
function edit2(id){
window.location="/edit/"+id;

}
</script>