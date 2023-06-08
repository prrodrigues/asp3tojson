<!-- #include file="asp3tojson.asp" -->
<!-- #include file="person.class.asp" -->


<html>

<head>
<script language="javascript" type="text/javascript">

function test(msg)
{
    alert(msg);
}

</script>

</head>

<body>

<form>

<input type="button" value="ok" onclick="new _Person.sayHello(test, 'Mr. All', ' Bund');" />
<br />

<input type="button" value="ok" onclick="new _Person.one(test);" />
<br />

<input type="button" value="ok" onclick="new _Person.two(test, ' Jones Jr.');" />
<br />

</form>


</body>


</html>