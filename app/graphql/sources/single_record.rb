module Sources
  class SingleRecord < GraphQL::Dataloader::Source
    def initialize(base_relation, key: :id)
      @base_relation = base_relation
      @key = key
      super()
    end

    def fetch(keys)
      records = @base_relation.where(@key => keys)
      # return a list with `nil` for any ID that wasn't found
      aa = keys.map { |key| records.find { |r| r[@key] == key } }
      aa
    end
  end
end
