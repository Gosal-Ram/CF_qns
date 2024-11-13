<cfcomponent>
    <cffunction name="wordCount" access="public" returnType="string">
        <cfargument name="key" type="any" required="true">

        <cfset local.demoString = """the quick brown fox jumps over the lazy dog""">
        <cfset local.word = arguments.key>
        <cfset local.count = listValueCount(local.demoString, local.word," ")>
        <cfset local.result = "Found the key word in  "& local.count & " time- in the sentence  "& local.demoString>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>