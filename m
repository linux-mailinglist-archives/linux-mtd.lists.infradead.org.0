Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5D5A125F
	for <lists+linux-mtd@lfdr.de>; Thu, 29 Aug 2019 09:11:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gQYNhJWxiq6SokkCaZGqp1wg5ih2xi+osf0UFgY3WfE=; b=EiFD3USw62QxbL
	qo3hZFk+vkb6bgGCeUNXGQp0/eRrRVkuI65WzHk6+IleJaoCM+c0vd08QfD00J5IOFB4lPc7tiG2p
	tdq7AG4QBJi9MYJ6gi7YaQAz7mRb2VxA/yyNWU6QZprDrTN2s8SrYSmhbCypd34INBZwCVMd3AulA
	8hFW/d8oFcWuU2htUR/IJ4/ID2i761pPE8aDodGI7e/Ofg18OmNmrikuhec740cswOLnvuJA0/jrg
	GOfDktJ6joYCV1gq9oeW7c2k4U+9fbsiaglgx7d3YnGkhEYQVYbDu3S3qE8M1XW9+7jry7YXrxeUL
	QOm9DDqQqxnsrR9Ru/yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Eak-0002kQ-3s; Thu, 29 Aug 2019 07:11:34 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3EZq-0002XP-NZ
 for linux-mtd@lists.infradead.org; Thu, 29 Aug 2019 07:10:40 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 7m3wIcSd2/qUO/iK2oV+9PqC5jxTTg8g/6R2LdmsPK6gU/DjTsMwHqkjir+Fshlcw350jQCJxE
 saE9s4OuTo1xrDpPhEIoGlHieiXnB/HB9iUBa12ZNS1hmIUAw1j49rjsp0pZSKs/DHCpqVgdzl
 zQ6q3piCLXKrnR6Bb/tFwdeIMZsT4LlAuXjtML+BbYWaWLoW9BZTU32j/zjCBkMucpc0It44sZ
 Vc+bwb86Ri5OLsoXT5RsjSQS1JgNJoPqxnSb73G9Hyktk7Vy33ik3lietQiXIs8RbOeauRXgXc
 7tk=
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="44117216"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Aug 2019 00:10:32 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 29 Aug 2019 00:10:30 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 29 Aug 2019 00:10:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AChqTljigxUyDUsOQWHiGR2vzHawMITvp3EwFGi8SxmVHzmWB6EK21ACAjBPUopr9NcfqAACpx9G7Om2uPoRfaRgcGU7vgJ3YY8NtO0qFj6ThIPpgajY2YJkp8cmU3ky6/uIHs4byTRPhQAOdsxG7h0Z97fV57WLjxNEXuieNRNGjtzmRjlRWgSCQ0uddKfZlgo/YSCYLxUwuTMhi5bTxML30T+3x7UwFZi/V1Dfka2iWXu0bLtvt+AUZVJwhpsqMD72kttC2QQ9b36r/iWmHtqRjIz0j8Q1xb0LIm9B0NFJ1ORX2QxHM+KJX0pkuItckigNwPtzZ91K1LAM5SQoOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t+UgBAn3CBtshwM3y5pl+Cq02ub+oWzAYEf/9wiw5zQ=;
 b=ZBXC6bLbRso8IfgswLg/XO0h268pFmOv23P9PDsNfOz/F+uL+HWrejcYhVt/6tGeZOX7l9/g+F4Mae9WBay/ZOR+wUbhoCiQ9ZjKjKftW2/1UwyR9CmhTvwxMWuDdAmUmV2DIHgjcrnKBKlQ5+uO5YOFNACV0SHLYZ3Aef2j+DQio6gYbfj773Tn74AvtKXG+L5hwzzslX0W+YnFDnAXhtwtw0avtlEvJHcXZbkpWo2SKsPntgJ3dnNEiYHpsgUA3GjYxOi4FZtu8/gR2Log/olIsIWKqwqOBWTzy/BxKTGJz8lEJsXGIwYBlApKtqDgOeD8Qe+C7wazob+oE8bipQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t+UgBAn3CBtshwM3y5pl+Cq02ub+oWzAYEf/9wiw5zQ=;
 b=J97sLAY2p10/kOyzT4GGlWlj3E9tkun4J+7oUqTJm0ScSR+uSv/KxED7QDPwPiGGasy6i3s8zQ4EMlRafmbCPybQXuK3HOK6bFka6hM3WTCcZpVzbLcQz0nUktoaC/iqwBNGKlamKQACYUeBa0cFicDPWR7gkdvHYhD0P563gAo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3726.namprd11.prod.outlook.com (20.178.251.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Thu, 29 Aug 2019 07:10:30 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Thu, 29 Aug 2019
 07:10:30 +0000
From: <Tudor.Ambarus@microchip.com>
To: <richard@nod.at>, <miquel.raynal@bootlin.com>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>, <linux-mtd@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <zhuohao@chromium.org>
Subject: [PATCH 1/2] mtd: mtdcore: add debugfs nodes for querying the flash
 name and id
Thread-Topic: [PATCH 1/2] mtd: mtdcore: add debugfs nodes for querying the
 flash name and id
Thread-Index: AQHVXjjXSKsvghVT/EqI5P20aic0QQ==
Date: Thu, 29 Aug 2019 07:10:30 +0000
Message-ID: <20190829071019.2495-2-tudor.ambarus@microchip.com>
References: <20190829071019.2495-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190829071019.2495-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR06CA0165.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::22) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc9db667-1076-404e-75b3-08d72c4ff9ed
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB3726; 
x-ms-traffictypediagnostic: MN2PR11MB3726:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3726A4F7F8F626B4BF3F792DF0A20@MN2PR11MB3726.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:510;
x-forefront-prvs: 0144B30E41
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(366004)(396003)(346002)(39860400002)(199004)(189003)(71190400001)(50226002)(66446008)(66556008)(64756008)(66946007)(81156014)(71200400001)(1076003)(3846002)(66476007)(2906002)(14444005)(256004)(305945005)(36756003)(66066001)(5660300002)(7736002)(478600001)(26005)(6512007)(6436002)(81166006)(11346002)(2616005)(2201001)(486006)(6486002)(4326008)(86362001)(476003)(52116002)(25786009)(99286004)(8936002)(102836004)(6506007)(386003)(6116002)(76176011)(110136005)(53936002)(186003)(8676002)(316002)(2501003)(446003)(14454004)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3726;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pGpu2ODjgAkFodvensHqtzKN49GXkFkY8QA7oWOypFUf1iDjls/QzcgfxfQ533Qz+iJL2LMbqaWJJ3V5ni4MLPgHMYLW8PRdwqFS5zkKFU+SjFLom5rE3hyLEbHF+4n1zY6MUnqAkYZ9oSCIw/y1MyTcvGvixg8Go8mzBS+D2TGaIL8TpFDGTMNFeBhyBThWspRbS9lO/PdilyqVxRk3if6JGk+WNgIV7IpS1HQZ+HxKKC3qaqThRN0j47cwNB9A5wa82WBbCokAuGJpStNi4VNeTJRFLAp3uJYVkgbxiigglYitqGdpSiLIUCLWpa5+bcz8N9COq9Lo4teXIicYKbIBvqCj2mSKzD5DoVZjEvwSDRqaUGpxaoKmPCoYZuiZEJVESwqAPYGkFkr33rsdBZNS42+NR8c3IKk/Sp70E7c=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dc9db667-1076-404e-75b3-08d72c4ff9ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Aug 2019 07:10:30.6709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mL3k/mn+y93FUGMzHd/+1jtniJROBzt23QHg+TUjbUlK5DvnlvqAleqkFoFfLw/plmqA287PZTCqcPGJnoQXYQAIyQOr8t9KPLHWdH252so=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3726
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_001038_810375_D377C238 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Zhuohao Lee <zhuohao@chromium.org>

