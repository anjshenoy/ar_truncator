module ActiveRecord
  class Base
    class << self
      def truncate
        statement = "TRUNCATE table #{self.table_name}"
        self.connection.execute(statement)
      end
    end
  end
end
