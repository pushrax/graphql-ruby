module GraphQL::StaticValidation
end

require 'graph_ql/static_validation/message'
require 'graph_ql/static_validation/arguments_validator'

require 'graph_ql/static_validation/argument_literals_are_compatible'
require 'graph_ql/static_validation/fragments_are_on_composite_types'
require 'graph_ql/static_validation/fragments_are_finite'
require 'graph_ql/static_validation/arguments_are_defined'
require 'graph_ql/static_validation/required_arguments_are_present'
require 'graph_ql/static_validation/fragment_types_exist'
require 'graph_ql/static_validation/directives_are_defined'
require 'graph_ql/static_validation/fields_are_defined_on_type'
require 'graph_ql/static_validation/fields_have_appropriate_selections'
require 'graph_ql/static_validation/fields_will_merge'
require 'graph_ql/static_validation/fragments_are_used'
require 'graph_ql/static_validation/type_stack'
require 'graph_ql/static_validation/validator'
require 'graph_ql/static_validation/literal_validator'
