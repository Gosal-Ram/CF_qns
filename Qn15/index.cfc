<cfcomponent>
    <cffunction  name="mulitiply" access="public" returnType="any">
        <cfargument name="num1" type="any" required="true">
        <cfargument name="num2" type="any" required="true">
        <cfargument name="num3" type="any" required="true" default ="1">
        <cfargument name="num4" type="any" required="true" default ="1">
        <cfset ans = arguments.num1 * arguments.num2 *arguments.num3 * arguments.num4>
        <cfreturn ans>
    </cffunction>
 
 
    <cffunction  name="mulitiplyInvoke" access="public" returnType="any">
        <cfargument name="val1" type="any" required="true">
        <cfargument name="val2" type="any" required="true">
        <cfargument name="val3" type="any" required="true" default ="1">
        <cfargument name="val4" type="any" required="true" default ="1">
        <cfset ans = arguments.val1 * arguments.val2 *arguments.val3 * arguments.val4>
        <cfreturn ans>
    </cffunction>
 
 

</cfcomponent>


