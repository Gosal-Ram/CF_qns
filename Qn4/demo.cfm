        <cfset date = expression>
        <cfset #lastDayMonth# = daysInMonth(dateFormat(now(),'mm/dd/yyyy'))
<cfoutput>
        #lastDayMonth#
</cfoutput>