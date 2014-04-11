class ExecutablesController < ApplicationController
  before_action :set_executable, only: [:show, :edit, :update, :destroy]

  # GET /executables
  # GET /executables.json
  def index
    @executables = Executable.all
  end

  # GET /executables/1
  # GET /executables/1.json
  def show
  end

  # GET /executables/new
  def new
    @executable = Executable.new
  end

  # GET /executables/1/edit
  def edit
  end

  # POST /executables
  # POST /executables.json
  def create
    @executable = Executable.new(executable_params)

    respond_to do |format|
      if @executable.save
        format.html { redirect_to @executable, notice: 'Executable was successfully created.' }
        format.json { render action: 'show', status: :created, location: @executable }
      else
        format.html { render action: 'new' }
        format.json { render json: @executable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /executables/1
  # PATCH/PUT /executables/1.json
  def update
    respond_to do |format|
      if @executable.update(executable_params)
        format.html { redirect_to @executable, notice: 'Executable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @executable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /executables/1
  # DELETE /executables/1.json
  def destroy
    @executable.destroy
    respond_to do |format|
      format.html { redirect_to executables_url }
      format.json { head :no_content }
    end
  end

	def invalidFile
		
	end

	def uploadExe
		if !(params[:file]).nil?
			file_io_stream = Executable.saveToDisk(params[:file])
			render :text => "File has been uploaded successfully"
		end
	end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_executable
      @executable = Executable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def executable_params
      params.require(:executable).permit(:md5, :sha1, :sha256, :file_size_string, :notes, :section_sums, :av_detection, :parent_file_sha256, :unpacked_file_sha256, :dropped_files_sha256, :registry_modifications, :file_system_modifications, :created_or_destroyed_processes, :anti_vm, :anti_debug, :generated_mutexes, :other, :dns_names, :ip_addresses, :communication_samples, :ids_signatures, :pcap_artifact, :image_file_header_machine, :image_file_header_number_of_sections, :image_file_header_time_date_stamp, :image_file_header_pointer_to_symbol_table, :image_file_header_number_of_symbols, :image_file_header_size_of_optional_header, :image_file_header_characteristics, :image_optional_header_magic, :image_optional_header_major_linker_version, :image_optional_header_minor_linker_version, :image_optional_header_size_of_code, :image_optional_header_size_of_initialized_data, :image_optional_header_size_of_uninitialized_data, :image_optional_header_address_of_entry_point, :image_optional_header_base_of_code, :image_optional_header_base_of_data, :image_optional_header_image_base, :image_optional_header_section_alignment, :image_optional_header_file_alignment, :image_optional_header_major_os_version, :image_optional_header_minor_os_version, :image_optional_header_major_image_version, :image_optional_header_minor_image_version, :image_optional_header_major_subsystem_version, :image_optional_header_minor_subsystem_version, :image_optional_header_win32_version_value, :image_optional_header_size_of_image, :image_optional_header_size_of_headers, :image_optional_header_checksum, :image_optional_header_subsystem, :image_optional_header_dll_characteristics, :image_optional_header_size_of_stack_reserve, :image_optional_header_size_of_stack_commit, :image_optional_header_size_of_heap_reserve, :image_optional_header_size_of_heap_commit, :image_optional_header_loader_flags, :image_optional_header_number_of_data_directories, :image_optional_header_export_table_rva, :image_optional_header_export_table_size, :image_optional_header_import_table_rva, :image_optional_header_import_table_size, :image_optional_header_resource_table_rva, :image_optional_header_resource_table_size, :image_optional_header_exception_table_rva, :image_optional_header_exception_table_size, :image_optional_header_certificate_table_offset, :image_optional_header_certificate_table_size, :image_optional_header_base_relocation_table_rva, :image_optional_header_base_relocation_table_size, :image_optional_header_debug_directory_rva, :image_optional_header_debug_directory_size, :image_optional_header_architecture_specific_data_rva, :image_optional_header_architecture_specific_data_size, :image_optional_header_global_pointer_register_rva, :image_optional_header_global_pointer_register_size, :image_optional_header_tls_table_rva, :image_optional_header_tls_table_size, :image_optional_header_load_configuration_table_rva, :image_optional_header_load_configuration_table_size, :image_optional_header_bound_import_table_rva, :image_optional_header_bound_import_table_size, :image_optional_header_import_address_table_rva, :image_optional_header_import_address_table_size, :image_optional_header_delay_import_descriptors_rva, :image_optional_header_delay_import_descriptors_size, :image_optional_header_cli_header_rva, :image_optional_header_cli_header_size, :image_optional_header_end_rva, :image_optional_header_end_size, :image_section_headers, :import_address_table, :image_debug_directory_characteristics, :image_debug_directory_time_date_stamp, :image_debug_directory_major_version, :image_debug_directory_minor_version, :image_debug_directory_type, :image_debug_directory_size_of_data, :image_debug_directory_address_of_raw_data, :image_debug_directory_pointer_to_raw_data, :image_load_config_directory_size, :image_load_config_directory_time_date_stamp, :image_load_config_directory_major_version, :image_load_config_directory_minor_version, :image_load_config_directory_global_flags_clear, :image_load_config_directory_global_flags_set, :image_load_config_directory_critical_section_default_timeout, :image_load_config_directory_decommit_free_block_threshold, :image_load_config_directory_decommit_total_free_threshold, :image_load_config_directory_maximum_allocation_size, :image_load_config_directory_virtual_memory_threshold, :image_load_config_directory_process_heap_flags, :image_load_config_directory_process_affinity_mask, :image_load_config_directory_csd_version, :image_load_config_directory_reserved, :image_load_config_directory_edit_list_va, :image_load_config_directory_security_cookie_va, :image_load_config_directory_se_handler_table_va, :image_load_config_directory_se_handler_count, :image_debug_type_codeview, :import_directory_table, :inport_name_table, :import_hints_names_and_dll_names, :associated_intel, :malicious_file, :parent_packed_file, :vt_link, :sandbox_link)
    end
end
