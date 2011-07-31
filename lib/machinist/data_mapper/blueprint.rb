module Machinist::DataMapper
  class Blueprint < Machinist::Blueprint

    # Make and save an object.
    def make!(attributes = {})
      object = make(attributes)
      object.raise_on_save_failure = true
      object.save
      object.reload
    end

    # Box an object for storage in the warehouse.
    def box(object)
      object.key
    end

    # Unbox an object from the warehouse.
    def unbox(id)
      @klass.find(id)
    end

    # Execute a block on a separate database connection, so that any database
    # operations happen outside any open transactions.
    def outside_transaction
      # ActiveRecord manages connections per-thread, so the only way to
      # convince it to open another connection is to start another thread.
      thread = Thread.new do
        begin
          yield
        end
      end
      thread.value
    end

    def lathe_class #:nodoc:
      Machinist::DataMapper::Lathe
    end

  end
end
