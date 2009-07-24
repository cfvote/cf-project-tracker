if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_activity]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_activity]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_carriers]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_carriers]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_categories]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_categories]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_client_rates]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_client_rates]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_clients]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_clients]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_comments]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_comments]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_files]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_files]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_file_attach]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_file_attach]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_issues]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_issues]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_message_notify]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_message_notify]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_messages]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_messages]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_milestones]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_milestones]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_project_components]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_issue_areas]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_project_users]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_project_users]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_project_versions]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_issue_versions]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_projects]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_projects]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_screenshots]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_screenshots]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_settings]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_settings]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_svn_link]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_svn_link]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_timetrack]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_timetrack]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_todolists]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_todolists]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_todos]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_todos]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_user_notify]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_user_notify]GOif exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[pt_users]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)drop table [dbo].[pt_users]GOCREATE TABLE [dbo].[pt_activity] (	[activityID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[userID] [char] (35) NOT NULL ,	[type] [nvarchar] (12) NULL ,	[id] [char] (35) NOT NULL ,	[name] [nvarchar] (100) NULL ,	[activity] [nvarchar] (50) NULL ,	[stamp] [datetime] NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_carriers] (	[carrierID] [char] (35) NOT NULL ,	[carrier] [nvarchar] (20) NULL ,	[countryCode] [nvarchar] (2) NULL ,	[country] [nvarchar] (20) NULL ,	[prefix] [nvarchar] (3) NULL ,	[suffix] [nvarchar] (40) NULL ,	[active] [tinyint] NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_categories] (	[projectID] [char] (35) NOT NULL ,	[categoryID] [char] (35) NOT NULL ,	[type] [nvarchar] (5) NOT NULL ,	[category] [nvarchar] (80) NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_client_rates] (	[rateID] [char] (35) NOT NULL ,	[clientID] [char] (35) NULL ,	[category] [nvarchar] (50) NULL ,	[rate] numeric (6,2) NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_clients] (	[clientID] [char] (35) NOT NULL ,	[name] [nvarchar] (150) NULL ,	[address] [ntext] NULL ,	[city] [nvarchar] (150) NULL ,	[locality] [nvarchar] (200) NULL ,	[country] [nvarchar] (35) NULL ,	[postal] [nvarchar] (40) NULL ,	[phone] [nvarchar] (40) NULL ,	[fax] [nvarchar] (40) NULL ,	[contactName] [nvarchar] (60) NULL ,	[contactPhone] [nvarchar] (40) NULL ,	[contactEmail] [nvarchar] (150) NULL ,	[website] [nvarchar] (150) NULL ,	[notes] [ntext] NULL ,	[active] [tinyint] NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_comments] (	[commentID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[type] [nvarchar] (6) NOT NULL ,	[itemID] [char] (35) NOT NULL ,	[userID] [char] (35) NOT NULL ,	[commentText] [ntext] NULL ,	[stamp] [datetime] NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_files] (	[fileID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[title] [nvarchar] (200) NULL ,	[description] [ntext] NULL ,	[categoryID] [char] (35) NOT NULL ,	[filename] [nvarchar] (150) NULL ,	[serverfilename] [nvarchar] (150) NULL ,	[filetype] [nvarchar] (4) NULL ,	[filesize] [bigint] NULL ,	[uploaded] [datetime] NULL ,	[uploadedBy] [char] (35) NOT NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_file_attach] (	[itemID] [char] (35) NOT NULL ,	[fileID] [char] (35) NOT NULL ,	[type] [nvarchar] (6) NOT NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_issues] (	[issueID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[milestoneID] [nvarchar] (35) NULL ,	[shortID] [nvarchar] (7) NULL ,	[issue] [nvarchar] (120) NULL ,	[detail] [ntext] NULL ,	[type] [nvarchar] (11) NULL ,	[severity] [nvarchar] (10) NULL ,	[status] [nvarchar] (8) NULL ,	[relevantURL] [nvarchar] (255) NULL ,	[created] [datetime] NULL ,	[createdBy] [char] (35) NOT NULL ,	[assignedTo] [nvarchar] (35) NULL ,	[updated] [datetime] NULL ,	[updatedBy] [nvarchar] (35) NULL ,	[resolution] [nvarchar] (12) NULL ,	[resolutionDesc] [ntext] NULL ,	[componentID] [nvarchar] (35) NULL ,	[versionID] [nvarchar] (35) NULL ,	[dueDate] [datetime] NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_message_notify] (	[messageID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[userID] [char] (35) NOT NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_messages] (	[messageID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[milestoneID] [nvarchar] (35) NULL ,	[userID] [char] (35) NOT NULL ,	[title] [nvarchar] (120) NULL ,	[message] [ntext] NULL ,	[categoryID] [char] (35) NOT NULL ,	[category] [nvarchar] (50) NULL ,	[allowcomments] [tinyint] NULL ,	[stamp] [datetime] NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_milestones] (	[milestoneID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[userID] [char] (35) NOT NULL ,	[forID] [nvarchar] (35) NULL ,	[name] [nvarchar] (50) NULL ,	[description] [ntext] NULL ,	[dueDate] [datetime] NULL ,	[completed] [datetime] NULL ,	[rate] numeric (8,2) NULL ,	[billed] [tinyint] NULL ,	[paid] [tinyint] NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_project_components] (	[componentID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[component] [nvarchar] (50) NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_project_users] (	[userID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[admin] [tinyint] NULL ,	[file_view] [tinyint] NULL ,	[file_edit] [tinyint] NULL ,	[file_comment] [tinyint] NULL ,		[issue_view] [tinyint] NULL ,	[issue_edit] [tinyint] NULL ,	[issue_assign] [tinyint] NULL ,	[issue_resolve] [tinyint] NULL ,	[issue_close] [tinyint] NULL ,	[issue_comment] [tinyint] NULL ,	[msg_view] [tinyint] NULL ,	[msg_edit] [tinyint] NULL ,	[msg_comment] [tinyint] NULL ,	[mstone_view] [tinyint] NULL ,	[mstone_edit] [tinyint] NULL ,	[mstone_comment] [tinyint] NULL ,	[todolist_view] [tinyint] NULL ,	[todolist_edit] [tinyint] NULL ,	[todo_edit] [tinyint] NULL ,	[todo_comment] [tinyint] NULL ,	[time_view] [tinyint] NULL ,	[time_edit] [tinyint] NULL ,	[bill_view] [tinyint] NULL ,	[bill_edit] [tinyint] NULL ,	[bill_rates] [tinyint] NULL ,	[bill_invoices] [tinyint] NULL ,	[bill_markpaid] [tinyint] NULL ,	[report] [tinyint] NULL ,  	[svn] [tinyint] NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_project_versions] (	[versionID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[version] [nvarchar] (50) NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_projects] (	[projectID] [char] (35) NOT NULL ,	[ownerID] [char] (35) NULL ,	[clientID] [nvarchar] (35) NULL ,	[name] [nvarchar] (50) NULL ,	[description] [ntext] NULL ,	[display] [tinyint] NULL ,	[ticketPrefix] [nvarchar] (20) NULL ,	[added] [datetime] NULL ,	[addedBy] [char] (35) NOT NULL ,	[status] [nvarchar] (8) NULL ,	[svnurl] [nvarchar] (100) NULL ,	[svnuser] [nvarchar] (20) NULL ,	[svnpass] [nvarchar] (20) NULL ,	[logo_img] [nvarchar] (150) NULL ,	[allow_reg] [tinyint] NULL ,	[allow_def_rates] [tinyint] NULL ,	[reg_file_view] [tinyint] NULL ,	[reg_file_edit] [tinyint] NULL ,	[reg_file_comment] [tinyint] NULL ,	[reg_issue_view] [tinyint] NULL ,	[reg_issue_edit] [tinyint] NULL ,	[reg_issue_assign] [tinyint] NULL ,	[reg_issue_resolve] [tinyint] NULL ,	[reg_issue_close] [tinyint] NULL ,	[reg_issue_comment] [tinyint] NULL ,	[reg_msg_view] [tinyint] NULL ,	[reg_msg_edit] [tinyint] NULL ,	[reg_msg_comment] [tinyint] NULL ,	[reg_mstone_view] [tinyint] NULL ,	[reg_mstone_edit] [tinyint] NULL ,	[reg_mstone_comment] [tinyint] NULL ,	[reg_todolist_view] [tinyint] NULL ,	[reg_todolist_edit] [tinyint] NULL ,	[reg_todo_edit] [tinyint] NULL ,	[reg_todo_comment] [tinyint] NULL ,	[reg_time_view] [tinyint] NULL ,	[reg_time_edit] [tinyint] NULL ,	[reg_bill_view] [tinyint] NULL ,	[reg_bill_edit] [tinyint] NULL ,	[reg_bill_rates] [tinyint] NULL ,	[reg_bill_invoices] [tinyint] NULL ,	[reg_bill_markpaid] [tinyint] NULL ,	[reg_svn] [tinyint] NULL ,	[tab_billing] [tinyint] NULL ,	[tab_files] [tinyint] NULL ,	[tab_issues] [tinyint] NULL ,	[tab_msgs] [tinyint] NULL ,	[tab_mstones] [tinyint] NULL ,	[tab_svn] [tinyint] NULL ,	[tab_time] [tinyint] NULL ,	[tab_todos] [tinyint] NULL ,	[issue_svn_link] [tinyint] NULL ,	[issue_timetrack] [tinyint] NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_screenshots] (	[fileID] [char] (35) NOT NULL ,	[issueID] [char] (35) NOT NULL ,	[title] [nvarchar] (200) NULL ,	[description] [ntext] NULL ,	[filename] [nvarchar] (150) NULL ,	[serverfilename] [nvarchar] (150) NULL ,	[filetype] [nvarchar] (4) NULL ,	[filesize] [bigint] NULL ,	[uploaded] [datetime] NULL ,	[uploadedBy] [char] (35) NOT NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_settings] (	[settingID] [char] (35) NOT NULL ,	[setting] [nvarchar] (20) NULL ,	[settingValue] [nvarchar] (50) NULL ) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_svn_link] (	[linkID] [char] (35) NOT NULL ,	[projectID] [char] (35) NULL ,	[revision] [smallint] NULL ,	[itemID] [char] (35) NULL ,	[itemType] [nvarchar] (10) NULL ) ON [PRIMARY]GOCREATE TABLE [pt_timetrack] (	[timetrackID] char (35) NOT NULL,	[projectID] char (35) NULL,	[userID] char (35) NULL,	[dateStamp] datetime NULL,	[hours] numeric (6,2) NULL,	[description] nvarchar (255) NULL,	[itemID] [nvarchar] (35) NULL ,	[itemType] [nvarchar] (10) NULL ,	[rateID] [nvarchar] (35) NULL ,	[billed] [tinyint] NULL ,	[paid] [tinyint] NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_todolists] (	[todolistID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[title] [nvarchar] (100) NULL ,	[description] [ntext] NULL ,	[milestoneID] [nvarchar] (35) NULL ,	[userID] [char] (35) NOT NULL ,	[added] [datetime] NULL ,	[rank] [tinyint] NULL ,	[timetrack] [tinyint] NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_todos] (	[todoID] [char] (35) NOT NULL ,	[todolistID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[userID] [char] (35) NOT NULL ,	[task] [nvarchar] (600) NULL ,	[rank] [int] NULL ,	[added] [datetime] NULL ,	[due] [datetime] NULL ,	[completed] [datetime] NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_user_notify] (	[userID] [char] (35) NOT NULL ,	[projectID] [char] (35) NOT NULL ,	[email_file_new] [tinyint] NULL ,	[mobile_file_new] [tinyint] NULL ,	[email_file_upd] [tinyint] NULL ,		[mobile_file_upd] [tinyint] NULL ,	[email_file_com] [tinyint] NULL ,		[mobile_file_com] [tinyint] NULL ,	[email_issue_new] [tinyint] NULL ,	[mobile_issue_new] [tinyint] NULL ,	[email_issue_upd] [tinyint] NULL ,	[mobile_issue_upd] [tinyint] NULL ,	[email_issue_com] [tinyint] NULL ,	[mobile_issue_com] [tinyint] NULL ,	[email_msg_new] [tinyint] NULL ,	[mobile_msg_new] [tinyint] NULL ,	[email_msg_upd] [tinyint] NULL ,	[mobile_msg_upd] [tinyint] NULL ,	[email_msg_com] [tinyint] NULL ,	[mobile_msg_com] [tinyint] NULL ,	[email_mstone_new] [tinyint] NULL ,	[mobile_mstone_new] [tinyint] NULL ,	[email_mstone_upd] [tinyint] NULL ,	[mobile_mstone_upd] [tinyint] NULL ,	[email_mstone_com] [tinyint] NULL ,	[mobile_mstone_com] [tinyint] NULL ,	[email_todo_new] [tinyint] NULL ,	[mobile_todo_new] [tinyint] NULL ,	[email_todo_upd] [tinyint] NULL ,	[mobile_todo_upd] [tinyint] NULL ,		[email_todo_com] [tinyint] NULL ,	[mobile_todo_com] [tinyint] NULL ,		[email_time_new] [tinyint] NULL ,	[mobile_time_new] [tinyint] NULL ,	[email_time_upd] [tinyint] NULL ,	[mobile_time_upd] [tinyint] NULL ,		[email_bill_new] [tinyint] NULL ,	[mobile_bill_new] [tinyint] NULL ,	[email_bill_upd] [tinyint] NULL ,	[mobile_bill_upd] [tinyint] NULL ,		[email_bill_paid] [tinyint] NULL ,	[mobile_bill_paid] [tinyint] NULL) ON [PRIMARY]GOCREATE TABLE [dbo].[pt_users] (	[userID] [char] (35) NOT NULL ,	[firstName] [nvarchar] (12) NULL ,	[lastName] [nvarchar] (20) NULL ,	[username] [nvarchar] (30) NULL ,	[password] [char] (32) NULL ,	[email] [nvarchar] (120) NULL ,	[phone] [nvarchar] (15) NULL ,	[mobile] [nvarchar] (15) NULL ,	[carrierID] [nvarchar] (35) NULL ,	[lastLogin] [datetime] NULL ,	[avatar] [tinyint] NULL ,	[style] [nvarchar] (20) NULL ,	[locale] [nvarchar] (32) NULL ,	[timezone] [nvarchar] (32) NULL ,	[admin] [tinyint] NULL ,	[report] [tinyint] NULL ,	[invoice] [tinyint] NULL ,	[active] [tinyint] NULL ) ON [PRIMARY]GOALTER TABLE [dbo].[pt_activity] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_activity] PRIMARY KEY  CLUSTERED 	(		[activityID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_carriers] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_carriers] PRIMARY KEY  CLUSTERED 	(		[carrierID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_categories] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_categories] PRIMARY KEY  CLUSTERED 	(		[projectID],[categoryID],[type]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_client_rates] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_client_rates] PRIMARY KEY  CLUSTERED 	(		[rateID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_clients] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_clients] PRIMARY KEY  CLUSTERED 	(		[clientID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_comments] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_comments] PRIMARY KEY  CLUSTERED 	(		[commentID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_files] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_files] PRIMARY KEY  CLUSTERED 	(		[fileID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_file_attach] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_file_attach] PRIMARY KEY  CLUSTERED 	(		[itemID],[fileID],[type]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_issues] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_issues] PRIMARY KEY  CLUSTERED 	(		[issueID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_message_notify] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_message_notify] PRIMARY KEY  CLUSTERED 	(		[messageID],[projectID],[userID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_messages] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_messages] PRIMARY KEY  CLUSTERED 	(		[messageID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_milestones] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_milestones] PRIMARY KEY  CLUSTERED 	(		[milestoneID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_project_components] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_project_components] PRIMARY KEY  CLUSTERED 	(		[componentID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_project_users] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_project_users] PRIMARY KEY  CLUSTERED 	(		[userID],[projectID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_project_versions] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_project_versions] PRIMARY KEY  CLUSTERED 	(		[versionID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_projects] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_projects] PRIMARY KEY  CLUSTERED 	(		[projectID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_screenshots] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_screenshots] PRIMARY KEY  CLUSTERED 	(		[fileID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_settings] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_settings] PRIMARY KEY  CLUSTERED 	(		[settingID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_svn_link] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_svn_link] PRIMARY KEY  CLUSTERED 	(		[linkID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_timetrack] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_timetrack] PRIMARY KEY  CLUSTERED 	(		[timetrackID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_todolists] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_todolists] PRIMARY KEY  CLUSTERED 	(		[todolistID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_todos] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_todos] PRIMARY KEY  CLUSTERED 	(		[todoID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_user_notify] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_user_notify] PRIMARY KEY  CLUSTERED 	(		[userID],[projectID]	)  ON [PRIMARY] GOALTER TABLE [dbo].[pt_users] WITH NOCHECK ADD 	CONSTRAINT [PK_pt_users] PRIMARY KEY  CLUSTERED 	(		[userID]	)  ON [PRIMARY] GOINSERT INTO [dbo].[pt_users](userID,firstName,lastName,username,password,style,avatar,locale,timezone,admin,report,invoice,active) values('FCDCF4CD-16E6-58DE-13EDC6A2B362B22C','Admin','User','admin','21232F297A57A5A743894A0E4A801FC3','blue',0,'English (US)','US/Eastern',1,1,1,1)GOINSERT INTO [dbo].[pt_users](userID,firstName,lastName,username,password,style,avatar,locale,timezone,admin,report,invoice,active) values('7F16CA08-1372-7975-6F7F9DA33EBD6A09','Guest','User','guest','084E0343A0486FF05530DF6C705C8BB4','blue',0,'English (US)','US/Eastern',0,0,0,1)GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('FC3D187C-16E6-58DE-133C5098C58225D3','app_title','Project Tracker')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('FC3D861A-16E6-58DE-1346E4E01F578F52','default_style','blue')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('E59DED9F-1372-7975-6FCD9DFAE904B617','enable_api','0')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('E5A50225-1372-7975-6F9777FB42FD45E6','api_key','')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('50ED062A-16E6-58DE-13EF9FEB2312EE8C','email_subject_prefix','')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('50ED2D69-16E6-58DE-130067F4C29ABF35','sms_subject_prefix','')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('1E5ED63A-C938-2FE9-C60035D81F955266','company_name','')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('1E77669A-963D-735E-C7C22FA82FABC398','company_logo','')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('5D717D09-1372-7975-6F21844EACDAFC54','invoice_logo','')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('89DDF566-1372-7975-6F192B9AFBDB218A','default_locale','English (US)')GOINSERT INTO [dbo].[pt_settings](settingID,setting,settingValue) values('89B9B664-1372-7975-6F7D802298571968','default_timezone','US/Eastern')GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8464AB28-1372-7975-6F2E9747CA6E4693','AT&T','US','United States','','@txt.att.net',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8464DE00-1372-7975-6FE886FCD149E667','Boost','US','United States','','@myboostmobile.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('84653DF3-1372-7975-6F03DA67DD9FB6A9','Cingular','US','United States','','@txt.att.net',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('846562C1-1372-7975-6F0D79371C491F0C','Helio','US','United States','','@messaging.sprintpcs.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('846589B2-1372-7975-6F34C8F27502E0DE','Nextel','US','United States','','@messaging.nextel.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8465AECE-1372-7975-6FAEBDD9F3DDB156','Sprint','US','United States','','@messaging.sprintpcs.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('846F02F5-1372-7975-6F6C106050F904CD','T-Mobile','US','United States','','@tmomail.net',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8465D060-1372-7975-6F83333D63966358','Verizon','US','United States','','@vtext.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8465FEC3-1372-7975-6F5CA6C75C25C7D4','Virgin USA','US','United States','','@vmobl.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('84662779-1372-7975-6F8F1751F5B64D4E','Aliant Mobility','CA','Canada','','@chat.wirefree.ca',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('846652B0-1372-7975-6F46C791E680C346','Bell Mobility','CA','Canada','','@txt.bellmobility.ca',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('84667ED1-1372-7975-6F97CD40347FC5CB','Fido','CA','Canada','','@fido.ca',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8466BB0F-1372-7975-6F6ABCC0603EE274','MTS','CA','Canada','','@text.mtsmobility.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8466DE85-1372-7975-6F261B5E9D329B92','Rogers','CA','Canada','','@pcs.rogers.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8466FEFD-1372-7975-6F8EA4D54A0C57F3','SaskTel','CA','Canada','','@sms.sasktel.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('84672060-1372-7975-6F8456BEBA71E39A','Solo Mobile','CA','Canada','','@txt.bell.ca',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('84675A6C-1372-7975-6F496C2375ED2815','TELUS','CA','Canada','','@msg.telus.com',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('84677BCF-1372-7975-6F89C8D24436A08A','Virgin Canada','CA','Canada','','@vmobile.ca',1)GOINSERT INTO [dbo].[pt_carriers](carrierID,carrier,countryCode,country,prefix,suffix,active) values('8467A2B0-1372-7975-6FEB7589919DC435','O2','UK','United Kingdom','','@mmail.co.uk',1)GO