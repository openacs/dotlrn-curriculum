ad_library {

    Procs to set up the dotLRN Curriculum applet

    @author Ola Hansson (ola@polyxena.net)
    @creation-date 2003-06-11
    @cvs-id $Id$

}

namespace eval dotlrn_curriculum {

    ad_proc -public get_pretty_name {
    } {
        get the pretty name
    } {
        return "#curriculum.pretty_name#"
    }

    ad_proc -public applet_key {} {
        return "dotlrn_curriculum"
    }

    ad_proc -public my_package_key {
    } {
        What's my package key?
    } {
        return "dotlrn-curriculum"
    }

    ad_proc -public package_key {
    } {
        What package is associated with this applet?
    } {
        return "curriculum"
    }

    ad_proc -public add_applet {
    } {
        Add the curriculum applet to dotlrn - one time init - must be repeatable!
    } {
        dotlrn_applet::add_applet_to_dotlrn -applet_key [applet_key] -package_key [my_package_key]
    }

    ad_proc -public remove_applet {
        community_id
        package_id
    } {
        remove the applet
    } {
        ad_return_complaint 1 "[applet_key] remove_applet not implemented!"
    }

    ad_proc -public add_applet_to_community {
        community_id
    } {
        Add the curriculum applet to a specific community
    } {
        set portal_id [dotlrn_community::get_portal_id \
                           -community_id $community_id
        ]

        # create the curriculum package instance (all in one, I've mounted it)
        set package_id [dotlrn::instantiate_and_mount \
                            $community_id \
                            [package_key]
        ]

        #
        # portlet stuff
        #

        # set up the admin portlet

        set admin_portal_id [dotlrn_community::get_admin_portal_id \
                                 -community_id $community_id
        ]

        curriculum_admin_portlet::add_self_to_page \
            -portal_id $admin_portal_id \
            -package_id $package_id

        # set up the curriculum portlet for this community

        set portal_id [dotlrn_community::get_portal_id \
                           -community_id $community_id
        ]

        # add the portlet to the comm's portal using add_portlet_helper
        set args [ns_set create]
        ns_set put $args package_id $package_id
        ns_set put $args param_action "overwrite"

        dotlrn_curriculum::add_portlet_helper $portal_id $args

        # return the package_id
        return $package_id
    }

    ad_proc -public remove_applet_from_community {
        community_id
    } {
        Drops the curriculum applet from the given community
    } {
        ad_return_complaint 1 "[applet_key] remove_applet_from_community not implemented!"
    }

    ad_proc -public add_user {
        user_id
    } {
        For one time user-specific init
    } {
        # noop
    }

    ad_proc -public remove_user {
        user_id
    } {
        Remove the user from dotlrn.
    } {
        # noop
    }

    ad_proc -public add_user_to_community {
        community_id
        user_id
    } {
        Called when a user is added to a specific dotlrn community
    } {
        set portal_id [dotlrn::get_portal_id -user_id $user_id]
        set package_id [dotlrn_community::get_applet_package_id \
            -community_id $community_id \
            -applet_key [applet_key]
        ]

        set args [ns_set create]
        ns_set put $args package_id $package_id
        ns_set put $args param_action append

        dotlrn_curriculum::add_portlet_helper $portal_id $args
    }

    ad_proc -public remove_user_from_community {
        community_id
        user_id
    } {
        Remove a user from a community
    } {
        set portal_id [dotlrn::get_portal_id -user_id $user_id]
        set package_id [dotlrn_community::get_applet_package_id \
            -community_id $community_id \
            -applet_key [applet_key]
        ]

        set args [ns_set create]
        ns_set put $args package_id $package_id

        remove_portlet $portal_id $args
    }

    ad_proc -public add_portlet {
        portal_id
    } {
        A helper proc to add the underlying portlet to the given portal.

        @portal_id
    } {
        set args [ns_set create]
        ns_set put $args package_id 0
        ns_set put $args param_action "overwrite"

        add_portlet_helper $portal_id $args
    }

    ad_proc -public add_portlet_helper {
        portal_id
        args
    } {
        This does the call to add the portlet to the given portal.
        Params for the portlet are set by the calllers.

        @param portal_id
        @param args An ns_set
    } {
        curriculum_portlet::add_self_to_page \
            -portal_id $portal_id \
            -package_id [ns_set get $args "package_id"] \
            -param_action [ns_set get $args "param_action"]
    }

    ad_proc -public remove_portlet {
        portal_id
        args
    } {
        A helper proc to remove the underlying portlet from the given portal.

        @param portal_id
        @param args An ns_set
    } {
        curriculum_portlet::remove_self_from_page \
            -portal_id $portal_id \
            -package_id [ns_set get $args "package_id"]
    }

    ad_proc -public clone {
        old_community_id
        new_community_id
    } {
        Clone this applet's content from the old community to the new one
    } {
        ns_log notice "Cloning: [applet_key]"
        set new_package_id [add_applet_to_community $new_community_id]
        set old_package_id [dotlrn_community::get_applet_package_id \
            -community_id $old_community_id \
            -applet_key [applet_key]
        ]

        db_exec_plsql call_curriculum_clone {}
        return $new_package_id
    }

    ad_proc -public change_event_handler {
        community_id
        event
        old_value
        new_value
    } { 
        listens for the following events: 
    } { 
    }   

}
