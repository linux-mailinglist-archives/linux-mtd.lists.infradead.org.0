Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A084A9CF3E
	for <lists+linux-mtd@lfdr.de>; Mon, 26 Aug 2019 14:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYU4aT3byVCHBUk4u8BdRexgHXLRAA6bAdWwgrA374g=; b=SbsN61UaUEVR6D
	il8X7owPRNS/sKYA5Dp4mQOBTbQ9pqsYqk5F6LpvCtbKKFCAiqGNa74cmnAMCVFg+kmVldWT2Cvre
	tMLNY+StqbzM8xlgt/2Dwm7hFLKE3G4ke70Gi7sQeAvHB/LDOu6nQ7X0EKoY3w7fSg447Mth4O78Y
	cofXz2t84Cer6o+pirTyeieujIukpsfCCt3T+inDBn5yfU3MzP/c+CBGs8Q+DviQ6tcjWrNlK2TJO
	lwTjj3nb4Jtbxf8O/xeGEt3vqnQgSQc3o9XdIqpNjm/RSE2Y+kppNFOlHqnw7xUxfrcDuE75yOhMZ
	dxNvuQFq/AJOAyJFkU4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Ds0-0008MI-Fw; Mon, 26 Aug 2019 12:13:12 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2DoC-0002sM-CJ
 for linux-mtd@lists.infradead.org; Mon, 26 Aug 2019 12:09:24 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Q67+8tPMebLZsAjoPFwtM1yAOabWw4J0CX8GhWicnNJrKqGYkbMRIDkvUlC7HkPcgdTBfGUQv/
 03FTryggOeYKvTqM/BJ9qvnOPZUD1hI69GFFdqzlBD9E+GX9ba3Hr97RG9FeSZgIIksCQBQf7U
 24V6WwjG2H1o9xJ37kvk7ML+pK3vSVLg3766AGpAxvMzluv9PXeRs7psx/pfA82ICVKUP1Oa94
 5VPZT/VcydrU0PMxWLFLL/31kO20D5d34vC8gVvF+HBdMoCUNah1TMcdess8Hwz+rvrZMTpaNe
 v7I=
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="46520810"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 26 Aug 2019 05:09:11 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 26 Aug 2019 05:09:10 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 26 Aug 2019 05:09:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bcxKWlG1/mdzv2TL4K/OEXJ469/fqrF4h5/o7Ps330T0sIwtgtz48s96sIqyk3Hm2qvq0vzCPsmLr+KbX3nkwbJr+S3YEoIiwqOYvmtDtU1JvcRp79grfeBI1y4T0zfbpPpydjIe5Yalr1tltWucV6AEFoCAfn8lqwQbSMca+env/mghuYB+kMPxjm39PijWTsD3YTdRvd2KH1COFTPU71+4Zh9tv2nvEN1j5VXwj3CRy8zmox39FFLxPGP6IxwvaAOMjcTyEb/zbHStUlFj0TRnf1okxNlt+3Xp7USaFuaSLWXvNo4MetNSF2bqxM9qjyuVv8j11vnrjiPEC8kC9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=br0Zm+GNiKx2v7OTSTyHjSEIqWarxg1BOxiPf4PRPT8=;
 b=OJVUo2naOddRDpIFbGpGEajQsTlMQEyXJfTOjHTRXTIHJZ+c53ydFUe0gbta7uwV6zgCQMrpVt2Mcf0siKnl+XzCdp1FmTWuDgDg2x0QgmKgbgUXYEF1SFZKkooM+Mg/en8wmrEqzYsRWqW7jrMjgoOTw73c9SBGriorM6bu5/iCIYbPg4OROLxMHAmZrD0QY4+TCMr0jRRxmUut8EmdaBNbgBCLJD7NPDTfOxwMVwonCPkWK7wyaG7N73yPg4i0ailPO+Rh61rGSV4PaN0qFw/lb92R7o1keiwEEJXIERAqk5/yqNi9U4jjxu9+LjICSf7sLzG2bkvNbW/gIi+RFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=br0Zm+GNiKx2v7OTSTyHjSEIqWarxg1BOxiPf4PRPT8=;
 b=NdI7+QJ8r4llkbao1NlheYIb7BXACyi3xKi3E4uRjuBys9AHUqVPhLsBgTd4hP/oBSiljGhGIYjIXt+PA3NpWgMOnT4I1jRgQADudS7X2ZB2PdECABw/Z9v5C5pf2vw4bVZfj60F305qgUkwpW/ZqF5liCzJnN/hCXVdcfHfaaY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.252.94) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Mon, 26 Aug 2019 12:09:09 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::70c3:e929:4da2:60a5%7]) with mapi id 15.20.2199.021; Mon, 26 Aug 2019
 12:09:09 +0000
