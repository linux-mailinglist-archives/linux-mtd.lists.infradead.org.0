Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBD310762C
	for <lists+linux-mtd@lfdr.de>; Fri, 22 Nov 2019 18:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f0CQYHThiD8zJaMBcRvQvV7KOVIbKFEYsdjr1luGF/Q=; b=EE8KkxdJQS5J5t
	pzQZNdwzRRlTlXrAw+cfDCa2xOOJ0Kz0z8oacvfZyQJH//ppJp0cO+DfI63VmxIBKDk7hNxo+liEu
	OpRSovSyUfSebcaa2gbcxFxnUiyFSiZFaie8WKylzQSly0dgZ8/NiCO5KiTX6UjRpqNy3aigtGkjN
	Rl3EWTY9BqXToZ17yEKz9XS+L4n7yleitiH3H5hqTHpt23YRr2J0OIECpp2GH87DyhqqUHGZfKhtm
	ag/ZTNYh6y54aakj3kdYQzRHcuQqFUVs7AhG1ShP7Wed9hrKqLncXOG0h6orUj800+u8J6NX5K6Z+
	tsb+Uau/9LxPbqXHm9VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYCMS-0003ny-Uy; Fri, 22 Nov 2019 17:04:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYCMF-0003nC-4Q
 for linux-mtd@lists.infradead.org; Fri, 22 Nov 2019 17:04:37 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAMH2xbe027518; Fri, 22 Nov 2019 18:04:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=sDlyBHMmlDnVJUfbwI/v8Ci33r9NaPZf6a4Vey8Cbh4=;
 b=ScO2cTUdmzsMRx1QAf4QZar2ZaUZEc12ba4mdm4u7pMakoBTTWtHjMldqJLSE6ge5dtZ
 6V0mo1M1cEILb8Zqk1VOVvnOi+EFLip7Vedl1nJLslGa4QiDrBKjotMOHhgua68LhYMK
 D8Gh+HeFWxdWeelAkapKLmmL27ZBIIpSvUFPu9dHm8dRN6OPfdTU3gy66SzMncLAZjRm
 lPdDFP+RNFDakISeeQQwZvH7gMXyMGel25qt9YBjhabbIKKnXKhGEHouNNMoBd6nmALb
 5ytpF5EEhAjaxkQSj/mhfJygeXV7XM5UUrhDXtwMy6l79dJjmemaGarDpWnWsw5734Uo YA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wa9ujhv5w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 22 Nov 2019 18:04:29 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 048E210002A;
 Fri, 22 Nov 2019 18:04:27 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B3BFF2FF5FE;
 Fri, 22 Nov 2019 18:04:27 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Fri, 22 Nov 2019 18:04:27 +0100
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>
Subject: mtd: Use mtd device name instead of mtd->name when registering nvmem
 device
Date: Fri, 22 Nov 2019 18:03:42 +0100
Message-ID: <1574442222-19759-1-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE3.st.com (10.75.127.15) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-22_03:2019-11-21,2019-11-22 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_090435_634511_D1B21476 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Kerello <christophe.kerello@st.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

MTD currently allows to have same partition name on different devices.
Since nvmen device registration has been added, it is not more possible
to have same partition name on different devices. We get following
logs:
sysfs: cannot create duplicate filename XXX
Failed to register NVMEM device

To avoid such issue, the proposed patch uses the mtd device name instead of
the partition name.

Fixes: c4dfa25ab307 ("mtd: add support for reading MTD devices via the nvmem API")
Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
Hi,

With latest mtd-next branch, we get following logs on our STM32MP1 eval board.

