------------------------------------------------------------------------------
-- Sample Symmetric Configuration
------------------------------------------------------------------------------
--
-- Nodes
--
delete from sym_node_group_link;
delete from sym_node_group;
delete from sym_node_identity;
delete from sym_node_security;
delete from sym_node;

insert into sym_node_group (node_group_id, description) 
values ('server','Main Server');
insert into sym_node_group (node_group_id, description) 
values ('client','Client');


insert into sym_node_group_link (source_node_group_id, target_node_group_id, data_event_action)
values ('client','server','P');
insert into sym_node_group_link (source_node_group_id, target_node_group_id, data_event_action)
values ('server','client','W');

insert into sym_node (node_id, node_group_id, external_id, sync_enabled)
values ('00000','server','00000', 1);
insert into sym_node_identity values ('00000');

--insert into sym_node (node_id, node_group_id, external_id, sync_enabled) 
--values ('1','client','1','1');
--insert into sym_node_security (node_id, node_password, registration_enabled, initial_load_enabled, created_at_node_id) 
--values ('1','jboss','1','1','00000');

--
-- Channels
--
insert into sym_channel 
(channel_id, processing_order, max_batch_size, enabled, description)
values('mywms_channel', 1, 100000, 1, 'mywms symmetricds channel');

--
-- Triggers
--
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_AREA','LOS_AREA','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_AVISREQ','LOS_AVISREQ','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_BOM','LOS_BOM','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_EXTINGUISHREQ','LOS_EXTINGUISHREQ','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_EXTORDER','LOS_EXTORDER','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_FIXASSGN','LOS_FIXASSGN','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_GOODSRECEIPT','LOS_GOODSRECEIPT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_GOODSRECEIPT_LOS_AVISREQ','LOS_GOODSRECEIPT_LOS_AVISREQ','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_GRRPOSITION','LOS_GRRPOSITION','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_INVENTORY','LOS_INVENTORY','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_ITEMDATA_NUMBER','LOS_ITEMDATA_NUMBER','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_JRXML','LOS_JRXML','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_LOCATIONCLUSTER','LOS_LOCATIONCLUSTER','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_ORDER','LOS_ORDER','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_ORDERRECEIPT','LOS_ORDERRECEIPT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_ORDERRECEIPTPOS','LOS_ORDERRECEIPTPOS','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_ORDERREQ','LOS_ORDERREQ','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_ORDERREQPOS','LOS_ORDERREQPOS','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_OUTPOS','LOS_OUTPOS','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_OUTREQ','LOS_OUTREQ','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_PICKRECEIPT','LOS_PICKRECEIPT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_PICKRECEIPTPOS','LOS_PICKRECEIPTPOS','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_PICKREQ','LOS_PICKREQ','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_PICKREQPOS','LOS_PICKREQPOS','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_RACK','LOS_RACK','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_RACKLOCATION','LOS_RACKLOCATION','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_REPLENISHREQ','LOS_REPLENISHREQ','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_REPLENISHREQ_LOS_STORLOC','LOS_REPLENISHREQ_LOS_STORLOC','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_SEQUENCENUMBER','LOS_SEQUENCENUMBER','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_SERVICECONF','LOS_SERVICECONF','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_SLLABEL','LOS_SLLABEL','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_STOCKRECORD','LOS_STOCKRECORD','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_STOCKTAKING','LOS_STOCKTAKING','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_STOCKTAKINGORDER','LOS_STOCKTAKINGORDER','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_STOCKTAKINGRECORD','LOS_STOCKTAKINGRECORD','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_STORAGELOCATIONTYPE','LOS_STORAGELOCATIONTYPE','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_STORAGEREQ','LOS_STORAGEREQ','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_STORLOC','LOS_STORLOC','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_SULABEL','LOS_SULABEL','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_SYSPROP','LOS_SYSPROP','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_TYPECAPACITYCONSTRAINT','LOS_TYPECAPACITYCONSTRAINT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_UL_RECORD','LOS_UL_RECORD','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_ULADVICE','LOS_ULADVICE','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_ULADVICEPOS','LOS_ULADVICEPOS','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_UNITLOAD','LOS_UNITLOAD','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_LOS_WORK_TYPE','LOS_WORK_TYPE','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_AREA','MYWMS_AREA','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_CLEARINGITEM','MYWMS_CLEARINGITEM','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_CLIENT','MYWMS_CLIENT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_DOCUMENT','MYWMS_DOCUMENT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_ITEMDATA','MYWMS_ITEMDATA','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_ITEMUNIT','MYWMS_ITEMUNIT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_LOGITEM','MYWMS_LOGITEM','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_LOT','MYWMS_LOT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_PLUGINCONFIGURATION','MYWMS_PLUGINCONFIGURATION','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_REQUEST','MYWMS_REQUEST','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_ROLE','MYWMS_ROLE','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_STOCKUNIT','MYWMS_STOCKUNIT','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_UNITLOAD','MYWMS_UNITLOAD','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_UNITLOADTYPE','MYWMS_UNITLOADTYPE','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_USER','MYWMS_USER','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_USER_MYWMS_ROLE','MYWMS_USER_MYWMS_ROLE','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_VEHICLEDATA','MYWMS_VEHICLEDATA','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_WORKITEM','MYWMS_WORKITEM','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_WORKITEMHISTORY','MYWMS_WORKITEMHISTORY','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_WORKVEHICLE','MYWMS_WORKVEHICLE','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_WORKVEHICLEHISTORY','MYWMS_WORKVEHICLEHISTORY','mywms_channel',1,current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_table_name,channel_id,SYNC_ON_INCOMING_BATCH,last_update_time,create_time)
values('CL_MYWMS_ZONE','MYWMS_ZONE','mywms_channel',1,current_timestamp,current_timestamp);