From: <Tudor.Ambarus@microchip.com>
To: <boris.brezillon@collabora.com>, <marek.vasut@gmail.com>,
 <vigneshr@ti.com>, <miquel.raynal@bootlin.com>, <richard@nod.at>,
 <linux-mtd@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [RESEND RFC PATCH v3 20/20] mtd: spi-nor: Rework the disabling of
 block write protection
Thread-Topic: [RESEND RFC PATCH v3 20/20] mtd: spi-nor: Rework the disabling
 of block write protection
Thread-Index: AQHVXAcQinhjg2xtc0ydVZ7nzkNNbA==
Date: Mon, 26 Aug 2019 12:09:09 +0000
Message-ID: <20190826120821.16351-21-tudor.ambarus@microchip.com>
References: <20190826120821.16351-1-tudor.ambarus@microchip.com>
In-Reply-To: <20190826120821.16351-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0046.eurprd09.prod.outlook.com
 (2603:10a6:802:28::14) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bf0993e8-f9b5-47a0-e61d-08d72a1e334d
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR11MB3678; 
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678A589110D04A705B1E0D7F0A10@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01415BB535
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(366004)(346002)(39860400002)(136003)(189003)(199004)(186003)(86362001)(305945005)(2906002)(7736002)(2201001)(6486002)(6436002)(6116002)(3846002)(66556008)(30864003)(66946007)(66476007)(2501003)(66446008)(64756008)(5660300002)(71190400001)(14444005)(256004)(71200400001)(1076003)(6506007)(386003)(14454004)(107886003)(316002)(99286004)(76176011)(110136005)(52116002)(2616005)(476003)(486006)(53936002)(66066001)(8676002)(8936002)(81166006)(53946003)(6512007)(4326008)(25786009)(36756003)(478600001)(81156014)(102836004)(50226002)(446003)(11346002)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: np2oSG/CMER08nhl5qDhl617PMT5qRvDVTKyfFMOpkN+R4ULwJtEy81pAx2HwyQN7BzyY/Dvx/acXC3GKJAeh6Qr6Vy9I3swP0GuUqnLucJ8KWSbX2EEo/qmlkivkLODxCXs0f31ByaMfvlylri80t2FkusFY8fFPeT94g9wv3QlRTN6oLen4tgoCHC9KmVk+SI8DdXDICfJWYc1w6KM6mDxuP+0KymGm+YsSFs7LJZMOiohIuWaNt2liqwRKVq2uc8HVzpvVv2Ee4yhWba9aBkOp5oIBQxEcQG4c90mVgznCNluT9YwYFxG1GMH6DbpIcZY2ffcQ1+SxU0Q7YyPpMJUBQK1XDES4vMGtUoszId3XG94aoYA9rRLKY+ogr06PYMij10bSHOwr9NQea/tBk2MURyD00zGzfAZ11lo/mU=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bf0993e8-f9b5-47a0-e61d-08d72a1e334d
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2019 12:09:09.6431 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2ImViZunqkpLrlyff56TaClsW6k5t/rS9/Ue39u8LsRJRJ+zayQO6cCQdW9OnopJx2biNdPeYKX21du5g2GQK22l9lAQZ0z021er7m/StmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3678
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_050916_552418_37E06464 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
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

