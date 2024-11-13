<cfcomponent>
    <cffunction name="sendWishes" access = "public" returnType = "string">
        <cfargument name = "personName">
        <cfargument name = "personMail">
        <cfargument name = "personWishes">
        <cfargument name = "personFile">

        
        <cfset local.demoSender = "gosal@gmail.com">
        <cfset local.image = expandPath("./assets")>
        <cffile  action="upload" destination="#local.image#" nameConflict="makeunique">
        <cfset local.img = cffile.clientFile>
        <cfmail  from="#local.demoSender#"  subject="HAPPY  BIRTHDAY #arguments.personName#"  to="#arguments.personMail#" mimeattach ="#local.image#/#local.img#">arguments.personWishes
        </cfmail>
        <cfreturn "Mail send success">
    </cffunction>
</cfcomponent>