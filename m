Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 358767A73C
	for <lists+linux-mtd@lfdr.de>; Tue, 30 Jul 2019 13:46:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RybXOploWdyFrr3J9SBUIBK1vbcSWUw7SltRKLjFYfQ=; b=rd6CwvtjZVVMoS
	gCU/ic91uYeuUW2qOLkQlmQN+xlQB/IYBebnMHh01/vuaH8tMn7uLtHZ/Z60Kic/h17r4JcKPOf8i
	xEViVx3rGxOwS6o78sEdF1b9eIBP5/j2iLI+9FRUx5MqXiLQkss8eRpxRF1n95ZexmfvTcjHIEpF7
	yXWhJpM27EmL+sP79t5yCWWZmfqqzEGhtB2wBJ2vGaXRPpdElLSr7EMW7MO6YPL5wc7XnYXfW3vLi
	i3UWgujhQwnguW7MtZuVxx1Eu0baqBgSILMdN6Q2mPPn73RnFkhFAGRZ3YiIgA1Bq8935qMdsvop1
	xiYpohvBy2xErYtqmQDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQaD-0001G1-8m; Tue, 30 Jul 2019 11:46:21 +0000
Received: from mail-eopbgr680070.outbound.protection.outlook.com
 ([40.107.68.70] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQZl-0001FE-Bh
 for linux-mtd@lists.infradead.org; Tue, 30 Jul 2019 11:45:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iaTW2X9c6RdCW/SjfBR+ZT2q8SlsZAJSiOu1TM/ABKcd+ZhzpnUxebuhwJ/iPEdp5+KUTPNqbhkwYzALQoTJKCbPkWIQuNTReEhN424YKsSFEKZOT2K8P0dG4vWyHy2NMq8Ts8QpsdsyQ+OZQxhbaj17knfpvJafGqGVGjjE3PHaN6bMLn8Vzqm5Bv10+cIxXOWpvmNaoHrx7rXVNRsPzmmOYj92edVHFdqV72kHaf62uH+8Y3s2WYI3lvEAjXmaK/p98ieIgiqI5lbfMbu6v8EIOatLeFK4lyYKHhTh3B0mBdXCjDg7Ph5InOQyEJQDRMoHaraZBNRfroIKd6bE0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcvMCc6rHkr+H+0GzPBhkU893WZDTAmPA0TF7/JXKro=;
 b=MkKE/rTTlDuHLkE0OH3lybDzVbrZRCpLOA9Seq3wzjvCJlBMCt2xq/t5bJrVaOUq6/eSzXoSIL9UjveZajGqRpP1ojUo1In6cmiijenB7p4+iHXehFdjiWw31M5fZdbt/nR2WJqxTnVzbjrTXb+ZUi7ktICtC8oOixhh2lBPTz8TJDsUnL0axMbzrTfmVlOQeRWy/AFbOEUu/oHhufmAC4kfd/Iwla6Wo0FDr1ru3KginOMp910M0HttUa4HifQYzX+Ee9rkC98+4efEXlvvM/lGQVNzZbbDW88dDyyf5SLyfOjCqS/aNvEsiJJQ4evo638WJrjhqH2zaavvowYl5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=gmail.com
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcvMCc6rHkr+H+0GzPBhkU893WZDTAmPA0TF7/JXKro=;
 b=kdELP26C1a222GJqo/MnrHuUm8uA3SbcB/2gDK5kVHdDQJML8EUl01nNdnz1PiT3oZpiSf1ATxFHaR43cvvBSzI94WheQE/aWsCPwv/TUdCipgTxspVTj4t1cIkOXYlXtellXfRom69JnGdmrbQffzHgpfhOsXubG+25ObtzJl4=
Received: from BN6PR02CA0104.namprd02.prod.outlook.com (2603:10b6:405:60::45)
 by BYAPR02MB4757.namprd02.prod.outlook.com (2603:10b6:a03:4e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.10; Tue, 30 Jul
 2019 11:45:47 +0000
Received: from SN1NAM02FT048.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by BN6PR02CA0104.outlook.office365.com
 (2603:10b6:405:60::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.12 via Frontend
 Transport; Tue, 30 Jul 2019 11:45:46 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 SN1NAM02FT048.mail.protection.outlook.com (10.152.72.202) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2115.10
 via Frontend Transport; Tue, 30 Jul 2019 11:45:46 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:43395
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <naga.sureshkumar.relli@xilinx.com>)
 id 1hsQZd-00023z-Gp; Tue, 30 Jul 2019 04:45:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <naga.sureshkumar.relli@xilinx.com>)
 id 1hsQZY-0005Mw-5f; Tue, 30 Jul 2019 04:45:40 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x6UBjX5K012966; 
 Tue, 30 Jul 2019 04:45:33 -0700
Received: from [10.140.6.231] (helo=xhdnagasure40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <naga.sureshkumar.relli@xilinx.com>)
 id 1hsQZQ-0005LL-3W; Tue, 30 Jul 2019 04:45:33 -0700
From: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
To: miquel.raynal@bootlin.com, bbrezillon@kernel.org
Subject: [LINUX PATCH v19] mtd: rawnand: pl353: Add basic driver for arm pl353
 smc nand interface
Date: Tue, 30 Jul 2019 05:43:37 -0600
Message-Id: <20190730114337.6601-1-naga.sureshkumar.relli@xilinx.com>
X-Mailer: git-send-email 2.17.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(136003)(396003)(2980300002)(189003)(199004)(126002)(2616005)(16586007)(476003)(103116003)(486006)(8676002)(81156014)(81166006)(2906002)(47776003)(6306002)(70586007)(5024004)(356004)(70206006)(426003)(63266004)(53946003)(305945005)(7696005)(51416003)(36386004)(7416002)(106002)(336012)(8936002)(14444005)(50226002)(30864003)(4326008)(107886003)(48376002)(36756003)(186003)(478600001)(5660300002)(50466002)(1076003)(966005)(26005)(316002)(9786002)(5001870100001)(579004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4757; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com; MX:1; A:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82966a64-2378-42ec-5cad-08d714e3760f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:BYAPR02MB4757; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB4757:
X-MS-Exchange-PUrlCount: 2
X-Microsoft-Antispam-PRVS: <BYAPR02MB4757A5BC4CABF6A61EA811E0AFDC0@BYAPR02MB4757.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:644;
X-Forefront-PRVS: 0114FF88F6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: oHoc9lsvpzM12OP/Flghyax24HT7q5vwcUOLp63ycTpBqjVQw3wmkySFcI06/dSIiSRMiqCRzQYbF+IeSnKIyCW2aLb4mjPsOrZuFgR/xw7aCZcUzcrs3B704nNqAXbuJOFb+PuYaV5F6tNc9dy0NZqVVuZvsJAN39V+q3WVZJH8OJD2X5BbNgJofrOHhHFOvVoDqbrHgTDxA7Y1yrpwp6Z73Mwu5mhi0/HcCXFoPesOJjz+KjSEBqMNMMn2beDgckqtPCPptWTslhJs+zwrYFsaO+V9o1WJI31IFAWiIUpOi2e5liHgHEiCY2MFmgJ5zll1LA2YtYnpvNO/5PCAU1D/3c4k2fKuh+sPeFMQ1cflsKNYaljkUQ70T8mpiYxAl9B/6ioFFhzImMUKzlkU/CJBnwG2hDh8cgyq4ueLBbc=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2019 11:45:46.1700 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 82966a64-2378-42ec-5cad-08d714e3760f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4757
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_044553_543955_83A0A51C 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.1 AC_FROM_MANY_DOTS      Multiple periods in From user name
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: srinivas.goud@xilinx.com, vigneshr@ti.com, marek.vasut@gmail.com,
 richard@nod.at, shubhrajyoti.datta@xilinx.com, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, yamada.masahiro@socionext.com, svemula@xilinx.com,
 linux-mtd@lists.infradead.org,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 nagasuresh12@gmail.com, computersforpeace@gmail.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Add driver for arm pl353 static memory controller nand interface.
This controller is used in Xilinx Zynq SoC for interfacing the
NAND flash memory.

Signed-off-by: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
---
xilinx zynq TRM link:
https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf

ARM pl353 smc TRM link:
http://infocenter.arm.com/help/topic/com.arm.doc.ddi0380g/DDI0380G_smc_pl350_series_r2p1_trm.pdf

-> Tested Micron MT29F2G08ABAEAWP (On-die capable) and AMD/Spansion S34ML01G1.
-> Tested both x8 and x16 bus-widths.
-> Tested ubifs, mtd_debug tools and mtd-tests which exists in kernel as modules.
-> Tested jffs2

SMC memory controller driver is at drivers/memory/pl353-smc.c

Changes in v19:
 - The below changes are done as suggested by Boris
 - Dropped the nand_micron patch
 - updated the ->exec_op() method to support the address cycles greater
   than 4
 - Dropped the pl353_{read/write}_page_raw() methods
 - ECC enable/disable will be done as part of pl353_ecc_init  
Changes in v18:
 - Modified the driver's ->exec_op() method as per Boris comments
   Now in this ->exec_op(), no where we are checking any NAND_CMD's
 - Removed checking of NAND_ROW_ADDR_3 inside ->exec_op() method
 - Modifed the driver's ->exec_op() PATTERN definitions to support
   all patterns. now these patterns are not specific to any particular
   pattern as commented by Boris
Changes in v17:
 - This patch fixes the comments given by Helmut Grohne
 - Removed struct clk *mclk from struct pl353_nand_controller, as it is required
   only once during probe, so declare it inside the probe
 - Merged NAND_OP_DATA_IN_INSTR and NAND_OP_DATA_OUT_INSTR as single case in switch
 - Added updated Makefile and Kconfig file
 - Added pl353_nand_wait_ready(), in pl353_nand_write_page_raw() to wait for write
   to complete
Changes in v16:
 - Removed unnecessary comments
Changes in v15:
  All the comments given by Helmut Grohne to v14 are addressed in this series
  as mentioned below.
 - Removed below unused macros
   PL353_NAND_CMD_PHASE, PL353_NAND_DATA_PHASE and PL353_NAND_ECC_CONFIG
 - Used cond_resched() instead of cpu_relax() to eleminate the CPU spin for
   a full second
 - changed the size of cmnds[4] to cmnds[2]
 - Removed the unused variable end_cmd in struct pl353_nfc_op
 - Added new variable u16 addrs_56, instead of u32 addr5 and u32 addr6
 - Removed the unused variable cle_ale_delay_ns in struct pl353_nfc_op
 - Completely changed the nand_offset calculation, taken new varibale
   called dataphase_addrflags and eleminated the casting with __force
   just used offset + flags
 - in pl353_ecc_ooblayout64_free(), removed checking of section with
   ecc.steps, as section is 0 here
 - simplified the pl353_wait_for_dev_ready() and pl353_wait_for_ecc_done()
 - Updated the nfc_op->addrs calculation in pl353_nfc_parse_instructions()
 - Removed cond_delay(), instead used ndelay(), as it is sufficient
 - in pl353_nand_exec_op(), instead of assigning end_cmd twice, just assign
   it once by nfc_op.cmnds[1]
 - changed if (reading) to else in pl353_nand_exec_op()
 - Removed int err variable in pl353_nand_ecc_init(), instead just used
   single variable ret
 - Changed reading clock value by name rather than index in pl353_nand_probe()
 - Instead of always calling clk_get_rate(), stored it in the probe to a
   varaible and use it later
Changes in v14:
 - Removed legacy hooks as per Miquel comments
Changes in v13:
 - Rebased the driver to mtd/next
Changes in v12:
 - Rebased the driver on top of v4.19 nand tree
 - Removed nand_scan_ident() and nand_scan_tail(), and added nand_controller_ops
   with ->attach_chip() and used nand_scan() instead.
 - Renamed pl353_nand_info structure to pl353_nand_controller
 - Renamed nand_base and nandaddr in pl353_nand_controller to 'regs' and 'buf_addr'
 - Added new API pl353_wait_for_ecc_done() to wait for ecc done and call it from
   pl353_nand_write_page_hwecc() and pl353_nand_read_page_hwecc()
 - Defined new macro for max ECC blocks
 - Added return value check for ecc.calculate()
 - Renamed pl353_nand_cmd_function() to pl353_nand_exec_op_cmd()
 - Added x16 bus-width support
 - The dependent driver pl353-smc is already reviewed and hence dropped the
   smc driver
Changes in v11:
 - Removed Documentation patch and added the required info in driver as
   per Boris comments.
 - Removed unwanted variables from pl353_nand_info as per Miquel comments
 - Removed IO_ADDR_R/W.
 - Replaced onhot() with hweight32()
 - Defined macros for static values in function pl353_nand_correct_data()
 - Removed all unnecessary delays
 - Used nand_wait_ready() where ever is required
 - Modifed the pl353_setup_data_interface() logic as per Miquel comments.
 - Taken array instead of 7 values in pl353_setup_data_interface() and pass
   it to smc driver.
 - Added check to collect the return value of mtd_device_register().
Changes in 10:
 - Typos correction like nand to NAND and soc to SOC etc..
 - Defined macros for the values in pl353_nand_calculate_hwecc()
 - Modifed ecc_status from int to char in pl353_nand_calculate_hwecc()
 - Changed the return type form int to bool to the function
   onehot()
 - Removed udelay(1000) in pl353_cmd_function, as it is not required
 - Dropped ecc->hwctl = NULL in pl353_ecc_init()
 - Added an error message in pl353_ecc_init(), when there is no matching
   oobsize
 - Changed the variable from xnand to xnfc
 - Added logic to get mtd->name from DT, if it is specified in DT
Changes in v9:
 - Addressed the below comments given by Miquel
 - instead of using pl353_nand_write32, use directly writel_relaxed
 - Fixed check patch warnings
 - Renamed write_buf/read_buf to write_data_op/read_data_op
 - use BIT macro instead of 1 << nr
 - Use NAND_ROW_ADDR_3 flag
 - Use nand_wait_ready()
 - Removed swecc functions
 - Use address cycles as per size, instead of reading it from Parameter page
 - Instead of writing too many patterns, use optional property
Changes in v8:
 - Added exec_op() implementation
 - Fixed the below v7 review comments
 - removed mtd_info from pl353_nand_info struct
 - Corrected ecc layout offsets
 - Added on-die ecc support
Changes in v7:
 - Currently not implemented the memclk rate adjustments. I will
   look into this later and once the basic driver is accepted.
 - Fixed GPL licence ident
Changes in v6:
 - Fixed the checkpatch.pl reported warnings
 - Using the address cycles information from the onfi param page
   earlier it is hardcoded to 5 in driver
Changes in v5:
 - Configure the nand timing parameters as per the onfi spec Changes in v4:
 - Updated the driver to sync with pl353_smc driver APIs
Changes in v3:
 - implemented the proper error codes
 - further breakdown this patch to multiple sets
 - added the controller and driver details to Documentation section
 - updated the licenece to GPLv2
 - reorganized the pl353_nand_ecc_init function
Changes in v2:
 - use "depends on" rather than "select" option in kconfig
 - remove unused variable parts
---
 drivers/mtd/nand/raw/Kconfig      |    7 +
 drivers/mtd/nand/raw/Makefile     |    1 +
 drivers/mtd/nand/raw/pl353_nand.c | 1143 +++++++++++++++++++++++++++++
 3 files changed, 1151 insertions(+)
 create mode 100644 drivers/mtd/nand/raw/pl353_nand.c

diff --git a/drivers/mtd/nand/raw/Kconfig b/drivers/mtd/nand/raw/Kconfig
index 0500c42f31cb..5781b422e818 100644
--- a/drivers/mtd/nand/raw/Kconfig
+++ b/drivers/mtd/nand/raw/Kconfig
@@ -545,4 +545,11 @@ config MTD_NAND_DISKONCHIP_BBTWRITE
 	  load time (assuming you build diskonchip as a module) with the module
 	  parameter "inftl_bbt_write=1".
 
+config MTD_NAND_PL353
+	tristate "ARM Pl353 NAND flash driver"
+	depends on MTD_RAW_NAND && ARM
+	depends on PL353_SMC
+	help
+	  Enables support for PrimeCell Static Memory Controller PL353
+
 endif # MTD_RAW_NAND
diff --git a/drivers/mtd/nand/raw/Makefile b/drivers/mtd/nand/raw/Makefile
index efaf5cd25edc..b43af6a442b2 100644
--- a/drivers/mtd/nand/raw/Makefile
+++ b/drivers/mtd/nand/raw/Makefile
@@ -57,6 +57,7 @@ obj-$(CONFIG_MTD_NAND_MTK)		+= mtk_ecc.o mtk_nand.o
 obj-$(CONFIG_MTD_NAND_TEGRA)		+= tegra_nand.o
 obj-$(CONFIG_MTD_NAND_STM32_FMC2)	+= stm32_fmc2_nand.o
 obj-$(CONFIG_MTD_NAND_MESON)		+= meson_nand.o
+obj-$(CONFIG_MTD_NAND_PL353)		+= pl353_nand.o
 
 nand-objs := nand_base.o nand_legacy.o nand_bbt.o nand_timings.o nand_ids.o
 nand-objs += nand_onfi.o
diff --git a/drivers/mtd/nand/raw/pl353_nand.c b/drivers/mtd/nand/raw/pl353_nand.c
new file mode 100644
index 000000000000..2b7c68ab620c
--- /dev/null
+++ b/drivers/mtd/nand/raw/pl353_nand.c
@@ -0,0 +1,1143 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * ARM PL353 NAND flash controller driver
+ *
+ * Copyright (C) 2017 Xilinx, Inc
+ * Author: Punnaiah chowdary kalluri <punnaiah@xilinx.com>
+ * Author: Naga Sureshkumar Relli <nagasure@xilinx.com>
+ *
+ */
+
+#include <linux/err.h>
+#include <linux/delay.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/ioport.h>
+#include <linux/irq.h>
+#include <linux/module.h>
+#include <linux/moduleparam.h>
+#include <linux/mtd/mtd.h>
+#include <linux/mtd/rawnand.h>
+#include <linux/mtd/nand_ecc.h>
+#include <linux/mtd/partitions.h>
+#include <linux/of_address.h>
+#include <linux/of_device.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/pl353-smc.h>
+#include <linux/clk.h>
+
+#define PL353_NAND_DRIVER_NAME "pl353-nand"
+
+/* NAND flash driver defines */
+#define PL353_NAND_ECC_SIZE	512	/* Size of data for ECC operation */
+
+/* AXI Address definitions */
+#define START_CMD_SHIFT		3
+#define END_CMD_SHIFT		11
+#define END_CMD_VALID_SHIFT	20
+#define ADDR_CYCLES_SHIFT	21
+#define CLEAR_CS_SHIFT		21
+#define ECC_LAST_SHIFT		10
+#define COMMAND_PHASE		(0 << 19)
+#define DATA_PHASE		BIT(19)
+#define GET_ADDR(pos, val)	(((val) & 0xFF) << (8 * (pos)))
+
+#define PL353_NAND_ECC_LAST	BIT(ECC_LAST_SHIFT)	/* Set ECC_Last */
+#define PL353_NAND_CLEAR_CS	BIT(CLEAR_CS_SHIFT)	/* Clear chip select */
+
+#define PL353_NAND_ECC_BUSY_TIMEOUT	(1 * HZ)
+#define PL353_NAND_DEV_BUSY_TIMEOUT	(1 * HZ)
+#define PL353_NAND_LAST_TRANSFER_LENGTH	4
+#define PL353_NAND_ECC_VALID_SHIFT	24
+#define PL353_NAND_ECC_VALID_MASK	0x40
+#define PL353_ECC_BITS_BYTEOFF_MASK	0x1FF
+#define PL353_ECC_BITS_BITOFF_MASK	0x7
+#define PL353_ECC_BIT_MASK		0xFFF
+#define PL353_TREA_MAX_VALUE		1
+#define PL353_MAX_ECC_CHUNKS		4
+#define PL353_MAX_ECC_BYTES		3
+
+struct pl353_nfc_op {
+	u32 cmnds[2];
+	u32 addrs;
+	unsigned int data_instr_idx;
+	unsigned int rdy_timeout_ms;
+	unsigned int rdy_delay_ns;
+	const struct nand_op_instr *data_instr;
+};
+
+/**
+ * struct pl353_nand_controller - Defines the NAND flash controller driver
+ *				  instance
+ * @controller:		NAND controller structure
+ * @chip:		NAND chip information structure
+ * @dev:		Parent device (used to print error messages)
+ * @regs:		Virtual address of the NAND flash device
+ * @dataphase_addrflags:Flags required for data phase transfers
+ * @addr_cycles:	Address cycles
+ * @mclk_rate:		Clock rate of the Memory controller
+ * @buswidth:		Bus width 8 or 16
+ */
+struct pl353_nand_controller {
+	struct nand_controller controller;
+	struct nand_chip chip;
+	struct device *dev;
+	void __iomem *regs;
+	u32 dataphase_addrflags;
+	u8 addr_cycles;
+	ulong mclk_rate;
+	u32 buswidth;
+};
+
+static inline struct pl353_nand_controller *
+			to_pl353_nand(struct nand_chip *chip)
+{
+	return container_of(chip, struct pl353_nand_controller, chip);
+}
+
+static int pl353_ecc_ooblayout16_ecc(struct mtd_info *mtd, int section,
+				     struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (section >= chip->ecc.steps)
+		return -ERANGE;
+
+	oobregion->offset = (section * chip->ecc.bytes);
+	oobregion->length = chip->ecc.bytes;
+
+	return 0;
+}
+
+static int pl353_ecc_ooblayout16_free(struct mtd_info *mtd, int section,
+				      struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (section >= chip->ecc.steps)
+		return -ERANGE;
+
+	oobregion->offset = (section * chip->ecc.bytes) + 8;
+	oobregion->length = 8;
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops pl353_ecc_ooblayout16_ops = {
+	.ecc = pl353_ecc_ooblayout16_ecc,
+	.free = pl353_ecc_ooblayout16_free,
+};
+
+static int pl353_ecc_ooblayout64_ecc(struct mtd_info *mtd, int section,
+				     struct mtd_oob_region *oobregion)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	if (section >= chip->ecc.steps)
+		return -ERANGE;
+
+	oobregion->offset = (section * chip->ecc.bytes) + 52;
+	oobregion->length = chip->ecc.bytes;
+
+	return 0;
+}
+
+static int pl353_ecc_ooblayout64_free(struct mtd_info *mtd, int section,
+				      struct mtd_oob_region *oobregion)
+{
+	if (section)
+		return -ERANGE;
+
+	oobregion->offset = 2;
+	oobregion->length = 50;
+
+	return 0;
+}
+
+static const struct mtd_ooblayout_ops pl353_ecc_ooblayout64_ops = {
+	.ecc = pl353_ecc_ooblayout64_ecc,
+	.free = pl353_ecc_ooblayout64_free,
+};
+
+/* Generic flash bbt decriptors */
+static u8 bbt_pattern[] = { 'B', 'b', 't', '0' };
+static u8 mirror_pattern[] = { '1', 't', 'b', 'B' };
+
+static struct nand_bbt_descr bbt_main_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
+	.offs = 4,
+	.len = 4,
+	.veroffs = 20,
+	.maxblocks = 4,
+	.pattern = bbt_pattern
+};
+
+static struct nand_bbt_descr bbt_mirror_descr = {
+	.options = NAND_BBT_LASTBLOCK | NAND_BBT_CREATE | NAND_BBT_WRITE
+		| NAND_BBT_2BIT | NAND_BBT_VERSION | NAND_BBT_PERCHIP,
+	.offs = 4,
+	.len = 4,
+	.veroffs = 20,
+	.maxblocks = 4,
+	.pattern = mirror_pattern
+};
+
+static void pl353_nfc_force_byte_access(struct nand_chip *chip,
+					bool force_8bit)
+{
+	int ret;
+	struct pl353_nand_controller *xnfc =
+		container_of(chip, struct pl353_nand_controller, chip);
+
+	if (xnfc->buswidth == 8)
+		return;
+
+	if (force_8bit)
+		ret = pl353_smc_set_buswidth(PL353_SMC_MEM_WIDTH_8);
+	else
+		ret = pl353_smc_set_buswidth(PL353_SMC_MEM_WIDTH_16);
+
+	if (ret)
+		dev_err(xnfc->dev, "Error in Buswidth\n");
+}
+
+static inline int pl353_wait_for_dev_ready(struct nand_chip *chip)
+{
+	unsigned long timeout = jiffies + PL353_NAND_DEV_BUSY_TIMEOUT;
+
+	while (!pl353_smc_get_nand_int_status_raw()) {
+		if (time_after_eq(jiffies, timeout)) {
+			pr_err("%s timed out\n", __func__);
+			return -ETIMEDOUT;
+		}
+		cond_resched();
+	}
+
+	pl353_smc_clr_nand_int();
+
+	return 0;
+}
+
+/**
+ * pl353_nand_read_data_op - read chip data into buffer
+ * @chip:	Pointer to the NAND chip info structure
+ * @in:		Pointer to the buffer to store read data
+ * @len:	Number of bytes to read
+ * @force_8bit:	Force 8-bit bus access
+ * Return:	Always return zero
+ */
+static void pl353_nand_read_data_op(struct nand_chip *chip, u8 *in,
+				    unsigned int len, bool force_8bit)
+{
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	int i;
+
+	if (force_8bit)
+		pl353_nfc_force_byte_access(chip, true);
+
+	if ((IS_ALIGNED((uint32_t)in, sizeof(uint32_t)) &&
+	     IS_ALIGNED(len, sizeof(uint32_t))) || !force_8bit) {
+		u32 *ptr = (u32 *)in;
+
+		len /= 4;
+		for (i = 0; i < len; i++)
+			ptr[i] = readl(xnfc->regs + xnfc->dataphase_addrflags);
+	} else {
+		for (i = 0; i < len; i++)
+			in[i] = readb(xnfc->regs + xnfc->dataphase_addrflags);
+	}
+
+	if (force_8bit)
+		pl353_nfc_force_byte_access(chip, false);
+}
+
+/**
+ * pl353_nand_write_data_op - write buffer to chip
+ * @chip:	Pointer to the nand_chip structure
+ * @buf:	Pointer to the buffer to store write data
+ * @len:	Number of bytes to write
+ * @force_8bit:	Force 8-bit bus access
+ */
+static void pl353_nand_write_data_op(struct nand_chip *chip, const u8 *buf,
+				     int len, bool force_8bit)
+{
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	int i;
+
+	if (force_8bit)
+		pl353_nfc_force_byte_access(chip, true);
+
+	if ((IS_ALIGNED((uint32_t)buf, sizeof(uint32_t)) &&
+	     IS_ALIGNED(len, sizeof(uint32_t))) || !force_8bit) {
+		u32 *ptr = (u32 *)buf;
+
+		len /= 4;
+		for (i = 0; i < len; i++)
+			writel(ptr[i], xnfc->regs + xnfc->dataphase_addrflags);
+	} else {
+		for (i = 0; i < len; i++)
+			writeb(buf[i], xnfc->regs + xnfc->dataphase_addrflags);
+	}
+
+	if (force_8bit)
+		pl353_nfc_force_byte_access(chip, false);
+}
+
+static inline int pl353_wait_for_ecc_done(void)
+{
+	unsigned long timeout = jiffies + PL353_NAND_ECC_BUSY_TIMEOUT;
+
+	while (pl353_smc_ecc_is_busy()) {
+		if (time_after_eq(jiffies, timeout)) {
+			pr_err("%s timed out\n", __func__);
+			return -ETIMEDOUT;
+		}
+		cond_resched();
+	}
+
+	return 0;
+}
+
+/**
+ * pl353_nand_calculate_hwecc - Calculate Hardware ECC
+ * @chip:	Pointer to the nand_chip structure
+ * @data:	Pointer to the page data
+ * @ecc:	Pointer to the ECC buffer where ECC data needs to be stored
+ *
+ * This function retrieves the Hardware ECC data from the controller and returns
+ * ECC data back to the MTD subsystem.
+ * It operates on a number of 512 byte blocks of NAND memory and can be
+ * programmed to store the ECC codes after the data in memory. For writes,
+ * the ECC is written to the spare area of the page. For reads, the result of
+ * a block ECC check are made available to the device driver.
+ *
+ * ------------------------------------------------------------------------
+ * |               n * 512 blocks                  | extra  | ecc    |     |
+ * |                                               | block  | codes  |     |
+ * ------------------------------------------------------------------------
+ *
+ * The ECC calculation uses a simple Hamming code, using 1-bit correction 2-bit
+ * detection. It starts when a valid read or write command with a 512 byte
+ * aligned address is detected on the memory interface.
+ *
+ * Return:	0 on success or error value on failure
+ */
+static int pl353_nand_calculate_hwecc(struct nand_chip *chip,
+				      const u8 *data, u8 *ecc)
+{
+	u32 ecc_value;
+	u8 chunk, ecc_byte, ecc_status;
+
+	for (chunk = 0; chunk < PL353_MAX_ECC_CHUNKS; chunk++) {
+		/* Read ECC value for each block */
+		ecc_value = pl353_smc_get_ecc_val(chunk);
+		ecc_status = (ecc_value >> PL353_NAND_ECC_VALID_SHIFT);
+
+		/* ECC value valid */
+		if (ecc_status & PL353_NAND_ECC_VALID_MASK) {
+			for (ecc_byte = 0; ecc_byte < PL353_MAX_ECC_BYTES;
+			     ecc_byte++) {
+				/* Copy ECC bytes to MTD buffer */
+				*ecc = ~ecc_value & 0xFF;
+				ecc_value = ecc_value >> 8;
+				ecc++;
+			}
+		} else {
+			pr_warn("%s status failed\n", __func__);
+			return -1;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * pl353_nand_correct_data - ECC correction function
+ * @chip:	Pointer to the nand_chip structure
+ * @buf:	Pointer to the page data
+ * @read_ecc:	Pointer to the ECC value read from spare data area
+ * @calc_ecc:	Pointer to the calculated ECC value
+ *
+ * This function corrects the ECC single bit errors & detects 2-bit errors.
+ *
+ * Return:	0 if no ECC errors found
+ *		1 if single bit error found and corrected.
+ *		-1 if multiple uncorrectable ECC errors found.
+ */
+static int pl353_nand_correct_data(struct nand_chip *chip, unsigned char *buf,
+				   unsigned char *read_ecc,
+				   unsigned char *calc_ecc)
+{
+	unsigned char bit_addr;
+	unsigned int byte_addr;
+	unsigned short ecc_odd, ecc_even, read_ecc_lower, read_ecc_upper;
+	unsigned short calc_ecc_lower, calc_ecc_upper;
+
+	read_ecc_lower = (read_ecc[0] | (read_ecc[1] << 8)) &
+			  PL353_ECC_BIT_MASK;
+	read_ecc_upper = ((read_ecc[1] >> 4) | (read_ecc[2] << 4)) &
+			  PL353_ECC_BIT_MASK;
+
+	calc_ecc_lower = (calc_ecc[0] | (calc_ecc[1] << 8)) &
+			  PL353_ECC_BIT_MASK;
+	calc_ecc_upper = ((calc_ecc[1] >> 4) | (calc_ecc[2] << 4)) &
+			  PL353_ECC_BIT_MASK;
+
+	ecc_odd = read_ecc_lower ^ calc_ecc_lower;
+	ecc_even = read_ecc_upper ^ calc_ecc_upper;
+
+	/* no error */
+	if (!ecc_odd && !ecc_even)
+		return 0;
+
+	if (ecc_odd == (~ecc_even & PL353_ECC_BIT_MASK)) {
+		/* bits [11:3] of error code is byte offset */
+		byte_addr = (ecc_odd >> 3) & PL353_ECC_BITS_BYTEOFF_MASK;
+		/* bits [2:0] of error code is bit offset */
+		bit_addr = ecc_odd & PL353_ECC_BITS_BITOFF_MASK;
+		/* Toggling error bit */
+		buf[byte_addr] ^= (BIT(bit_addr));
+		return 1;
+	}
+
+	/* one error in parity */
+	if (hweight32(ecc_odd | ecc_even) == 1)
+		return 1;
+
+	/* Uncorrectable error */
+	return -1;
+}
+
+static void pl353_prepare_cmd(struct nand_chip *chip,
+			      int page, int column, int start_cmd, int end_cmd,
+			      bool read)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	unsigned long cmd_phase_data = 0;
+	u32 end_cmd_valid = 0, cmdphase_addrflags;
+
+	end_cmd_valid = read ? 1 : 0;
+	cmdphase_addrflags = ((xnfc->addr_cycles
+			      << ADDR_CYCLES_SHIFT) |
+			      (end_cmd_valid << END_CMD_VALID_SHIFT) |
+			      (COMMAND_PHASE) |
+			      (end_cmd << END_CMD_SHIFT) |
+			      (start_cmd << START_CMD_SHIFT));
+
+	/* Get the data phase address */
+	xnfc->dataphase_addrflags = ((0x0 << CLEAR_CS_SHIFT) |
+				(0 << END_CMD_VALID_SHIFT) |
+			  (DATA_PHASE) |
+			  (end_cmd << END_CMD_SHIFT) |
+			  (0x0 << ECC_LAST_SHIFT));
+
+	if (chip->options & NAND_BUSWIDTH_16)
+		column /= 2;
+
+	cmd_phase_data = column;
+	if (mtd->writesize > PL353_NAND_ECC_SIZE) {
+		cmd_phase_data |= page << 16;
+		/* Another address cycle for devices > 128MiB */
+		if (chip->options & NAND_ROW_ADDR_3) {
+			writel_relaxed(cmd_phase_data,
+				       xnfc->regs + cmdphase_addrflags);
+			cmd_phase_data = (page >> 16);
+		/* Another address cycle for devices > 128MiB */
+		}
+	} else {
+		cmd_phase_data |= page << 8;
+	}
+
+	writel_relaxed(cmd_phase_data, xnfc->regs + cmdphase_addrflags);
+}
+
+/**
+ * pl353_nand_read_oob - [REPLACEABLE] the most common OOB data read function
+ * @chip:	Pointer to the nand_chip structure
+ * @chip:	Pointer to the nand_chip structure
+ * @page:	Page number to read
+ *
+ * Return:	Always return zero
+ */
+static int pl353_nand_read_oob(struct nand_chip *chip,
+			       int page)
+{
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	u8 *p;
+
+	if (mtd->writesize < PL353_NAND_ECC_SIZE)
+		return 0;
+
+	pl353_prepare_cmd(chip, page, mtd->writesize, NAND_CMD_READ0,
+			  NAND_CMD_READSTART, 1);
+	if (pl353_wait_for_dev_ready(chip))
+		return -ETIMEDOUT;
+
+	p = chip->oob_poi;
+	pl353_nand_read_data_op(chip, p,
+				(mtd->oobsize -
+				PL353_NAND_LAST_TRANSFER_LENGTH), false);
+	p += (mtd->oobsize - PL353_NAND_LAST_TRANSFER_LENGTH);
+	xnfc->dataphase_addrflags |= PL353_NAND_CLEAR_CS;
+	pl353_nand_read_data_op(chip, p, PL353_NAND_LAST_TRANSFER_LENGTH,
+				false);
+
+	return 0;
+}
+
+/**
+ * pl353_nand_write_oob - [REPLACEABLE] the most common OOB data write function
+ * @chip:	Pointer to the nand_chip structure
+ * @chip:	Pointer to the NAND chip info structure
+ * @page:	Page number to write
+ *
+ * Return:	Zero on success and EIO on failure
+ */
+static int pl353_nand_write_oob(struct nand_chip *chip,
+				int page)
+{
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	const u8 *buf = chip->oob_poi;
+
+	pl353_prepare_cmd(chip, page, mtd->writesize, NAND_CMD_SEQIN,
+			  NAND_CMD_PAGEPROG, 0);
+
+	pl353_nand_write_data_op(chip, buf,
+				 (mtd->oobsize -
+				 PL353_NAND_LAST_TRANSFER_LENGTH), false);
+	buf += (mtd->oobsize - PL353_NAND_LAST_TRANSFER_LENGTH);
+	xnfc->dataphase_addrflags |= PL353_NAND_CLEAR_CS;
+	xnfc->dataphase_addrflags |= (1 << END_CMD_VALID_SHIFT);
+	pl353_nand_write_data_op(chip, buf, PL353_NAND_LAST_TRANSFER_LENGTH,
+				 false);
+	if (pl353_wait_for_dev_ready(chip))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+/**
+ * nand_write_page_hwecc - Hardware ECC based page write function
+ * @chip:		Pointer to the nand_chip structure
+ * @buf:		Pointer to the data buffer
+ * @oob_required:	Caller requires OOB data read to chip->oob_poi
+ * @page:		Page number to write
+ *
+ * This functions writes data and hardware generated ECC values in to the page.
+ *
+ * Return:	Always return zero
+ */
+static int pl353_nand_write_page_hwecc(struct nand_chip *chip,
+				       const u8 *buf, int oob_required,
+				       int page)
+{
+	int eccsize = chip->ecc.size;
+	int eccsteps = chip->ecc.steps;
+	u8 *ecc_calc = chip->ecc.calc_buf;
+	u8 *oob_ptr;
+	const u8 *p = buf;
+	u32 ret;
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+
+	pl353_prepare_cmd(chip, page, 0, NAND_CMD_SEQIN,
+			  NAND_CMD_PAGEPROG, 0);
+
+	for ( ; (eccsteps - 1); eccsteps--) {
+		pl353_nand_write_data_op(chip, p, eccsize, false);
+		p += eccsize;
+	}
+
+	pl353_nand_write_data_op(chip, p,
+				 (eccsize - PL353_NAND_LAST_TRANSFER_LENGTH),
+				 false);
+	p += (eccsize - PL353_NAND_LAST_TRANSFER_LENGTH);
+
+	/* Set ECC Last bit to 1 */
+	xnfc->dataphase_addrflags |= PL353_NAND_ECC_LAST;
+	pl353_nand_write_data_op(chip, p, PL353_NAND_LAST_TRANSFER_LENGTH,
+				 false);
+
+	/* Wait till the ECC operation is complete or timeout */
+	ret = pl353_wait_for_ecc_done();
+	if (ret)
+		dev_err(xnfc->dev, "ECC Timeout\n");
+
+	p = buf;
+	ret = chip->ecc.calculate(chip, p, &ecc_calc[0]);
+	if (ret)
+		return ret;
+
+	/* Wait for ECC to be calculated and read the error values */
+	ret = mtd_ooblayout_set_eccbytes(mtd, ecc_calc, chip->oob_poi,
+					 0, chip->ecc.total);
+	if (ret)
+		return ret;
+
+	/* Clear ECC last bit */
+	xnfc->dataphase_addrflags &= ~PL353_NAND_ECC_LAST;
+
+	/* Write the spare area with ECC bytes */
+	oob_ptr = chip->oob_poi;
+	pl353_nand_write_data_op(chip, oob_ptr,
+				 (mtd->oobsize -
+				 PL353_NAND_LAST_TRANSFER_LENGTH), false);
+
+	xnfc->dataphase_addrflags |= PL353_NAND_CLEAR_CS;
+	xnfc->dataphase_addrflags |= (1 << END_CMD_VALID_SHIFT);
+	oob_ptr += (mtd->oobsize - PL353_NAND_LAST_TRANSFER_LENGTH);
+	pl353_nand_write_data_op(chip, oob_ptr, PL353_NAND_LAST_TRANSFER_LENGTH,
+				 false);
+	if (pl353_wait_for_dev_ready(chip))
+		return -ETIMEDOUT;
+
+	return 0;
+}
+
+/**
+ * pl353_nand_read_page_hwecc - Hardware ECC based page read function
+ * @chip:		Pointer to the nand_chip structure
+ * @buf:		Pointer to the buffer to store read data
+ * @oob_required:	Caller requires OOB data read to chip->oob_poi
+ * @page:		Page number to read
+ *
+ * This functions reads data and checks the data integrity by comparing
+ * hardware generated ECC values and read ECC values from spare area.
+ * There is a limitation in SMC controller, that we must set ECC LAST on
+ * last data phase access, to tell ECC block not to expect any data further.
+ * Ex:  When number of ECC STEPS are 4, then till 3 we will write to flash
+ * using SMC with HW ECC enabled. And for the last ECC STEP, we will subtract
+ * 4bytes from page size, and will initiate a transfer. And the remaining 4 as
+ * one more transfer with ECC_LAST bit set in NAND data phase register to
+ * notify ECC block not to expect any more data. The last block should be align
+ * with end of 512 byte block. Because of this limitation, we are not using
+ * core routines.
+ *
+ * Return:	0 always and updates ECC operation status in to MTD structure
+ */
+static int pl353_nand_read_page_hwecc(struct nand_chip *chip,
+				      u8 *buf, int oob_required, int page)
+{
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	int i, stat, eccsize = chip->ecc.size;
+	int eccbytes = chip->ecc.bytes;
+	int eccsteps = chip->ecc.steps;
+	unsigned int max_bitflips = 0;
+	u8 *p = buf;
+	u8 *ecc_calc = chip->ecc.calc_buf;
+	u8 *ecc = chip->ecc.code_buf;
+	u8 *oob_ptr;
+	u32 ret;
+
+	pl353_prepare_cmd(chip, page, 0, NAND_CMD_READ0,
+			  NAND_CMD_READSTART, 1);
+	if (pl353_wait_for_dev_ready(chip))
+		return -ETIMEDOUT;
+
+	for ( ; (eccsteps - 1); eccsteps--) {
+		pl353_nand_read_data_op(chip, p, eccsize, false);
+		p += eccsize;
+	}
+
+	pl353_nand_read_data_op(chip, p,
+				(eccsize - PL353_NAND_LAST_TRANSFER_LENGTH),
+				false);
+	p += (eccsize - PL353_NAND_LAST_TRANSFER_LENGTH);
+
+	/* Set ECC Last bit to 1 */
+	xnfc->dataphase_addrflags |= PL353_NAND_ECC_LAST;
+	pl353_nand_read_data_op(chip, p, PL353_NAND_LAST_TRANSFER_LENGTH,
+				false);
+
+	/* Wait till the ECC operation is complete or timeout */
+	ret = pl353_wait_for_ecc_done();
+	if (ret)
+		dev_err(xnfc->dev, "ECC Timeout\n");
+
+	/* Read the calculated ECC value */
+	p = buf;
+	ret = chip->ecc.calculate(chip, p, &ecc_calc[0]);
+	if (ret)
+		return ret;
+
+	/* Clear ECC last bit */
+	xnfc->dataphase_addrflags &= ~PL353_NAND_ECC_LAST;
+
+	/* Read the stored ECC value */
+	oob_ptr = chip->oob_poi;
+	pl353_nand_read_data_op(chip, oob_ptr,
+				(mtd->oobsize -
+				PL353_NAND_LAST_TRANSFER_LENGTH), false);
+
+	/* de-assert chip select */
+	xnfc->dataphase_addrflags |= PL353_NAND_CLEAR_CS;
+	oob_ptr += (mtd->oobsize - PL353_NAND_LAST_TRANSFER_LENGTH);
+	pl353_nand_read_data_op(chip, oob_ptr, PL353_NAND_LAST_TRANSFER_LENGTH,
+				false);
+
+	ret = mtd_ooblayout_get_eccbytes(mtd, ecc, chip->oob_poi, 0,
+					 chip->ecc.total);
+	if (ret)
+		return ret;
+
+	eccsteps = chip->ecc.steps;
+	p = buf;
+
+	/* Check ECC error for all blocks and correct if it is correctable */
+	for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
+		stat = chip->ecc.correct(chip, p, &ecc[i], &ecc_calc[i]);
+		if (stat < 0) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += stat;
+			max_bitflips = max_t(unsigned int, max_bitflips, stat);
+		}
+	}
+
+	return max_bitflips;
+}
+
+static int pl353_nand_exec_op_cmd(struct nand_chip *chip,
+				  const struct nand_subop *subop)
+{
+	struct pl353_nfc_op nfc_op = {};
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	unsigned long end_cmd_valid = 0;
+	unsigned int op_id, len;
+	bool reading;
+	u32 cmdphase_addrflags;
+	const struct nand_op_instr *instr = NULL;
+	int i;
+	u32 naddrs = 0;
+	u8 val;
+	u32 addr1 = 0, addr2 = 0;
+
+	memset(&nfc_op, 0, sizeof(struct pl353_nfc_op));
+	for (op_id = 0; op_id < subop->ninstrs; op_id++) {
+		instr = &subop->instrs[op_id];
+
+		switch (instr->type) {
+		case NAND_OP_CMD_INSTR:
+			if (op_id) {
+				nfc_op.cmnds[1] = instr->ctx.cmd.opcode;
+
+				/*
+				 * end_cmd_valid is set when there is a
+				 * command cycle followed by Address cycle
+				 */
+				if (naddrs)
+					end_cmd_valid = 1;
+			} else {
+				nfc_op.cmnds[0] = instr->ctx.cmd.opcode;
+				end_cmd_valid = 0;
+			}
+			break;
+
+		case NAND_OP_ADDR_INSTR:
+			i = nand_subop_get_addr_start_off(subop, op_id);
+			naddrs = nand_subop_get_num_addr_cyc(subop,
+							     op_id);
+
+			for (; i < naddrs; i++) {
+				val = instr->ctx.addr.addrs[i];
+				if (i < 4)
+					addr1 |= GET_ADDR(i, val);
+				else
+					addr2 |= GET_ADDR(i - 4, val);
+			}
+			break;
+
+		case NAND_OP_DATA_IN_INSTR:
+		case NAND_OP_DATA_OUT_INSTR:
+			nfc_op.data_instr = instr;
+			nfc_op.data_instr_idx = op_id;
+			break;
+
+		case NAND_OP_WAITRDY_INSTR:
+			nfc_op.rdy_timeout_ms = instr->ctx.waitrdy.timeout_ms;
+			nfc_op.rdy_delay_ns = instr->delay_ns;
+			break;
+		}
+	}
+	instr = nfc_op.data_instr;
+	op_id = nfc_op.data_instr_idx;
+
+	/* Clear interrupts */
+	pl353_smc_clr_nand_int();
+	cmdphase_addrflags = ((naddrs << ADDR_CYCLES_SHIFT) |
+			 (end_cmd_valid << END_CMD_VALID_SHIFT) |
+			 (COMMAND_PHASE) |
+			 (nfc_op.cmnds[1] << END_CMD_SHIFT) |
+			 (nfc_op.cmnds[0] << START_CMD_SHIFT));
+
+	xnfc->dataphase_addrflags = ((0x0 << CLEAR_CS_SHIFT) |
+			  (0 << END_CMD_VALID_SHIFT) |
+			  (DATA_PHASE) |
+			  (nfc_op.cmnds[1] << END_CMD_SHIFT) |
+			  (0x0 << ECC_LAST_SHIFT));
+	writel(addr1, xnfc->regs + cmdphase_addrflags);
+	if (naddrs > 4)
+		writel(addr2, xnfc->regs + cmdphase_addrflags);
+
+	if (!nfc_op.data_instr) {
+		if (nfc_op.rdy_timeout_ms) {
+			if (pl353_wait_for_dev_ready(chip))
+				return -ETIMEDOUT;
+		}
+		ndelay(nfc_op.rdy_delay_ns);
+		return 0;
+	}
+
+	reading = (nfc_op.data_instr->type == NAND_OP_DATA_IN_INSTR);
+	len = nand_subop_get_data_len(subop, op_id);
+	if (!reading) {
+		pl353_nand_write_data_op(chip, instr->ctx.data.buf.out, len,
+					 instr->ctx.data.force_8bit);
+		if (nfc_op.rdy_timeout_ms) {
+			if (pl353_wait_for_dev_ready(chip))
+				return -ETIMEDOUT;
+		}
+		ndelay(nfc_op.rdy_delay_ns);
+	} else {
+		ndelay(nfc_op.rdy_delay_ns);
+
+		if (nfc_op.rdy_timeout_ms) {
+			if (pl353_wait_for_dev_ready(chip))
+				return -ETIMEDOUT;
+		}
+		pl353_nand_read_data_op(chip, instr->ctx.data.buf.in, len,
+					instr->ctx.data.force_8bit);
+	}
+
+	return 0;
+}
+
+static const struct nand_op_parser pl353_nfc_op_parser = NAND_OP_PARSER(
+	NAND_OP_PARSER_PATTERN(pl353_nand_exec_op_cmd,
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(true, 7),
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(true),
+		NAND_OP_PARSER_PAT_DATA_IN_ELEM(true, 2048)),
+	NAND_OP_PARSER_PATTERN(pl353_nand_exec_op_cmd,
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_ADDR_ELEM(true, 7),
+		NAND_OP_PARSER_PAT_DATA_OUT_ELEM(true, 2048),
+		NAND_OP_PARSER_PAT_CMD_ELEM(true),
+		NAND_OP_PARSER_PAT_WAITRDY_ELEM(true)),
+	);
+
+static int pl353_nfc_exec_op(struct nand_chip *chip,
+			     const struct nand_operation *op,
+			     bool check_only)
+{
+	return nand_op_parser_exec_op(chip, &pl353_nfc_op_parser,
+					      op, check_only);
+}
+
+/**
+ * pl353_nand_ecc_init - Initialize the ecc information as per the ecc mode
+ * @mtd:	Pointer to the mtd_info structure
+ * @ecc:	Pointer to ECC control structure
+ * @ecc_mode:	ondie ecc status
+ *
+ * This function initializes the ecc block and functional pointers as per the
+ * ecc mode
+ *
+ * Return:	0 on success or negative errno.
+ */
+static int pl353_nand_ecc_init(struct mtd_info *mtd, struct nand_ecc_ctrl *ecc,
+			       int ecc_mode)
+{
+	struct nand_chip *chip = mtd_to_nand(mtd);
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	int ret = 0;
+
+	if (ecc_mode == NAND_ECC_ON_DIE) {
+		/*
+		 * On-Die ECC spare bytes offset 8 is used for ECC codes
+		 * Use the BBT pattern descriptors
+		 */
+		chip->bbt_td = &bbt_main_descr;
+		chip->bbt_md = &bbt_mirror_descr;
+		ret = pl353_smc_set_ecc_mode(PL353_SMC_ECCMODE_BYPASS);
+		if (ret)
+			return ret;
+
+	} else {
+		ecc->mode = NAND_ECC_HW;
+		ecc->read_oob = pl353_nand_read_oob;
+		ecc->write_oob = pl353_nand_write_oob;
+		ecc->read_page = pl353_nand_read_page_hwecc;
+		ecc->write_page = pl353_nand_write_page_hwecc;
+
+		/* Hardware ECC generates 3 bytes ECC code for each 512 bytes */
+		ecc->bytes = 3;
+		ecc->strength = 1;
+		ecc->calculate = pl353_nand_calculate_hwecc;
+		ecc->correct = pl353_nand_correct_data;
+		ecc->size = PL353_NAND_ECC_SIZE;
+		pl353_smc_set_ecc_pg_size(mtd->writesize);
+		switch (mtd->writesize) {
+		case SZ_512:
+		case SZ_1K:
+		case SZ_2K:
+			pl353_smc_set_ecc_mode(PL353_SMC_ECCMODE_APB);
+			break;
+		default:
+			ecc->calculate = nand_calculate_ecc;
+			ecc->correct = nand_correct_data;
+			ecc->size = 256;
+			break;
+		}
+
+		if (mtd->oobsize == 16) {
+			mtd_set_ooblayout(mtd, &pl353_ecc_ooblayout16_ops);
+		} else if (mtd->oobsize == 64) {
+			mtd_set_ooblayout(mtd, &pl353_ecc_ooblayout64_ops);
+		} else {
+			dev_err(xnfc->dev, "Unsupported oob Layout\n");
+			ret = -ENXIO;
+		}
+	}
+
+	return ret;
+}
+
+static int pl353_nfc_setup_data_interface(struct nand_chip *chip, int csline,
+					  const struct nand_data_interface
+					  *conf)
+{
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	const struct nand_sdr_timings *sdr;
+	u32 timings[7], mckperiodps;
+
+	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
+		return 0;
+
+	sdr = nand_get_sdr_timings(conf);
+	if (IS_ERR(sdr))
+		return PTR_ERR(sdr);
+
+	/*
+	 * SDR timings are given in pico-seconds while NFC timings must be
+	 * expressed in NAND controller clock cycles.
+	 */
+	mckperiodps = NSEC_PER_SEC / xnfc->mclk_rate;
+	mckperiodps *= 1000;
+
+	if (sdr->tRC_min <= 20000)
+		/*
+		 * PL353 SMC needs one extra read cycle in SDR Mode 5
+		 * This is not written anywhere in the datasheet but
+		 * the results observed during testing.
+		 */
+		timings[0] = DIV_ROUND_UP(sdr->tRC_min, mckperiodps) + 1;
+	else
+		timings[0] = DIV_ROUND_UP(sdr->tRC_min, mckperiodps);
+
+	timings[1] = DIV_ROUND_UP(sdr->tWC_min, mckperiodps);
+
+	/*
+	 * For all SDR modes, PL353 SMC needs tREA max value as 1,
+	 * Results observed during testing.
+	 */
+	timings[2] = PL353_TREA_MAX_VALUE;
+	timings[3] = DIV_ROUND_UP(sdr->tWP_min, mckperiodps);
+	timings[4] = DIV_ROUND_UP(sdr->tCLR_min, mckperiodps);
+	timings[5] = DIV_ROUND_UP(sdr->tAR_min, mckperiodps);
+	timings[6] = DIV_ROUND_UP(sdr->tRR_min, mckperiodps);
+	pl353_smc_set_cycles(timings);
+
+	return 0;
+}
+
+static int pl353_nand_attach_chip(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct pl353_nand_controller *xnfc = to_pl353_nand(chip);
+	int ret;
+
+	if (chip->options & NAND_BUSWIDTH_16) {
+		ret = pl353_smc_set_buswidth(PL353_SMC_MEM_WIDTH_16);
+		if (ret) {
+			dev_err(xnfc->dev, "Set BusWidth failed\n");
+			return ret;
+		}
+	}
+
+	if (mtd->writesize <= SZ_512)
+		xnfc->addr_cycles = 1;
+	else
+		xnfc->addr_cycles = 2;
+
+	if (chip->options & NAND_ROW_ADDR_3)
+		xnfc->addr_cycles += 3;
+	else
+		xnfc->addr_cycles += 2;
+
+	ret = pl353_nand_ecc_init(mtd, &chip->ecc, chip->ecc.mode);
+	if (ret) {
+		dev_err(xnfc->dev, "ECC init failed\n");
+		return ret;
+	}
+
+	if (!mtd->name) {
+		/*
+		 * If the new bindings are used and the bootloader has not been
+		 * updated to pass a new mtdparts parameter on the cmdline, you
+		 * should define the following property in your NAND node, ie:
+		 *
+		 *	label = "pl353-nand";
+		 *
+		 * This way, mtd->name will be set by the core when
+		 * nand_set_flash_node() is called.
+		 */
+		mtd->name = devm_kasprintf(xnfc->dev, GFP_KERNEL,
+					   "%s", PL353_NAND_DRIVER_NAME);
+		if (!mtd->name) {
+			dev_err(xnfc->dev, "Failed to allocate mtd->name\n");
+			return -ENOMEM;
+		}
+	}
+
+	return 0;
+}
+
+static const struct nand_controller_ops pl353_nand_controller_ops = {
+	.attach_chip = pl353_nand_attach_chip,
+	.exec_op = pl353_nfc_exec_op,
+	.setup_data_interface = pl353_nfc_setup_data_interface,
+};
+
+/**
+ * pl353_nand_probe - Probe method for the NAND driver
+ * @pdev:	Pointer to the platform_device structure
+ *
+ * This function initializes the driver data structures and the hardware.
+ * The NAND driver has dependency with the pl353_smc memory controller
+ * driver for initializing the NAND timing parameters, bus width, ECC modes,
+ * control and status information.
+ *
+ * Return:	0 on success or error value on failure
+ */
+static int pl353_nand_probe(struct platform_device *pdev)
+{
+	struct pl353_nand_controller *xnfc;
+	struct mtd_info *mtd;
+	struct nand_chip *chip;
+	struct resource *res;
+	struct device_node *np, *dn;
+	struct clk *mclk;
+	u32 ret, val;
+
+	xnfc = devm_kzalloc(&pdev->dev, sizeof(*xnfc), GFP_KERNEL);
+	if (!xnfc)
+		return -ENOMEM;
+
+	xnfc->dev = &pdev->dev;
+	nand_controller_init(&xnfc->controller);
+	xnfc->controller.ops = &pl353_nand_controller_ops;
+
+	/* Map physical address of NAND flash */
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	xnfc->regs = devm_ioremap_resource(xnfc->dev, res);
+	if (IS_ERR(xnfc->regs))
+		return PTR_ERR(xnfc->regs);
+
+	chip = &xnfc->chip;
+	chip->controller = &xnfc->controller;
+	mtd = nand_to_mtd(chip);
+	nand_set_controller_data(chip, xnfc);
+	mtd->priv = chip;
+	mtd->owner = THIS_MODULE;
+	nand_set_flash_node(chip, xnfc->dev->of_node);
+
+	np = of_get_next_parent(xnfc->dev->of_node);
+	mclk = of_clk_get_by_name(np, "memclk");
+	if (IS_ERR(mclk)) {
+		dev_err(xnfc->dev, "Failed to retrieve MCK clk\n");
+		return PTR_ERR(mclk);
+	}
+
+	xnfc->mclk_rate = clk_get_rate(mclk);
+	dn = nand_get_flash_node(chip);
+	ret = of_property_read_u32(dn, "nand-bus-width", &val);
+	if (ret)
+		val = 8;
+
+	xnfc->buswidth = val;
+
+	/* Set the device option and flash width */
+	chip->options = NAND_BUSWIDTH_AUTO;
+	chip->bbt_options = NAND_BBT_USE_FLASH;
+	platform_set_drvdata(pdev, xnfc);
+	ret = nand_scan(chip, 1);
+	if (ret) {
+		dev_err(xnfc->dev, "could not scan the nand chip\n");
+		return ret;
+	}
+
+	ret = mtd_device_register(mtd, NULL, 0);
+	if (ret) {
+		dev_err(xnfc->dev, "Failed to register mtd device: %d\n", ret);
+		nand_cleanup(chip);
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * pl353_nand_remove - Remove method for the NAND driver
+ * @pdev:	Pointer to the platform_device structure
+ *
+ * This function is called if the driver module is being unloaded. It frees all
+ * resources allocated to the device.
+ *
+ * Return:	0 on success or error value on failure
+ */
+static int pl353_nand_remove(struct platform_device *pdev)
+{
+	struct pl353_nand_controller *xnfc = platform_get_drvdata(pdev);
+	struct mtd_info *mtd = nand_to_mtd(&xnfc->chip);
+	struct nand_chip *chip = mtd_to_nand(mtd);
+
+	/* Release resources, unregister device */
+	nand_release(chip);
+
+	return 0;
+}
+
+/* Match table for device tree binding */
+static const struct of_device_id pl353_nand_of_match[] = {
+	{ .compatible = "arm,pl353-nand-r2p1" },
+	{},
+};
+MODULE_DEVICE_TABLE(of, pl353_nand_of_match);
+
+/*
+ * pl353_nand_driver - This structure defines the NAND subsystem platform driver
+ */
+static struct platform_driver pl353_nand_driver = {
+	.probe		= pl353_nand_probe,
+	.remove		= pl353_nand_remove,
+	.driver		= {
+		.name	= PL353_NAND_DRIVER_NAME,
+		.of_match_table = pl353_nand_of_match,
+	},
+};
+
+module_platform_driver(pl353_nand_driver);
+
+MODULE_AUTHOR("Xilinx, Inc.");
+MODULE_ALIAS("platform:" PL353_NAND_DRIVER_NAME);
+MODULE_DESCRIPTION("ARM PL353 NAND Flash Driver");
+MODULE_LICENSE("GPL");
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
