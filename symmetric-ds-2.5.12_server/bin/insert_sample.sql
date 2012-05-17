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
values ('server', 'Main Server');
insert into sym_node_group (node_group_id, description) 
values ('client', 'Client');


insert into sym_node_group_link (source_node_group_id, target_node_group_id, data_event_action)
values ('client', 'server', 'P');
insert into sym_node_group_link (source_node_group_id, target_node_group_id, data_event_action)
values ('server', 'client', 'W');

insert into sym_node (node_id, node_group_id, external_id, sync_enabled)
values ('00000', 'server', '00000', 1);
insert into sym_node_identity values ('00000');

--insert into sym_node (node_id, node_group_id, external_id, sync_enabled) 
--values ('1', 'client', '1', '1');
--insert into sym_node_security (node_id, node_password, registration_enabled, initial_load_enabled, created_at_node_id) 
--values ('1', 'jboss', '1', '1', '00000');

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
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('JMS_MESSAGES' ,'JBOSS','JMS_MESSAGES','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('JMS_ROLES' ,'JBOSS','JMS_ROLES','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('JMS_SUBSCRIPTIONS' ,'JBOSS','JMS_SUBSCRIPTIONS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('JMS_TRANSACTIONS' ,'JBOSS','JMS_TRANSACTIONS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('JMS_USERS' ,'JBOSS','JMS_USERS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_AREA' ,'JBOSS','LOS_AREA','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_AVISREQ' ,'JBOSS','LOS_AVISREQ','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_BOM' ,'JBOSS','LOS_BOM','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_EXTINGUISHREQ' ,'JBOSS','LOS_EXTINGUISHREQ','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_EXTORDER' ,'JBOSS','LOS_EXTORDER','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_FIXASSGN' ,'JBOSS','LOS_FIXASSGN','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_GOODSRECEIPT' ,'JBOSS','LOS_GOODSRECEIPT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_GOODSRECEIPT_LOS_AVISREQ' ,'JBOSS','LOS_GOODSRECEIPT_LOS_AVISREQ','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_GRRPOSITION' ,'JBOSS','LOS_GRRPOSITION','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_INVENTORY' ,'JBOSS','LOS_INVENTORY','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_ITEMDATA_NUMBER' ,'JBOSS','LOS_ITEMDATA_NUMBER','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_JRXML' ,'JBOSS','LOS_JRXML','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_LOCATIONCLUSTER' ,'JBOSS','LOS_LOCATIONCLUSTER','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_ORDER' ,'JBOSS','LOS_ORDER','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_ORDERRECEIPT' ,'JBOSS','LOS_ORDERRECEIPT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_ORDERRECEIPTPOS' ,'JBOSS','LOS_ORDERRECEIPTPOS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_ORDERREQ' ,'JBOSS','LOS_ORDERREQ','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_ORDERREQPOS' ,'JBOSS','LOS_ORDERREQPOS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_OUTPOS' ,'JBOSS','LOS_OUTPOS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_OUTREQ' ,'JBOSS','LOS_OUTREQ','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_PICKRECEIPT' ,'JBOSS','LOS_PICKRECEIPT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_PICKRECEIPTPOS' ,'JBOSS','LOS_PICKRECEIPTPOS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_PICKREQ' ,'JBOSS','LOS_PICKREQ','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_PICKREQPOS' ,'JBOSS','LOS_PICKREQPOS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_RACK' ,'JBOSS','LOS_RACK','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_RACKLOCATION' ,'JBOSS','LOS_RACKLOCATION','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_REPLENISHREQ' ,'JBOSS','LOS_REPLENISHREQ','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_REPLENISHREQ_LOS_STORLOC' ,'JBOSS','LOS_REPLENISHREQ_LOS_STORLOC','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_SEQUENCENUMBER' ,'JBOSS','LOS_SEQUENCENUMBER','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_SERVICECONF' ,'JBOSS','LOS_SERVICECONF','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_SLLABEL' ,'JBOSS','LOS_SLLABEL','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_STOCKRECORD' ,'JBOSS','LOS_STOCKRECORD','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_STOCKTAKING' ,'JBOSS','LOS_STOCKTAKING','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_STOCKTAKINGORDER' ,'JBOSS','LOS_STOCKTAKINGORDER','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_STOCKTAKINGRECORD' ,'JBOSS','LOS_STOCKTAKINGRECORD','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_STORAGELOCATIONTYPE' ,'JBOSS','LOS_STORAGELOCATIONTYPE','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_STORAGEREQ' ,'JBOSS','LOS_STORAGEREQ','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_STORLOC' ,'JBOSS','LOS_STORLOC','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_SULABEL' ,'JBOSS','LOS_SULABEL','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_SYSPROP' ,'JBOSS','LOS_SYSPROP','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_TYPECAPACITYCONSTRAINT' ,'JBOSS','LOS_TYPECAPACITYCONSTRAINT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_UL_RECORD' ,'JBOSS','LOS_UL_RECORD','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_ULADVICE' ,'JBOSS','LOS_ULADVICE','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_ULADVICEPOS' ,'JBOSS','LOS_ULADVICEPOS','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_UNITLOAD' ,'JBOSS','LOS_UNITLOAD','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('LOS_WORK_TYPE' ,'JBOSS','LOS_WORK_TYPE','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_AREA' ,'JBOSS','MYWMS_AREA','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_CLEARINGITEM' ,'JBOSS','MYWMS_CLEARINGITEM','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_CLIENT' ,'JBOSS','MYWMS_CLIENT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_DOCUMENT' ,'JBOSS','MYWMS_DOCUMENT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_ITEMDATA' ,'JBOSS','MYWMS_ITEMDATA','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_ITEMUNIT' ,'JBOSS','MYWMS_ITEMUNIT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_LOGITEM' ,'JBOSS','MYWMS_LOGITEM','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_LOT' ,'JBOSS','MYWMS_LOT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_PLUGINCONFIGURATION' ,'JBOSS','MYWMS_PLUGINCONFIGURATION','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_REQUEST' ,'JBOSS','MYWMS_REQUEST','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_ROLE' ,'JBOSS','MYWMS_ROLE','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_STOCKUNIT' ,'JBOSS','MYWMS_STOCKUNIT','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_UNITLOAD' ,'JBOSS','MYWMS_UNITLOAD','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_UNITLOADTYPE' ,'JBOSS','MYWMS_UNITLOADTYPE','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_USER' ,'JBOSS','MYWMS_USER','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_USER_MYWMS_ROLE' ,'JBOSS','MYWMS_USER_MYWMS_ROLE','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_VEHICLEDATA' ,'JBOSS','MYWMS_VEHICLEDATA','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_WORKITEM' ,'JBOSS','MYWMS_WORKITEM','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_WORKITEMHISTORY' ,'JBOSS','MYWMS_WORKITEMHISTORY','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_WORKVEHICLE' ,'JBOSS','MYWMS_WORKVEHICLE','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_WORKVEHICLEHISTORY' ,'JBOSS','MYWMS_WORKVEHICLEHISTORY','mywms_channel',current_timestamp,current_timestamp);
insert into sym_trigger 
(trigger_id,source_schema_name,source_table_name,channel_id,last_update_time,create_time)
values('MYWMS_ZONE' ,'JBOSS','MYWMS_ZONE','mywms_channel',current_timestamp,current_timestamp);

--
-- Routers
--

-- In this example, both routers pass everything all the time.

insert into sym_router 
(router_id,target_schema_name,source_node_group_id,target_node_group_id,create_time,last_update_time)
values('server_client_identity', 'PUBLIC','server', 'client', current_timestamp, current_timestamp);

insert into sym_router 
(router_id,target_schema_name,source_node_group_id,target_node_group_id,create_time,last_update_time)
values('client_server_identity', 'JBOSS','client', 'server', current_timestamp, current_timestamp);

--
-- Trigger Router Links
--

insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('JMS_MESSAGES','server_client_identity', 5, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('JMS_ROLES','server_client_identity', 10, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('JMS_SUBSCRIPTIONS','server_client_identity', 15, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('JMS_TRANSACTIONS','server_client_identity', 20, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('JMS_USERS','server_client_identity', 25, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_AREA','server_client_identity', 30, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_AVISREQ','server_client_identity', 35, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_BOM','server_client_identity', 40, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_EXTINGUISHREQ','server_client_identity', 45, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_EXTORDER','server_client_identity', 50, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_FIXASSGN','server_client_identity', 55, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_GOODSRECEIPT','server_client_identity', 60, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_GOODSRECEIPT_LOS_AVISREQ','server_client_identity', 65, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_GRRPOSITION','server_client_identity', 70, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_INVENTORY','server_client_identity', 75, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_ITEMDATA_NUMBER','server_client_identity', 80, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_JRXML','server_client_identity', 85, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_LOCATIONCLUSTER','server_client_identity', 90, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_ORDER','server_client_identity', 95, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_ORDERRECEIPT','server_client_identity', 100, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_ORDERRECEIPTPOS','server_client_identity', 105, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_ORDERREQ','server_client_identity', 110, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_ORDERREQPOS','server_client_identity', 115, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_OUTPOS','server_client_identity', 120, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_OUTREQ','server_client_identity', 125, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_PICKRECEIPT','server_client_identity', 130, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_PICKRECEIPTPOS','server_client_identity', 135, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_PICKREQ','server_client_identity', 140, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_PICKREQPOS','server_client_identity', 145, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_RACK','server_client_identity', 150, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_RACKLOCATION','server_client_identity', 155, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_REPLENISHREQ','server_client_identity', 160, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_REPLENISHREQ_LOS_STORLOC','server_client_identity', 165, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_SEQUENCENUMBER','server_client_identity', 170, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_SERVICECONF','server_client_identity', 175, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_SLLABEL','server_client_identity', 180, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_STOCKRECORD','server_client_identity', 185, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_STOCKTAKING','server_client_identity', 190, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_STOCKTAKINGORDER','server_client_identity', 195, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_STOCKTAKINGRECORD','server_client_identity', 200, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_STORAGELOCATIONTYPE','server_client_identity', 205, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_STORAGEREQ','server_client_identity', 210, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_STORLOC','server_client_identity', 215, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_SULABEL','server_client_identity', 220, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_SYSPROP','server_client_identity', 225, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_TYPECAPACITYCONSTRAINT','server_client_identity', 230, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_UL_RECORD','server_client_identity', 235, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_ULADVICE','server_client_identity', 240, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_ULADVICEPOS','server_client_identity', 245, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_UNITLOAD','server_client_identity', 250, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('LOS_WORK_TYPE','server_client_identity', 255, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_AREA','server_client_identity', 260, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_CLEARINGITEM','server_client_identity', 265, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_CLIENT','server_client_identity', 270, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_DOCUMENT','server_client_identity', 275, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_ITEMDATA','server_client_identity', 280, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_ITEMUNIT','server_client_identity', 285, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_LOGITEM','server_client_identity', 290, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_LOT','server_client_identity', 295, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_PLUGINCONFIGURATION','server_client_identity', 300, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_REQUEST','server_client_identity', 305, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_ROLE','server_client_identity', 310, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_STOCKUNIT','server_client_identity', 315, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_UNITLOAD','server_client_identity', 320, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_UNITLOADTYPE','server_client_identity', 325, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_USER','server_client_identity', 330, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_USER_MYWMS_ROLE','server_client_identity', 335, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_VEHICLEDATA','server_client_identity', 340, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_WORKITEM','server_client_identity', 345, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_WORKITEMHISTORY','server_client_identity', 350, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_WORKVEHICLE','server_client_identity', 355, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_WORKVEHICLEHISTORY','server_client_identity', 360, current_timestamp, current_timestamp);
insert into sym_trigger_router 
(trigger_id,router_id,initial_load_order,last_update_time,create_time)
values('MYWMS_ZONE','server_client_identity', 365, current_timestamp, current_timestamp);
