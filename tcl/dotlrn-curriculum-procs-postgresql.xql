<?xml version="1.0"?>

<queryset>
<rdbms><type>postgresql</type><version>7.1</version></rdbms>

<fullquery name="dotlrn_curriculum::clone.call_curriculum_clone">
  <querytext>
    select curriculum__clone ( 
        	:old_package_id,
        	:new_package_id
      );
  </querytext>
</fullquery>


</queryset>
