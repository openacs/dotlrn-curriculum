--
-- The curriculum applet for dotLRN
--
-- @author Ola Hansson (ola@polyxena.net)
-- @creation-date 2003-06-11
-- @cvs-id $Id$
--


-- delete the implementation

select acs_sc_impl__delete (
		'dotlrn_applet',
		'dotlrn_curriculum'
);




-- GetPrettyName
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'GetPrettyName'
);

-- AddApplet
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddApplet'
);

-- RemoveApplet
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveApplet'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddAppletToCommunity'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveAppletFromCommunity'
);

-- AddUser
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddUser'
);

-- RemoveUser
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveUser'
);

-- AddUserToCommunity
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddUserToCommunity'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__delete (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveUserFromCommunity'
);

-- AddPortlet
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_curriculum',
        'AddPortlet'
);

-- RemovePortlet
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_curriculum',
        'RemovePortlet'
);

-- Clone
select acs_sc_impl_alias__delete (
        'dotlrn_applet',
        'dotlrn_curriculum',
        'Clone'
);

-- Add the binding
select acs_sc_binding__delete (
	    'dotlrn_applet',
	    'dotlrn_curriculum'
);