--
-- Routers
--

-- In this example, both routers pass everything all the time.

insert into sym_router 
(router_id,source_node_group_id,target_node_group_id,create_time,last_update_time)
values('server_client_identity','server','client', current_timestamp, current_timestamp);

insert into sym_router 
(router_id,target_schema_name,source_node_group_id,target_node_group_id,create_time,last_update_time)
values('client_server_identity','JBOSS','client','server', current_timestamp, current_timestamp);

--
-- Trigger Router Links
--
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_AREA','server_client_identity', 30, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_AVISREQ','server_client_identity', 35, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_BOM','server_client_identity', 40, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_EXTINGUISHREQ','server_client_identity', 45, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_EXTORDER','server_client_identity', 50, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_FIXASSGN','server_client_identity', 55, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_GOODSRECEIPT','server_client_identity', 60, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_GOODSRECEIPT_LOS_AVISREQ','server_client_identity', 65, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_GRRPOSITION','server_client_identity', 70, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_INVENTORY','server_client_identity', 75, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ITEMDATA_NUMBER','server_client_identity', 80, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_JRXML','server_client_identity', 85, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_LOCATIONCLUSTER','server_client_identity', 90, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDER','server_client_identity', 95, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDERRECEIPT','server_client_identity', 100, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDERRECEIPTPOS','server_client_identity', 105, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDERREQ','server_client_identity', 110, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDERREQPOS','server_client_identity', 115, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_OUTPOS','server_client_identity', 120, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_OUTREQ','server_client_identity', 125, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_PICKRECEIPT','server_client_identity', 130, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_PICKRECEIPTPOS','server_client_identity', 135, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_PICKREQ','server_client_identity', 140, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_PICKREQPOS','server_client_identity', 145, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_RACK','server_client_identity', 150, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_RACKLOCATION','server_client_identity', 155, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_REPLENISHREQ','server_client_identity', 160, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_REPLENISHREQ_LOS_STORLOC','server_client_identity', 165, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SEQUENCENUMBER','server_client_identity', 170, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SERVICECONF','server_client_identity', 175, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SLLABEL','server_client_identity', 180, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STOCKRECORD','server_client_identity', 185, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STOCKTAKING','server_client_identity', 190, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STOCKTAKINGORDER','server_client_identity', 195, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STOCKTAKINGRECORD','server_client_identity', 200, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STORAGELOCATIONTYPE','server_client_identity', 205, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STORAGEREQ','server_client_identity', 210, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STORLOC','server_client_identity', 215, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SULABEL','server_client_identity', 220, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SYSPROP','server_client_identity', 225, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_TYPECAPACITYCONSTRAINT','server_client_identity', 230, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_UL_RECORD','server_client_identity', 235, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ULADVICE','server_client_identity', 240, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ULADVICEPOS','server_client_identity', 245, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_UNITLOAD','server_client_identity', 250, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_WORK_TYPE','server_client_identity', 255, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_AREA','server_client_identity', 260, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_CLEARINGITEM','server_client_identity', 265, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_CLIENT','server_client_identity', 270, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_DOCUMENT','server_client_identity', 275, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_ITEMDATA','server_client_identity', 280, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_ITEMUNIT','server_client_identity', 285, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_LOGITEM','server_client_identity', 290, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_LOT','server_client_identity', 295, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_PLUGINCONFIGURATION','server_client_identity', 300, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_REQUEST','server_client_identity', 305, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_ROLE','server_client_identity', 310, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_STOCKUNIT','server_client_identity', 315, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_UNITLOAD','server_client_identity', 320, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_UNITLOADTYPE','server_client_identity', 325, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_USER','server_client_identity', 330, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_USER_MYWMS_ROLE','server_client_identity', 335, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_VEHICLEDATA','server_client_identity', 340, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_WORKITEM','server_client_identity', 345, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_WORKITEMHISTORY','server_client_identity', 350, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_WORKVEHICLE','server_client_identity', 355, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_WORKVEHICLEHISTORY','server_client_identity', 360, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_ZONE','server_client_identity', 365, current_timestamp, current_timestamp);






insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_AREA','client_server_identity', 430, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_AVISREQ','client_server_identity', 435, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_BOM','client_server_identity', 440, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_EXTINGUISHREQ','client_server_identity', 445, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_EXTORDER','client_server_identity', 450, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_FIXASSGN','client_server_identity', 455, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_GOODSRECEIPT','client_server_identity', 460, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_GOODSRECEIPT_LOS_AVISREQ','client_server_identity', 465, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_GRRPOSITION','client_server_identity', 470, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_INVENTORY','client_server_identity', 475, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ITEMDATA_NUMBER','client_server_identity', 480, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_JRXML','client_server_identity', 485, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_LOCATIONCLUSTER','client_server_identity', 490, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDER','client_server_identity', 495, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDERRECEIPT','client_server_identity', 4100, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDERRECEIPTPOS','client_server_identity', 4105, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDERREQ','client_server_identity', 4110, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ORDERREQPOS','client_server_identity', 4115, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_OUTPOS','client_server_identity', 4120, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_OUTREQ','client_server_identity', 4125, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_PICKRECEIPT','client_server_identity', 4130, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_PICKRECEIPTPOS','client_server_identity', 4135, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_PICKREQ','client_server_identity', 4140, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_PICKREQPOS','client_server_identity', 4145, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_RACK','client_server_identity', 4150, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_RACKLOCATION','client_server_identity', 4155, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_REPLENISHREQ','client_server_identity', 4160, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_REPLENISHREQ_LOS_STORLOC','client_server_identity', 4165, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SEQUENCENUMBER','client_server_identity', 4170, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SERVICECONF','client_server_identity', 4175, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SLLABEL','client_server_identity', 4180, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STOCKRECORD','client_server_identity', 4185, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STOCKTAKING','client_server_identity', 4190, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STOCKTAKINGORDER','client_server_identity', 4195, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STOCKTAKINGRECORD','client_server_identity', 4200, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STORAGELOCATIONTYPE','client_server_identity', 4205, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STORAGEREQ','client_server_identity', 4210, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_STORLOC','client_server_identity', 4215, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SULABEL','client_server_identity', 4220, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_SYSPROP','client_server_identity', 4225, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_TYPECAPACITYCONSTRAINT','client_server_identity', 4230, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_UL_RECORD','client_server_identity', 4235, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ULADVICE','client_server_identity', 4240, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_ULADVICEPOS','client_server_identity', 4245, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_UNITLOAD','client_server_identity', 4250, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_LOS_WORK_TYPE','client_server_identity', 4255, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_AREA','client_server_identity', 4260, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_CLEARINGITEM','client_server_identity', 4265, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_CLIENT','client_server_identity', 4270, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_DOCUMENT','client_server_identity', 4275, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_ITEMDATA','client_server_identity', 4280, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_ITEMUNIT','client_server_identity', 4285, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_LOGITEM','client_server_identity', 4290, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_LOT','client_server_identity', 4295, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_PLUGINCONFIGURATION','client_server_identity', 4300, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_REQUEST','client_server_identity', 4305, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_ROLE','client_server_identity', 4310, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_STOCKUNIT','client_server_identity', 4315, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_UNITLOAD','client_server_identity', 4320, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_UNITLOADTYPE','client_server_identity', 4325, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_USER','client_server_identity', 4330, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_USER_MYWMS_ROLE','client_server_identity', 4335, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_VEHICLEDATA','client_server_identity', 4340, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_WORKITEM','client_server_identity', 4345, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_WORKITEMHISTORY','client_server_identity', 4350, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_WORKVEHICLE','client_server_identity', 4355, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_WORKVEHICLEHISTORY','client_server_identity', 4360, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('CL_MYWMS_ZONE','client_server_identity', 4365, current_timestamp, current_timestamp);
