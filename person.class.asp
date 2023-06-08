<%
Class Person
    public name
    public lastName

    Public function one()
        Response.Write("Nothing returns here, a response.write method from server only !")
    End Function

    Public function two(aValue)
        two = ucase(aValue)
    End Function

    
    Public function sayHello(strName, strLastName)
        sayHello = "Hello, " & strName &" "& strLastName & "."
    End Function



    Public function reflect()
        set reflect = Server.CreateObject("Scripting.Dictionary")
        with reflect
            .Add "name", name
            .Add "lastName", lastName
        End with
    End Function


    Public function reflectMethod()
        set reflectMethod = Server.CreateObject("Scripting.Dictionary")
        with reflectMethod
            .Add "function one", ""
            .Add "function two", "name"
            .Add "function sayHello", "name,lastName"
        End with
    End Function

End Class


If request.QueryString("m") = "" Then
    path = "./person.class.asp"
    writeMethodsToJson "Person", path
End If
%>
<!-- #include file="asp3tojson_reflector.asp" -->
