<cfcomponent>
    <cffunction  name="multiply" access="public" returnType="numeric">
        <cfargument name="number1" type="numeric" required="true">
        <cfargument name="number2" type="numeric" required="true">
        <cfargument name="number3" type="numeric" required="true" default ="1">
        <cfargument name="number4" type="numeric" required="true" default ="1">
        <cfset local.ans = arguments.number1 * arguments.number2 *arguments.number3 * arguments.number4>
        <cfreturn local.ans>
    </cffunction>
 
    <cffunction  name="multiplyUsingInvoke" access="public" returnType="numeric">
        <cfargument name="value1" type="numeric" required="true">
        <cfargument name="value2" type="numeric" required="true">
        <cfargument name="value3" type="numeric" required="true" default ="1">
        <cfargument name="value4" type="numeric" required="true" default ="1">
        <cfset local.ans = arguments.value1 * arguments.value2 *arguments.value3 * arguments.value4>
        <cfreturn local.ans>
    </cffunction>
</cfcomponent>


