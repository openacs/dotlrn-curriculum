--
-- The curriculum applet for dotLRN
--
-- @author Ola Hansson (ola@polyxena.net)
-- @creation-date 2003-06-11
-- @cvs-id $Id$
--


-- create the implementation

select acs_sc_impl__new (
		'dotlrn_applet',
		'dotlrn_curriculum',
		'dotlrn_curriculum'
);


-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'GetPrettyName',
	       'dotlrn_curriculum::get_pretty_name',
	       'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddApplet',
	       'dotlrn_curriculum::add_applet',
	       'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveApplet',
	       'dotlrn_curriculum::remove_applet',
	       'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddAppletToCommunity',
	       'dotlrn_curriculum::add_applet_to_community',
	       'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveAppletFromCommunity',
	       'dotlrn_curriculum::remove_applet_from_community',
	       'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddUser',
	       'dotlrn_curriculum::add_user',
	       'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveUser',
	       'dotlrn_curriculum::remove_user',
	       'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddUserToCommunity',
	       'dotlrn_curriculum::add_user_to_community',
	       'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveUserFromCommunity',
	       'dotlrn_curriculum::remove_user_from_community',
	       'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_curriculum',
        'AddPortlet',
        'dotlrn_curriculum::add_portlet',
        'TCL'
);

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_curriculum',
        'RemovePortlet',
        'dotlrn_curriculum::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_curriculum',
        'Clone',
        'dotlrn_curriculum::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_curriculum',
        'ChangeEventHandler',
        'dotlrn_curriculum::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
	    'dotlrn_applet',
	    'dotlrn_curriculum'
);
