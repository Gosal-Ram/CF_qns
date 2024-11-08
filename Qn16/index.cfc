<cfcomponent>
    <cffunction  name="showPattern" access="public" returnType = "void"> 
        <cfset var = 1>
        <cfset arr = ArrayNew(2)>
        <cfloop index = "row" from = "1" to = "3">
            <cfloop index="col" from = "1" to = "3">
                <cfset arr[col][row] = var>
                <cfset var++>
            </cfloop>      
        </cfloop>
        <cfloop index = "row" from = "1" to = "3">
            <cfloop index = "col" from = "1" to = "3">
                <cfoutput>#arr[row][col]#</cfoutput>
            </cfloop><br>      
        </cfloop>
    </cffunction>
</cfcomponent> 