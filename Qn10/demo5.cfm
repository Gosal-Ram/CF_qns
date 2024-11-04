<html>
    <head>
        <title>structure creation</title>
    </head>
    <body>
        
        <form method="post" name="struct_form">
            Enter the key element:
            <input type="text" name="text1" >
            Enter the value element:
            <input type="text" name="text2" >
            <input type ="submit" value="sub" name="submit">
        </form>
        <cfif structKeyExists(form,"submit")>
            
            <cfset output=createObject("component","structure")>
            <cfset struct=output.form_struct(form.text1,form.text2)>
            <cfset structAppend(session.Session, struct)>
            <cfdump  var="#session.Session#">
        </cfif>
        
    </body>
</html>





<cfcomponent>
    <cffunction  name="form_struct" access="public" returnType="struct">
        <cfargument  name="key" type="string">
        <cfargument  name="value" type="string">
        <cfset struct=structNew()>
        <cfset struct[key]=value>
        
        <cfreturn struct>
    </cffunction>
</cfcomponent>









<cfcomponent>
    <cfset this.sessionManagement="yes">

    <cffunction  name="onSessionStart" >
        <cfset session.Session=structNew()>
     </cffunction>
</cfcomponent><!---session variable enabling--->