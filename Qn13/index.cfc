<cfcomponent>
    <cffunction  name="wordCount" access="public" returnType="any">
        <cfargument name="key" type="any" required="true">
        <cfset string="the quick brown fox jumps over the lazy dog">
        <cfset word = arguments.key>
        <cfset count = listValueCount(string, word," ")>
        <cfreturn "Found the key word in  "& count & " times-"& string>
    </cffunction>
</cfcomponent>


