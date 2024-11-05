        
            <cfset local.result=local.value.showMomAge(local.momDob)>
            <span class="text-success mt-4"> 
            Mom's Age when her son born is 
            #local.result#
            </span> 
            </span> 
        


    





    <cfset mom1=Dayofyear(form.age1)-dayOfYear(now())>
            <cfif mom1 GTE 0>
                <cfset struct["mom"]=mom1+1>
            <cfelse>
                <cfset struct["mom"]=mom1+366>
            </cfif>