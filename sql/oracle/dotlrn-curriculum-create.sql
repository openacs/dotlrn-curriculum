--
-- The curriculum applet for dotLRN
--
-- @author Ola Hansson (ola@polyxena.net)
-- @creation-date 2003-06-13
-- @cvs-id $Id$
--


declare
	foo integer;
begin
	-- create the implementation
	foo := acs_sc_impl.new (
		'dotlrn_applet',
		'dotlrn_curriculum',
		'dotlrn_curriculum'
	);

	-- add all the hooks

	-- GetPrettyName
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'GetPrettyName',
	       'dotlrn_curriculum::get_pretty_name',
	       'TCL'
	);

	-- AddApplet
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddApplet',
	       'dotlrn_curriculum::add_applet',
	       'TCL'
	);

	-- RemoveApplet
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveApplet',
	       'dotlrn_curriculum::remove_applet',
	       'TCL'
	);

	-- AddAppletToCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddAppletToCommunity',
	       'dotlrn_curriculum::add_applet_to_community',
	       'TCL'
	);

	-- RemoveAppletFromCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveAppletFromCommunity',
	       'dotlrn_curriculum::remove_applet_from_community',
	       'TCL'
	);

	-- AddUser
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddUser',
	       'dotlrn_curriculum::add_user',
	       'TCL'
	);

	-- RemoveUser
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveUser',
	       'dotlrn_curriculum::remove_user',
	       'TCL'
	);

	-- AddUserToCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'AddUserToCommunity',
	       'dotlrn_curriculum::add_user_to_community',
	       'TCL'
	);

	-- RemoveUserFromCommunity
	foo := acs_sc_impl.new_alias (
	       'dotlrn_applet',
	       'dotlrn_curriculum',
	       'RemoveUserFromCommunity',
	       'dotlrn_curriculum::remove_user_from_community',
	       'TCL'
	);

    -- AddPortlet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_curriculum',
        impl_operation_name => 'AddPortlet',
        impl_alias => 'dotlrn_curriculum::add_portlet',
        impl_pl => 'TCL'
    );

    -- RemovePortlet
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_curriculum',
        impl_operation_name => 'RemovePortlet',
        impl_alias => 'dotlrn_curriculum::remove_portlet',
        impl_pl => 'TCL'
    );

    -- Clone
    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_curriculum',
        impl_operation_name => 'Clone',
        impl_alias => 'dotlrn_curriculum::clone',
        impl_pl => 'TCL'
    );

    foo := acs_sc_impl.new_alias (
        impl_contract_name => 'dotlrn_applet',
        impl_name => 'dotlrn_curriculum',
        impl_operation_name => 'ChangeEventHandler',
        impl_alias => 'dotlrn_curriculum::change_event_handler',
        impl_pl => 'TCL'
    );

	-- Add the binding
	acs_sc_binding.new (
	    contract_name => 'dotlrn_applet',
	    impl_name => 'dotlrn_curriculum'
	);
end;
/
show errors
