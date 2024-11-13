<cfcomponent>
    <cffunction name="validate" access="public" returnType="struct">
        <cfargument  name="imgName" type="any" required="true">
        <cfargument  name="imgDesc" type="any" required="true">
        <cfargument  name="imgFile" type="any" required="true">

        <cfset local.imageSize = getFileInfo(arguments.imgFile).size>
        <cfif local.imageSize GT 10000>
            <cfset local.myStruct["error"] = 0>
            <cfelse>
                <cfset local.img = imageRead(arguments.imgFile)>
                <cfset local.myStruct["imgFile"] =local.img>
                <cfset local.myStruct["imgName"] = arguments.imgName>
                <cfset local.myStruct["imgDesc"] = arguments.imgDesc>
                <cfset local.myStruct["error"] = 1>
        </cfif>
            <cfreturn local.myStruct>
    </cffunction>
</cfcomponent>




