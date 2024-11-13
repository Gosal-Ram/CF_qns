<cfcomponent>
    <cffunction  name="showPattern" access="public" returnType = "void"> 
        <cfset local.var = 1>
        <cfset local.arr = ArrayNew(2)>
        <cfset local.start = 1>
        <cfset local.end = 3>
        <cfloop index = "row" from = "#local.start#" to = "#local.end#">
            <cfloop index = "col" from = "#local.start#" to = "#local.end#">
                <cfset arr[col][row] = local.var>
                <cfset local.var++>
            </cfloop>      
        </cfloop>
        <cfloop index = "row" from = "#local.start#" to = "#local.end#">
            <cfloop index = "col" from = "#local.start#" to = "#local.end#">
                <cfoutput>#local.arr[row][col]#</cfoutput>
            </cfloop><br>      
        </cfloop>
    </cffunction>
</cfcomponent> 