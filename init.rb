require 'redmine'

Redmine::Plugin.register :redmine_fields_permissions do
  name 'Redmine Fields Permissions Plugin'
  author 'Romain E SILVA (Sysdream)'
  description 'This Redmine plugin add additional permissions for fields in workflow. This plugin is based on http://9thport.net/2011/03/20/redmine-hide-assigned-to-field-with-role-permissions-plugin/ by Aaron Addleman'
  version '1.0.0'
  url 'http://www.sysdream.com/'
  author_url 'http://www.sysdream.com/'

  Redmine::AccessControl.map do |map|
    map.project_module :issue_tracking do |map|
        #map.permission :set_issues_private, {}
        #map.permission :add_issues, {:issues => [:new, :create, :update_form], :attachments => :upload}
      # Permissions for assigned to field
      map.permission :edit_issue_assigned_to, {:issues => [:new, :create, :update_form]}
      
      # Permissions for due date field
      map.permission :edit_issue_due_date, {:issues => [:new, :create, :update_form]}
      
      # Permissions for estimated hours field
      map.permission :edit_issue_estimated_hours, {:issues => [:new, :create, :update_form]}

      # Permissions for priority field
      map.permission :edit_issue_priority, {:issues => [:new, :create, :update_form]}

      # Permissions for priority field
      map.permission :edit_issue_status, {:issues => [:new, :create, :update_form]}

      # Permissions for fixed version field
      map.permission :edit_issue_fixed_version, {:issues => [:new, :create, :update_form]}

      map.permission :edit_issue_category, {:issues => [:new, :create, :update_form]}

      map.permission :edit_issue_done_ratio, {:issues => [:new, :create, :update_form]}
    end
  end
end

