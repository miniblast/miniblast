require "multi_json"
module Miniblast
  module Model
    class FileModel
      def initialize(filename)
        @filename = filename

        # If filename is "dir/37.json", @id is 37
        basename = File.split(filename)[-1]
        @id = File.basename(basename, ".json").to_i

        obj = File.read(filename)
        @hash = MultiJson.decode(obj)
      end

      def [](name)
        @hash[name.to_s]
      end

      def []=(name, value)
        @hash[name.to_s] = value
      end

      def self.find(id)
        begin
          FileModel.new("db/#{id}.json")
        rescue
          return nil
        end
      end

      def self.all
        files = Dir["db/*.json"]
        files.map { |f| FileModel.new f }
      end

      def self.create(attrs)
        hash = {}
        hash["author"] = attrs["author"] || ""
        hash["data"] = attrs["data"] || ""
        hash["function"] = attrs["function"] || ""

        files = Dir["db/*.json"]
        names = files.map { |f| f.split("/")[-1] }
        highest = names.map { |b| b[0...-5].to_i }.max
        id = highest + 1

        File.open("db/#{id}.json", "w") do |f|
          f.write <<TEMPLATE
{
  "author": "#{hash["author"]}",
  "data": "#{hash["data"]}",
  "function": "#{hash["function"]}"
}
TEMPLATE
        end

        FileModel.new "db/#{id}.json"
      end

    end
  end
end