From: Tudor Ambarus <tudor.ambarus@microchip.com>

spi_nor_unlock() unlocks blocks of memory or the entire flash memory
array, if requested. clear_sr_bp() unlocks the entire flash memory
array at boot time. This calls for some unification, clear_sr_bp() is
just an optimization for the case when the unlock request covers the
entire flash size.

Merge the clear_sr_bp() and stm_lock/unlock logic and introduce
spi_nor_unlock_all(), which makes an unlock request that covers the
entire flash size.

Get rid of the MFR handling and implement specific manufacturer
default_init() fixup hooks.

Move write_sr_cr() to avoid to add a forward declaration. Prefix
new function with 'spi_nor_'.

Note that this changes a bit the logic for the SNOR_MFR_ATMEL and
SNOR_MFR_INTEL cases. Before this patch, the Atmel and Intel chips
did not set the locking ops, but unlocked the entire flash at boot
time, while now they are setting the locking ops to stm_locking_ops.
This should work, since the the disable of the block protection at the
boot time used the same Status Register bits to unlock the flash, as
in the stm_locking_ops case.

In future, we should probably add new hooks to
'struct spi_nor_flash_parameter' to describe how to interact with the
Status and Configuration Registers in the form of:
	nor->params.ops->read_sr
	nor->params.ops->write_sr
	nor->params.ops->read_cr
	nor->params.ops->write_sr
We can retrieve this info starting with JESD216 revB, by checking the
15th DWORD of Basic Flash Parameter Table, or with later revisions of
the standard, by parsing the "Status, Control and Configuration Register
Map for SPI Memory Devices".

Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
v3: new patch

 drivers/mtd/spi-nor/spi-nor.c | 337 +++++++++++++++++++++++-------------------
 include/linux/mtd/spi-nor.h   |   4 +-
 2 files changed, 185 insertions(+), 156 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index ec70b58294ec..01d4051510b6 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1320,8 +1320,63 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return ret;
 }
 
