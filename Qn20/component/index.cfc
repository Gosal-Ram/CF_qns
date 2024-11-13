<cfcomponent>
    <cffunction  name="validateCaptcha" access= "public" returnType= "string">
        <cfargument name = "captcha" type="string" required="true">
        <cfargument name = "mail" type="string" required="true">
        <cfargument name = "captchaText" type="string" required="true">

        <cfset local.emailRegex = "^[0-9A-Za-z.'+_-]+@([0-9A-Za-z-]+\.)+[A-Za-z]+$">
        <cfif NOT REFindNoCase(local.emailRegex, arguments.mail)>
            <cfset local.result = "Enter valid mail address">
            <cfelseif arguments.captcha !=  arguments.captchaText>
                <cfset local.result = "Invalid Captcha">
            <cfelse>
                <cfset local.result = "Email Address successfully subscribed to our newsletter">
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>

