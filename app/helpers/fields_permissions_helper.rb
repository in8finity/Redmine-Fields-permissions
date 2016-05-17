module FieldsPermissionsHelper
	ATRRIBUTES_TO_CHECK = %w(issue_status_id issue_priority_id issue_assigned_to_id issue_category_id issue_fixed_version_id issue_parent_issue_id issue_start_date issue_due_date issue_estimated_hours issue_done_ratio issue_author_id).freeze
	def is_action_available_for_project project, action
		(User.current.allowed_to?(action, project) || 
			(!User.current.allowed_to?(action, project) && 
				User.current.allowed_to?(action, nil, :global => true)))
	end

	def attributes_to_check_permissions
		ATRRIBUTES_TO_CHECK
	end
end