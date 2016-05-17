module RedmineFieldsPermissions
  module Patches
    module IssuesControllerPatch
      def self.included(base)
        base.class_eval do
        	helper :fields_permissions
        end
      end
    end
  end
end

unless IssuesController.included_modules.include?(RedmineFieldsPermissions::Patches::IssuesControllerPatch)
  IssuesController.send(:include, RedmineFieldsPermissions::Patches::IssuesControllerPatch)
end