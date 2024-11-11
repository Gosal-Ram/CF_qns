<cfcomponent>
    <cffunction  name="validate" returnType="string" access="public">
        <cfargument name="number" type="any" required="true">
        <cfset local.result = "">
        <cfif isNumeric(arguments.number)>
            <cfoutput>
                <p style="color:green;">Form submitted successfully with number: #arguments.number#</p>
                <cfloop from = "1" to="#arguments.number#" index = "i">
                    <cfif i%2==0>
                        <p style="color:green;">#i#</p>
                    <cfelse>
                        <p style="color:blue;">#i#</p>
                    </cfif>
                </cfloop>
            </cfoutput>
            <cfelse>
                 <cfoutput><p id ="error" style = "color:red;"></p></cfoutput>
            </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>


           