Currently, we don't have vfs nodes for querying the underlying flash name
and flash id. This information is important especially when we want to
know the flash detail of the defective system. In order to support the
query, we add mtd_debugfs_populate() to create two debugfs nodes
(ie. partname and partid). The upper driver can assign the pointer to
partname and partid before calling mtd_device_register().

Signed-off-by: Zhuohao Lee <zhuohao@chromium.org>
Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/mtdcore.c   | 86 +++++++++++++++++++++++++++++++++++++++++++------
 include/linux/mtd/mtd.h |  3 ++
 2 files changed, 80 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 408615f29e57..830a114e8500 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -335,6 +335,82 @@ static const struct device_type mtd_devtype = {
 	.release	= mtd_release,
 };
 
+static int mtd_partid_show(struct seq_file *s, void *p)
+{
+	struct mtd_info *mtd = s->private;
+
+	seq_printf(s, "%s\n", mtd->dbg.partid);
+
+	return 0;
+}
+
+static int mtd_partid_debugfs_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, mtd_partid_show, inode->i_private);
+}
+
+static const struct file_operations mtd_partid_debug_fops = {
+	.open           = mtd_partid_debugfs_open,
+	.read           = seq_read,
+	.llseek         = seq_lseek,
+	.release        = single_release,
+};
+
+static int mtd_partname_show(struct seq_file *s, void *p)
+{
+	struct mtd_info *mtd = s->private;
+
+	seq_printf(s, "%s\n", mtd->dbg.partname);
+
+	return 0;
+}
+
+static int mtd_partname_debugfs_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, mtd_partname_show, inode->i_private);
+}
+
+static const struct file_operations mtd_partname_debug_fops = {
+	.open           = mtd_partname_debugfs_open,
+	.read           = seq_read,
+	.llseek         = seq_lseek,
+	.release        = single_release,
+};
+
+static struct dentry *dfs_dir_mtd;
+
+static void mtd_debugfs_populate(struct mtd_info *mtd)
+{
+	struct device *dev = &mtd->dev;
+	struct dentry *root, *dent;
+
+	if (IS_ERR_OR_NULL(dfs_dir_mtd))
+		return;
+
+	root = debugfs_create_dir(dev_name(dev), dfs_dir_mtd);
+	if (IS_ERR_OR_NULL(root)) {
+		dev_dbg(dev, "won't show data in debugfs\n");
+		return;
+	}
+
+	mtd->dbg.dfs_dir = root;
+
+	if (mtd->dbg.partid) {
+		dent = debugfs_create_file("partid", 0400, root, mtd,
+					   &mtd_partid_debug_fops);
+		if (IS_ERR_OR_NULL(dent))
+			dev_err(dev,
+				"can't create debugfs entry for partid\n");
+	}
+	if (mtd->dbg.partname) {
+		dent = debugfs_create_file("partname", 0400, root, mtd,
+					   &mtd_partname_debug_fops);
+		if (IS_ERR_OR_NULL(dent))
+			dev_err(dev,
+				"can't create debugfs entry for partname\n");
+	}
+}
+
 #ifndef CONFIG_MMU
 unsigned mtd_mmap_capabilities(struct mtd_info *mtd)
 {
@@ -512,8 +588,6 @@ static int mtd_nvmem_add(struct mtd_info *mtd)
 	return 0;
 }
 
-static struct dentry *dfs_dir_mtd;
-
 /**
  *	add_mtd_device - register an MTD device
  *	@mtd: pointer to new MTD device info structure
@@ -607,13 +681,7 @@ int add_mtd_device(struct mtd_info *mtd)
 	if (error)
 		goto fail_nvmem_add;
 
-	if (!IS_ERR_OR_NULL(dfs_dir_mtd)) {
-		mtd->dbg.dfs_dir = debugfs_create_dir(dev_name(&mtd->dev), dfs_dir_mtd);
-		if (IS_ERR_OR_NULL(mtd->dbg.dfs_dir)) {
-			pr_debug("mtd device %s won't show data in debugfs\n",
-				 dev_name(&mtd->dev));
-		}
-	}
+	mtd_debugfs_populate(mtd);
 
 	device_create(&mtd_class, mtd->dev.parent, MTD_DEVT(i) + 1, NULL,
 		      "mtd%dro", i);
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 4ca8c1c845fb..249e8d9bfbcd 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -189,6 +189,9 @@ struct module;	/* only needed for owner field in mtd_info */
  */
 struct mtd_debug_info {
 	struct dentry *dfs_dir;
+
+	const char *partname;
+	const char *partid;
 };
 
 struct mtd_info {
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
