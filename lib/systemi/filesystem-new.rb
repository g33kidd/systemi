require 'rbconfig'

# Just a namespace
module Systemi

  class Filesystem
    extend FFI::Library
    ffi_lib FFI::Library::LIBC

    private

    if RbConfig::CONFIG['host_os'] =~ /sunos|solaris/i
    else
    end

    begin
      if RbConfig::CONFIG['host_os'] =~ /sunos|solaris/i
      else
      end
    rescue
      if RbConfig::CONFIG['host_os'] =~ /darwin|osx|mach/i
      else
      end
    end



    public

    class Stat
      RDONLY  = 1 # readonly filesystem.
      NOSUID  = 2 # no support suid or sgid semantics.
      NOTRUNC = 3 # does not trunc. file names longer than +name_max+.

      attr_accessor :path
      attr_accessor :block_size
      attr_accessor :fragment_size
      attr_accessor :blocks
      attr_accessor :blocks_free
      attr_accessor :blocks_available
      attr_accessor :files
      attr_accessor :files_free
      attr_accessor :files_available
      attr_accessor :filesystem_id
      attr_accessor :flags
      attr_accessor :name_max
      attr_accessor :base_type

      def initialize
        @path = nil
        @block_size = nil
        @fragment_size = nil
        @blocks = nil
        @blocks_free = nil
        @blocks_available = nil
        @files = nil
        @files_free = nil
        @files_available = nil
        @filesystem_id = nil
        @flags = nil
        @name_max = nil
        @base_type = nil
      end

      def bytes_total
        blocks * block_size
      end

      def bytes_free
        blocks_available * block_size
      end

      def bytes_used
        bytes_total - bytes_free
      end

      def percent_used
        100 - (100.0 * bytes_free.to_f / bytes_total.to_f)
      end
    end

    class Mount
      attr_accessor :name
      attr_accessor :mount_point
      attr_accessor :mount_type
      attr_accessor :options
      attr_accessor :mount_time
      attr_accessor :dump_frequency
      attr_accessor :pass_number

      def initialize
        @name = nil
        @mount_point = nil
        @mount_type = nil
        @options = nil
        @mount_time = nil
        @dump_frequency = nil
        @pass_number = nil
      end
    end

  end

end