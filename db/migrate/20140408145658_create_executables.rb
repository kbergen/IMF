class CreateExecutables < ActiveRecord::Migration
  def change
    create_table :executables do |t|
      t.string :md5
      t.string :sha1
      t.string :sha256
      t.string :file_size_string
      t.text :notes
      t.text :section_sums
      t.string :av_detection
      t.string :parent_file_sha256
      t.string :unpacked_file_sha256
      t.text :dropped_files_sha256
      t.text :registry_modifications
      t.text :file_system_modifications
      t.text :created_or_destroyed_processes
      t.text :anti_vm
      t.text :anti_debug
      t.text :generated_mutexes
      t.text :other
      t.text :dns_names
      t.text :ip_addresses
      t.text :communication_samples
      t.text :ids_signatures
      t.string :pcap_artifact
      t.string :image_file_header_machine
      t.string :image_file_header_number_of_sections
      t.datetime :image_file_header_time_date_stamp
      t.string :image_file_header_pointer_to_symbol_table
      t.string :image_file_header_number_of_symbols
      t.string :image_file_header_size_of_optional_header
      t.string :image_file_header_characteristics
      t.string :image_optional_header_magic
      t.string :image_optional_header_major_linker_version
      t.string :image_optional_header_minor_linker_version
      t.string :image_optional_header_size_of_code
      t.string :image_optional_header_size_of_initialized_data
      t.string :image_optional_header_size_of_uninitialized_data
      t.string :image_optional_header_address_of_entry_point
      t.string :image_optional_header_base_of_code
      t.string :image_optional_header_base_of_data
      t.string :image_optional_header_image_base
      t.string :image_optional_header_section_alignment
      t.string :image_optional_header_file_alignment
      t.string :image_optional_header_major_os_version
      t.string :image_optional_header_minor_os_version
      t.string :image_optional_header_major_image_version
      t.string :image_optional_header_minor_image_version
      t.string :image_optional_header_major_subsystem_version
      t.string :image_optional_header_minor_subsystem_version
      t.string :image_optional_header_win32_version_value
      t.string :image_optional_header_size_of_image
      t.string :image_optional_header_size_of_headers
      t.string :image_optional_header_checksum
      t.string :image_optional_header_subsystem
      t.string :image_optional_header_dll_characteristics
      t.string :image_optional_header_size_of_stack_reserve
      t.string :image_optional_header_size_of_stack_commit
      t.string :image_optional_header_size_of_heap_reserve
      t.string :image_optional_header_size_of_heap_commit
      t.string :image_optional_header_loader_flags
      t.string :image_optional_header_number_of_data_directories
      t.string :image_optional_header_export_table_rva
      t.string :image_optional_header_export_table_size
      t.string :image_optional_header_import_table_rva
      t.string :image_optional_header_import_table_size
      t.string :image_optional_header_resource_table_rva
      t.string :image_optional_header_resource_table_size
      t.string :image_optional_header_exception_table_rva
      t.string :image_optional_header_exception_table_size
      t.string :image_optional_header_certificate_table_offset
      t.string :image_optional_header_certificate_table_size
      t.string :image_optional_header_base_relocation_table_rva
      t.string :image_optional_header_base_relocation_table_size
      t.string :image_optional_header_debug_directory_rva
      t.string :image_optional_header_debug_directory_size
      t.string :image_optional_header_architecture_specific_data_rva
      t.string :image_optional_header_architecture_specific_data_size
      t.string :image_optional_header_global_pointer_register_rva
      t.string :image_optional_header_global_pointer_register_size
      t.string :image_optional_header_tls_table_rva
      t.string :image_optional_header_tls_table_size
      t.string :image_optional_header_load_configuration_table_rva
      t.string :image_optional_header_load_configuration_table_size
      t.string :image_optional_header_bound_import_table_rva
      t.string :image_optional_header_bound_import_table_size
      t.string :image_optional_header_import_address_table_rva
      t.string :image_optional_header_import_address_table_size
      t.string :image_optional_header_delay_import_descriptors_rva
      t.string :image_optional_header_delay_import_descriptors_size
      t.string :image_optional_header_cli_header_rva
      t.string :image_optional_header_cli_header_size
      t.string :image_optional_header_end_rva
      t.string :image_optional_header_end_size
      t.text :image_section_headers
      t.text :import_address_table
      t.string :image_debug_directory_characteristics
      t.string :image_debug_directory_time_date_stamp
      t.string :image_debug_directory_major_version
      t.string :image_debug_directory_minor_version
      t.string :image_debug_directory_type
      t.string :image_debug_directory_size_of_data
      t.string :image_debug_directory_address_of_raw_data
      t.string :image_debug_directory_pointer_to_raw_data
      t.string :image_load_config_directory_size
      t.string :image_load_config_directory_time_date_stamp
      t.string :image_load_config_directory_major_version
      t.string :image_load_config_directory_minor_version
      t.string :image_load_config_directory_global_flags_clear
      t.string :image_load_config_directory_global_flags_set
      t.string :image_load_config_directory_critical_section_default_timeout
      t.string :image_load_config_directory_decommit_free_block_threshold
      t.string :image_load_config_directory_lock_prefix_table_va
			t.string :image_load_config_directory_decommit_total_free_threshold
      t.string :image_load_config_directory_maximum_allocation_size
      t.string :image_load_config_directory_virtual_memory_threshold
      t.string :image_load_config_directory_process_heap_flags
      t.string :image_load_config_directory_process_affinity_mask
      t.string :image_load_config_directory_csd_version
      t.string :image_load_config_directory_reserved
      t.string :image_load_config_directory_edit_list_va
      t.string :image_load_config_directory_security_cookie_va
      t.string :image_load_config_directory_se_handler_table_va
      t.string :image_load_config_directory_se_handler_count
      t.text :image_debug_type_codeview
      t.text :import_directory_table
      t.text :inport_name_table
      t.text :import_hints_names_and_dll_names

      t.timestamps
    end
  end
end
