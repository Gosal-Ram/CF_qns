<cfcomponent>
    <cffunction  name="addText" returtype="string">
        <cfargument  name="fileText" type="string" required="true">
            <cfloop list="#arguments.fileText#" item="item" delimiters=" .">
                 <cfquery name="addWord" datasource="database_gosal">
                    SELECT count(words) AS wordcount FROM cf26 WHERE words='#item#';
                </cfquery>
                <cfif  NOT addWord.wordcount>
                    <cfquery name="addWord" datasource="database_gosal">
                        insert into cf26 values ('#item#') ;
                    </cfquery>
                </cfif>
            </cfloop>
            <cfset local.result = "Data added to DB">
            <cfreturn local.result>
    </cffunction>
</cfcomponent>