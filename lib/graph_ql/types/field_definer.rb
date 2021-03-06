class GraphQL::FieldDefiner
  include Singleton

  def build(type:, args: {}, property: nil, desc: "", deprecation_reason: nil)
    resolve = if property.nil?
      -> (o, a, c)  { GraphQL::Query::DEFAULT_RESOLVE }
    else
      -> (object, a, c) { object.send(property) }
    end

    GraphQL::Field.new do |f|
      f.type(type)
      f.arguments(args)
      f.description(desc)
      f.resolve(resolve)
      f.deprecation_reason(deprecation_reason)
    end
  end
end
