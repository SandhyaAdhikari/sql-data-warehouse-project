create or alter procedure bronze.load_bronze as 
begin
declare @start_time datetime, @end_time datetime;
	begin try
	print '========================================================================';
	print 'loading bronze layer';

	print '========================================================================';

	print '------------------------------------------------------------------------';
	print 'loading crm table';
	print '------------------------------------------------------------------------';


	set @start_time= getdate();
		truncate table bronze.crm_cust_info

		bulk insert bronze.crm_cust_info
		from'D:\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
		with(
		firstrow=2,
		fieldterminator=',',
		tablock
		);

		select * from bronze.crm_cust_info

		select count(*) from bronze.crm_cust_info

	set @end_time= getdate();
	print '>>load duration>>' + cast(datediff(second, @start_time, @end_time) as nvarchar(20)) + ' seconds';
	print '-------------------'



	set @start_time= getdate();
		truncate table bronze.crm_prd_info

		bulk insert bronze.crm_prd_info
		from'D:\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
		with(
		firstrow=2,
		fieldterminator=',',
		tablock
		);
		select count(*) from bronze.crm_prd_info
		set @end_time= getdate();
	print '>>load duration>>' + cast(datediff(second, @start_time, @end_time) as nvarchar(20)) + ' seconds';
	print '-------------------'






		set @start_time= getdate();
		truncate table bronze.crm_sales_details

		bulk insert bronze.crm_sales_details
		from'D:\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
		with(
		firstrow=2,
		fieldterminator=',',
		tablock
		);
		select count(*) from bronze.crm_sales_details
		set @end_time= getdate();
	print '>>load duration>>' + cast(datediff(second, @start_time, @end_time) as nvarchar(20)) + ' seconds';
	print '-------------------'


		print '------------------------------------------------------------------------';
		print 'loading erp table'
		print '------------------------------------------------------------------------';



		set @start_time= getdate();
		truncate table bronze.erp_loc_a101

		bulk insert bronze.erp_loc_a101
		from'D:\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
		with(
		firstrow=2,
		fieldterminator=',',
		tablock
		);
		select count(*) from bronze.erp_loc_a101
		set @end_time= getdate();
	print '>>load duration>>' + cast(datediff(second, @start_time, @end_time) as nvarchar(20)) + ' seconds';
	print '-------------------'



		set @start_time= getdate();
		truncate table bronze.erp_cust_az12

		bulk insert bronze.erp_cust_az12
		from'D:\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
		with(
		firstrow=2,
		fieldterminator=',',
		tablock
		);
		select count(*) from bronze.erp_cust_az12
		set @end_time= getdate();
	print '>>load duration>>' + cast(datediff(second, @start_time, @end_time) as nvarchar(20)) + ' seconds';
	print '-------------------'




		set @start_time= getdate();
		truncate table bronze.erp_px_cat_g1v2

		bulk insert bronze.erp_px_cat_g1v2
		from'D:\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
		with(
		firstrow=2,
		fieldterminator=',',
		tablock
		);
		select count(*)from bronze.erp_px_cat_g1v2
		set @end_time= getdate();
	print '>>load duration>>' + cast(datediff(second, @start_time, @end_time) as nvarchar(20)) + ' seconds';
	print '-------------------'


end try
begin catch
print '============================';
print'error occured during loading brinze layer';
print 'error message' + error_message();
print 'error message'+ cast(error_number() as nvarchar);
print 'error message'+ cast(error_state() as nvarchar);
print '============================';
end catch
end