-/* Write status register and ensure bits in mask match written values */
-static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
+/*
+ * write_sr_cr() - Write the Status Register and Configuration Register.
+ * @nor:        pointer to a 'struct spi_nor'.
+ * status_new:	byte value to be written to the Status Register.
+ * mask:	mask with which to check the written values.
+ *
+ * Write Status Register and Configuration Register with 2 bytes. The first
+ * byte will be written to the status register, while the second byte will be
+ * written to the configuration register.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
+{
+	int ret;
+
+	write_enable(nor);
+
+	if (nor->spimem) {
+		struct spi_mem_op op =
+			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
+				   SPI_MEM_OP_NO_ADDR,
+				   SPI_MEM_OP_NO_DUMMY,
+				   SPI_MEM_OP_DATA_OUT(2, sr_cr, 1));
+
+		ret = spi_mem_exec_op(nor->spimem, &op);
+	} else {
+		ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
+	}
+
+	if (ret < 0) {
+		dev_err(nor->dev,
+			"error while writing configuration register\n");
+		return -EINVAL;
+	}
+
+	ret = spi_nor_wait_till_ready(nor);
+	if (ret) {
+		dev_err(nor->dev,
+			"timeout while writing configuration register\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * spi_nor_write_sr1_and_check() - Write one byte to the Status Register and
+ * ensure the bits in the mask match the written values.
+ * @nor:        pointer to a 'struct spi_nor'.
+ * status_new:	byte value to be written to the Status Register.
+ * mask:	mask with which to check the written values.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_sr1_and_check(struct spi_nor *nor, u8 status_new,
+				       u8 mask)
 {
 	int ret;
 
@@ -1341,6 +1396,88 @@ static int write_sr_and_check(struct spi_nor *nor, u8 status_new, u8 mask)
 	return ((ret & mask) != (status_new & mask)) ? -EIO : 0;
 }
 
+/**
+ * spi_nor_write_sr_cr_and_check() - Write the Status Register and
+ * Configuration Register and ensure the bits in the mask match the written
+ * values.
+ * @nor:        pointer to a 'struct spi_nor'.
+ * status_new:	byte value to be written to the Status Register.
+ * mask:	mask with which to check the written values.
+ *
+ * The Configuration Register is written only when it has the Quad Enable (QE)
+ * bit set to one. When QE bit is set to one, only the Write Status (01h)
+ * command with two data bytes may be used, so both the Status and
+ * Configuration registers will be written.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_sr_cr_and_check(struct spi_nor *nor, u8 status_new,
+					 u8 mask)
+{
+	int ret;
+	u8 *sr_cr = nor->bouncebuf;
+
+	/* Check current Quad Enable bit value. */
+	ret = read_cr(nor);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * If the Quad Enable bit is zero, use the Write Status (01h) command
+	 * with one data byte.
+	 */
+	if (!(ret & CR_QUAD_EN_SPAN))
+		return spi_nor_write_sr1_and_check(nor, status_new, mask);
+
+	/*
+	 * When the configuration register Quad Enable bit is one, only the
+	 * Write Status (01h) command with two data bytes may be used.
+	 *
+	 */
+	sr_cr[0] = status_new;
+	sr_cr[1] = ret;
+
+	ret = write_sr_cr(nor, sr_cr);
+	if (ret) {
+		dev_err(nor->dev, "16-bit write register failed\n");
+		return ret;
+	}
+
+	ret = read_sr(nor);
+	if (ret < 0)
+		return ret;
+
+	if ((ret & mask) != (status_new & mask))
+		return -EIO;
+
+	ret = read_cr(nor);
+	if (ret < 0)
+		return ret;
+
+	if (ret != sr_cr[1])
+		return -EIO;
+
+	return 0;
+}
+
+/**
+ * spi_nor_write_sr_and_check() - Write the Status Register and ensure the bits
+ * in the mask match the written values.
+ * @nor:        pointer to a 'struct spi_nor'.
+ * status_new:	byte value to be written to the Status Register.
+ * mask:	mask with which to check the written values.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
+				      u8 mask)
+{
+	if (nor->flags == SNOR_F_HAS_16BIT_SR)
+		return spi_nor_write_sr_cr_and_check(nor, status_new, mask);
+
+	return spi_nor_write_sr1_and_check(nor, status_new, mask);
+}
+
 static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
 				 uint64_t *len)
 {
@@ -1502,7 +1639,7 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if ((status_new & mask) < (status_old & mask))
 		return -EINVAL;
 
-	return write_sr_and_check(nor, status_new, mask);
+	return spi_nor_write_sr_and_check(nor, status_new, mask);
 }
 
 /*
@@ -1585,7 +1722,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if ((status_new & mask) > (status_old & mask))
 		return -EINVAL;
 
-	return write_sr_and_check(nor, status_new, mask);
+	return spi_nor_write_sr_and_check(nor, status_new, mask);
 }
 
 /*
@@ -1657,46 +1794,6 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 	return ret;
 }
 
-/*
- * Write status Register and configuration register with 2 bytes
- * The first byte will be written to the status register, while the
- * second byte will be written to the configuration register.
- * Return negative if error occurred.
- */
-static int write_sr_cr(struct spi_nor *nor, u8 *sr_cr)
-{
-	int ret;
-
-	write_enable(nor);
-
-	if (nor->spimem) {
-		struct spi_mem_op op =
-			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_WRSR, 1),
-				   SPI_MEM_OP_NO_ADDR,
-				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_OUT(2, sr_cr, 1));
-
-		ret = spi_mem_exec_op(nor->spimem, &op);
-	} else {
-		ret = nor->write_reg(nor, SPINOR_OP_WRSR, sr_cr, 2);
-	}
-
-	if (ret < 0) {
-		dev_err(nor->dev,
-			"error while writing configuration register\n");
-		return -EINVAL;
-	}
-
-	ret = spi_nor_wait_till_ready(nor);
-	if (ret) {
-		dev_err(nor->dev,
-			"timeout while writing configuration register\n");
-		return ret;
-	}
-
-	return 0;
-}
-
 /**
  * macronix_quad_enable() - set QE bit in Status Register.
  * @nor:	pointer to a 'struct spi_nor'
@@ -1942,95 +2039,6 @@ static int sr2_bit7_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-/**
- * spi_nor_clear_sr_bp() - clear the Status Register Block Protection bits.
- * @nor:        pointer to a 'struct spi_nor'
- *
- * Read-modify-write function that clears the Block Protection bits from the
- * Status Register without affecting other bits.
- *
- * Return: 0 on success, -errno otherwise.
- */
-static int spi_nor_clear_sr_bp(struct spi_nor *nor)
-{
-	int ret;
-	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
-
-	ret = read_sr(nor);
-	if (ret < 0) {
-		dev_err(nor->dev, "error while reading status register\n");
-		return ret;
-	}
-
-	write_enable(nor);
-
-	ret = write_sr(nor, ret & ~mask);
-	if (ret) {
-		dev_err(nor->dev, "write to status register failed\n");
-		return ret;
-	}
-
-	ret = spi_nor_wait_till_ready(nor);
-	if (ret)
-		dev_err(nor->dev, "timeout while writing status register\n");
-	return ret;
-}
-
-/**
- * spi_nor_spansion_clear_sr_bp() - clear the Status Register Block Protection
- * bits on spansion flashes.
- * @nor:        pointer to a 'struct spi_nor'
- *
- * Read-modify-write function that clears the Block Protection bits from the
- * Status Register without affecting other bits. The function is tightly
- * coupled with the spansion_quad_enable() function. Both assume that the Write
- * Register with 16 bits, together with the Read Configuration Register (35h)
- * instructions are supported.
- *
- * Return: 0 on success, -errno otherwise.
- */
-static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
-{
-	int ret;
-	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
-	u8 *sr_cr =  nor->bouncebuf;
-
-	/* Check current Quad Enable bit value. */
-	ret = read_cr(nor);
-	if (ret < 0) {
-		dev_err(nor->dev,
-			"error while reading configuration register\n");
-		return ret;
-	}
-
-	/*
-	 * When the configuration register Quad Enable bit is one, only the
-	 * Write Status (01h) command with two data bytes may be used.
-	 */
-	if (ret & CR_QUAD_EN_SPAN) {
-		sr_cr[1] = ret;
-
-		ret = read_sr(nor);
-		if (ret < 0) {
-			dev_err(nor->dev,
-				"error while reading status register\n");
-			return ret;
-		}
-		sr_cr[0] = ret & ~mask;
-
-		ret = write_sr_cr(nor, sr_cr);
-		if (ret)
-			dev_err(nor->dev, "16-bit write register failed\n");
-		return ret;
-	}
-
-	/*
-	 * If the Quad Enable bit is zero, use the Write Status (01h) command
-	 * with one data byte.
-	 */
-	return spi_nor_clear_sr_bp(nor);
-}
-
 /* Used when the "_ext_id" is two bytes at most */
 #define INFO(_jedec_id, _ext_id, _sector_size, _n_sectors, _flags)	\
 		.id = {							\
@@ -4373,6 +4381,16 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
+static void atmel_set_default_init(struct spi_nor *nor)
+{
+	nor->flags = SNOR_F_HAS_LOCK;
+}
+
+static void intel_set_default_init(struct spi_nor *nor)
+{
+	nor->flags = SNOR_F_HAS_LOCK;
+}
+
 static void macronix_set_default_init(struct spi_nor *nor)
 {
 	nor->params.quad_enable = macronix_quad_enable;
@@ -4400,6 +4418,14 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
+	case SNOR_MFR_ATMEL:
+		atmel_set_default_init(nor);
+		break;
+
+	case SNOR_MFR_INTEL:
+		intel_set_default_init(nor);
+		break;
+
 	case SNOR_MFR_MACRONIX:
 		macronix_set_default_init(nor);
 		break;
@@ -4595,6 +4621,9 @@ static void spi_nor_late_init_params(struct spi_nor *nor)
 	 */
 	if (nor->flags & SNOR_F_HAS_LOCK && !nor->params.locking_ops)
 		nor->params.locking_ops = &stm_locking_ops;
+
+	if (nor->params.quad_enable == spansion_quad_enable)
+		nor->flags |= SNOR_F_HAS_16BIT_SR;
 }
 
 /**
@@ -4667,20 +4696,32 @@ static int spi_nor_quad_enable(struct spi_nor *nor)
 	return nor->params.quad_enable(nor);
 }
 
+/**
+ * spi_nor_unlock_all() - Unlocks the entire flash memory array.
+ * @nor:                pointer to a 'struct spi_nor'
+ *
+ * Some SPI NOR flashes are write protected by default after a power-on reset
+ * cycle, in order to avoid inadvertent writes during power-up. Backward
+ * compatibility imposes to unlock the entire flash memory array at power-up
+ * by default.
+ */
+static int spi_nor_unlock_all(struct spi_nor *nor)
+{
+	if (nor->flags & SNOR_F_HAS_LOCK)
+		return spi_nor_unlock(&nor->mtd, 0, nor->params.size);
+
+	return 0;
+}
+
 static int spi_nor_init(struct spi_nor *nor)
 {
 	int err;
 
-	if (nor->clear_sr_bp) {
-		if (nor->params.quad_enable == spansion_quad_enable)
-			nor->clear_sr_bp = spi_nor_spansion_clear_sr_bp;
-
-		err = nor->clear_sr_bp(nor);
-		if (err) {
-			dev_err(nor->dev,
-				"fail to clear block protection bits\n");
-			return err;
-		}
+	err = spi_nor_unlock_all(nor);
+	if (err) {
+		dev_err(nor->dev,
+			"Failed to unlock the entire flash memory array\n");
+		return err;
 	}
 
 	err = spi_nor_quad_enable(nor);
@@ -4859,16 +4900,6 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (info->flags & SPI_NOR_HAS_LOCK)
 		nor->flags |= SNOR_F_HAS_LOCK;
 
-	/*
-	 * Atmel, SST, Intel/Numonyx, and others serial NOR tend to power up
-	 * with the software protection bits set.
-	 */
-	if (JEDEC_MFR(nor->info) == SNOR_MFR_ATMEL ||
-	    JEDEC_MFR(nor->info) == SNOR_MFR_INTEL ||
-	    JEDEC_MFR(nor->info) == SNOR_MFR_SST ||
-	    nor->info->flags & SPI_NOR_HAS_LOCK)
-		nor->clear_sr_bp = spi_nor_clear_sr_bp;
-
 	/* Init flash parameters based on flash_info struct and SFDP */
 	spi_nor_init_params(nor);
 
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index fc0b4b19c900..d7506dccb7da 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -243,6 +243,7 @@ enum spi_nor_option_flags {
 	SNOR_F_4B_OPCODES	= BIT(6),
 	SNOR_F_HAS_4BAIT	= BIT(7),
 	SNOR_F_HAS_LOCK		= BIT(8),
+	SNOR_F_HAS_16BIT_SR	= BIT(9),
 };
 
 /**
@@ -560,8 +561,6 @@ struct flash_info;
  * @erase:		[DRIVER-SPECIFIC] erase a sector of the SPI NOR
  *			at the offset @offs; if not provided by the driver,
  *			spi-nor will send the erase opcode via write_reg()
- * @clear_sr_bp:	[FLASH-SPECIFIC] clears the Block Protection Bits from
- *			the SPI NOR Status Register.
  * @params:		[FLASH-SPECIFIC] SPI-NOR flash parameters and settings.
  *                      The structure includes legacy flash parameters and
  *                      settings that can be overwritten by the spi_nor_fixups
@@ -599,7 +598,6 @@ struct spi_nor {
 			size_t len, const u_char *write_buf);
 	int (*erase)(struct spi_nor *nor, loff_t offs);
 
-	int (*clear_sr_bp)(struct spi_nor *nor);
 	struct spi_nor_flash_parameter params;
 
 	void *priv;
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
