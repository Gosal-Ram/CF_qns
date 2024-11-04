
<cfcomponent>
    <cffunction  name="showResultUsingCase" access="public" returnType="String">
        <cfargument  name="number" type="numeric" required="true">
            <cfswitch expression=#arguments.number#>
                <cfdefaultcase><cfreturn "Invalid number, Please select valid number(1 - 5)"></cfdefaultcase>
                <cfcase  value=1><cfreturn "OK"></cfcase>
                <cfcase  value=2><cfreturn "OK"></cfcase>
                <cfcase  value=3><cfreturn "Fair"></cfcase>
                <cfcase  value=4><cfreturn "Good"></cfcase>
                <cfcase  value=5><cfreturn "Very Good"></cfcase>
            </cfswitch>
    </cffunction>
</cfcomponent>

