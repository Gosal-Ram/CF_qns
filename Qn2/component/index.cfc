<cfcomponent>
    <cffunction  name="showResultUsingCase" access="public" returnType="String">
        <cfargument  name="number" type="numeric" required="true">
        <cfset local.result = "">

            <cfswitch expression = "#arguments.number#">
                <cfdefaultcase>
                     <cfset local.result = "Invalid number, Please select valid number(1 - 5)">
                </cfdefaultcase>

                <cfcase value = 1>
                    <cfset local.result = "OK">
                </cfcase>

                <cfcase value = 2>
                    <cfset local.result = "OK">
                </cfcase>
                <cfcase value = 3>
                    <cfset local.result = "Fair">
                </cfcase>
                <cfcase value = 4>
                    <cfset local.result = "Good">
                </cfcase>
                <cfcase value = 5>
                    <cfset local.result = "Very Good">
                </cfcase>
            </cfswitch>
            
        <cfreturn local.result>
    </cffunction>
</cfcomponent>

