<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="Bootstrap/css/bootstrap.min.css"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="Bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">
function cFunc()
{
	var form_value=document.getElementById('sel1').value;
	if(form_value=="ProductAdd")
	{
	window.location="selProductAdd";
	}
	if(form_value=="ProductEdit")
	{
	window.location="selProductAdd";
	}
}
</script>

</head>
<body>

<div class="containner">
<table class="table">
<thead>
<tr>
<th>Product</th>
<th>Category</th>
<th>UserDetails</th>
</tr>
</thead>
<div class="form-group">
<tbody>
<tr>
<td>
<select class="form-control" id="sel1" onChange="cfunc()">
<option>--Select--</option>
<option value="ProductAdd">Add</option>
<option value="ProductEdit">Edit</option>
<option onselect="product_delete" value="ProductDelete">Delete</option>
</select>
</td>

<td>
<select class="form control" id="sel2">
<option>--Select--</option>
<option>Add</option>
<option >Edit</option>
<option>Delete</option>
</select>
</td>
<td>
<select class="form control" id="sel3">
<option>--Select--</option>
<option>Add</option>
<option >Edit</option>
<option>Delete</option>
</select>
</td>
</tr>





</tbody>
</div>
</table>
</div>
    
</body>
</html>