[    1.979089] nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xd3
[    1.984055] nand: Micron MT29F8G08ABACAH4
[    1.988000] nand: 1024 MiB, SLC, erase size: 256 KiB, page size: 4096, OOB size: 224
[    1.996378] Bad block table found at page 262080, version 0x01
[    2.001945] Bad block table found at page 262016, version 0x01
[    2.008002] 4 fixed-partitions partitions found on MTD device 58002000.nand-controller
[    2.015398] Creating 4 MTD partitions on "58002000.nand-controller":
[    2.021751] 0x000000000000-0x000000200000 : "fsbl"
[    2.028506] 0x000000200000-0x000000400000 : "ssbl1"
[    2.033741] 0x000000400000-0x000000600000 : "ssbl2"
[    2.038924] 0x000000600000-0x000040000000 : "UBI"
[    2.051336] spi-nor spi0.0: mx66l51235l (65536 Kbytes)
[    2.055123] 4 fixed-partitions partitions found on MTD device spi0.0
[    2.061378] Creating 4 MTD partitions on "spi0.0":
[    2.066243] 0x000000000000-0x000000040000 : "fsbl"
[    2.071429] sysfs: cannot create duplicate filename '/bus/nvmem/devices/fsbl'
[    2.078157] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.4.0-rc4-00031-g589e1b6 #176
[    2.085781] Hardware name: STM32 (Device Tree Support)
[    2.090957] [<c0312830>] (unwind_backtrace) from [<c030cbe4>] (show_stack+0x10/0x14)
[    2.098693] [<c030cbe4>] (show_stack) from [<c0e8d340>] (dump_stack+0xb4/0xc8)
[    2.105929] [<c0e8d340>] (dump_stack) from [<c050fcdc>] (sysfs_warn_dup+0x58/0x64)
[    2.113509] [<c050fcdc>] (sysfs_warn_dup) from [<c0510010>] (sysfs_do_create_link_sd+0xe4/0xe8)
[    2.122224] [<c0510010>] (sysfs_do_create_link_sd) from [<c0956f60>] (bus_add_device+0x80/0xfc)
[    2.130938] [<c0956f60>] (bus_add_device) from [<c0953f54>] (device_add+0x35c/0x608)
[    2.138697] [<c0953f54>] (device_add) from [<c0d12e0c>] (nvmem_register.part.2+0x180/0x624)
[    2.147065] [<c0d12e0c>] (nvmem_register.part.2) from [<c09ea5c8>] (add_mtd_device+0x2d8/0x4b8)
[    2.155776] [<c09ea5c8>] (add_mtd_device) from [<c09edbd4>] (add_mtd_partitions+0x84/0x16c)
[    2.164140] [<c09edbd4>] (add_mtd_partitions) from [<c09ed9ac>] (parse_mtd_partitions+0x220/0x3c4)
[    2.173118] [<c09ed9ac>] (parse_mtd_partitions) from [<c09ea8d4>] (mtd_device_parse_register+0x40/0x164)
[    2.182622] [<c09ea8d4>] (mtd_device_parse_register) from [<c0a22dfc>] (spi_nor_probe+0xd0/0x190)
[    2.191513] [<c0a22dfc>] (spi_nor_probe) from [<c0a370a0>] (spi_drv_probe+0x80/0xa4)
[    2.199268] [<c0a370a0>] (spi_drv_probe) from [<c0957f8c>] (really_probe+0x234/0x34c)
[    2.207111] [<c0957f8c>] (really_probe) from [<c095821c>] (driver_probe_device+0x60/0x174)
[    2.215391] [<c095821c>] (driver_probe_device) from [<c0956378>] (bus_for_each_drv+0x58/0xb8)
[    2.223932] [<c0956378>] (bus_for_each_drv) from [<c0957ce4>] (__device_attach+0xd0/0x13c)
[    2.232212] [<c0957ce4>] (__device_attach) from [<c0957060>] (bus_probe_device+0x84/0x8c)
[    2.240404] [<c0957060>] (bus_probe_device) from [<c0953fb4>] (device_add+0x3bc/0x608)
[    2.248334] [<c0953fb4>] (device_add) from [<c0a377b4>] (spi_add_device+0x9c/0x14c)
[    2.256003] [<c0a377b4>] (spi_add_device) from [<c0a37b98>] (of_register_spi_device+0x234/0x370)
[    2.264807] [<c0a37b98>] (of_register_spi_device) from [<c0a384ec>] (spi_register_controller+0x578/0x734)
[    2.274394] [<c0a384ec>] (spi_register_controller) from [<c0a386dc>] (devm_spi_register_controller+0x34/0x6c)
[    2.284331] [<c0a386dc>] (devm_spi_register_controller) from [<c0a4d0b8>] (stm32_qspi_probe+0x338/0x3bc)
[    2.293831] [<c0a4d0b8>] (stm32_qspi_probe) from [<c0959ee0>] (platform_drv_probe+0x48/0x98)
[    2.302285] [<c0959ee0>] (platform_drv_probe) from [<c0957f8c>] (really_probe+0x234/0x34c)
[    2.310566] [<c0957f8c>] (really_probe) from [<c095821c>] (driver_probe_device+0x60/0x174)
[    2.318847] [<c095821c>] (driver_probe_device) from [<c09584d8>] (device_driver_attach+0x58/0x60)
[    2.327735] [<c09584d8>] (device_driver_attach) from [<c0958560>] (__driver_attach+0x80/0xbc)
[    2.336276] [<c0958560>] (__driver_attach) from [<c09562cc>] (bus_for_each_dev+0x74/0xb4)
[    2.344469] [<c09562cc>] (bus_for_each_dev) from [<c09572c4>] (bus_add_driver+0x164/0x1e8)
[    2.352749] [<c09572c4>] (bus_add_driver) from [<c0958fd8>] (driver_register+0x74/0x108)
[    2.360854] [<c0958fd8>] (driver_register) from [<c0302ec8>] (do_one_initcall+0x54/0x22c)
[    2.369047] [<c0302ec8>] (do_one_initcall) from [<c1501024>] (kernel_init_freeable+0x150/0x1ec)
[    2.377762] [<c1501024>] (kernel_init_freeable) from [<c0ea5e74>] (kernel_init+0x8/0x114)
[    2.385951] [<c0ea5e74>] (kernel_init) from [<c03010e8>] (ret_from_fork+0x14/0x2c)
[    2.393525] Exception stack(0xe68c1fb0 to 0xe68c1ff8)
[    2.398583] 1fa0:                                     00000000 00000000 00000000 00000000
[    2.406777] 1fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
[    2.414967] 1fe0: 00000000 00000000 00000000 00000000 00000013 00000000
[    2.421879] mtd mtd4: Failed to register NVMEM device

Before nvmen device registration was added, it was possible to have same partition name on different devices.
Instead of using the partition name, this patch proposes to use the MTD device name (mtdX).

Regards,
Christophe Kerello.

 drivers/mtd/mtdcore.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 5fac435..559b693 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -551,7 +551,7 @@ static int mtd_nvmem_add(struct mtd_info *mtd)
 
 	config.id = -1;
 	config.dev = &mtd->dev;
-	config.name = mtd->name;
+	config.name = dev_name(&mtd->dev);
 	config.owner = THIS_MODULE;
 	config.reg_read = mtd_nvmem_reg_read;
 	config.size = mtd->size;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
