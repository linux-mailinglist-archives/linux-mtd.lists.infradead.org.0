Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADA0E86A1
	for <lists+linux-mtd@lfdr.de>; Tue, 29 Oct 2019 12:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6m0hwTLXpGWFFeX7TslY5q8Wq88lOzu40tiHMZ287DY=; b=DcDtkP/gTyZ7oU
	XlMJvSSu4ugy25jN64lBy/0YyTZf3KoioFTPd93myRCXpK+Oy3XckY+XPy4mYkmMbeEr1G1/w7h7+
	xXg2e7y6n2sWodhvWSgKJQCUUbKhtoWioAKnLryxtBOqjkNppmCau92149MvGlrCLnKFWcYNS6I8T
	bh1Ztaycw+bD+dNnQgAk5pyJprk3gDYCCdtM+SHc9cUulTaGhuE39zLhoyzGFWFhG9tAQThtxhvdz
	grWKNUm092HSTZP9QTXk/hdhudKlqnYwQs7JaIb7Ani1vZrJy+GpKbH1bZlXb3Vt34WxAh9MtR2+0
	ajSj3CHTIoFcs8joa3CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPXz-0005Lz-Ka; Tue, 29 Oct 2019 11:20:23 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPUl-0002Xd-Ut
 for linux-mtd@lists.infradead.org; Tue, 29 Oct 2019 11:17:06 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: oVjrPBiEK6G4RW4Pafjo7Wfja4W9R2u62LtDGx6kjRleJdmOH7UVSRykQPijOeceoOWNLmWw8b
 JE9z5TOv2jna3aY4FD00gExzs79zFvL5PLcU3x7ilbaQ0Xsm/uXqSj0S2BjBuGXOhkMhSBzZwK
 EkMV2IkEo9Wmh937toF+JeflVhm89CnxtMtDnOQAkn1ctN78SvACB1F937bidJc8uOK079bxcq
 pjua2pqiYtFmP3+MEETR8DxtSOsstH/jhn3vMW1tr46NB8YIrlJC4+lEJd+nH/ZbDz+1WIrs7K
 iVw=
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="53292006"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 29 Oct 2019 04:17:03 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 29 Oct 2019 04:17:02 -0700
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 29 Oct 2019 04:17:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDjr0Bx3JkHIEi4bvsfRb7YvPhblLYGvmdR6hI6xHlX07smrj+V11pz4T71YEMXU/0Nb9GE25lIUZl1Pv5olEYCA3f6C0mqg9307HncITpbce3QXAIgNtXSIC6ld1x3Q/6bMBhfDBph5yzLRjMZlzNXBE/r/O2f0JEFDRHRIGEvYAczJPMKMG7jMt+DIeAqpVMGMClNsIt7N3GKPYP/dxYdH2UGrsYUXqO+2dKvgNMZCa/loOFdrmkOulzXmMRAbVp05SqLXLy+5w1ifH7FOSlZyVbbVQG/EaAhontgAJDmZi1szzPlgw8DJimi5eUB1tFRfYwejMsvKtgoLtoA6eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T3VKK0zwEr2WR10xC8KY790PQk5i4BzLypS9+YXPYt4=;
 b=RRmpSbKLNvuos0n1YB6kwAgm0EhC6WkzAW+GZrcUIutP7jOp8Hln2OnNMZas4spkaYjMT9KR/uWwPXRitbVY8LA5FcRjE/Id9aNCno/1jIsu+8bfGQupE0KNAWaBfDWvSeeenW9rQM5IxcqMh6cCnJve+F0C+F1VLkOkZF3ONGk7keCaGir3Q2rASGMG2l3kTc3wPI8MVYM1ctQD+Ue4/7cCtGjGjga0YSSDlZI8v/r2R+LSeIlS5tJQqp0Ym0H5nqDrqs0+IRHssl4/Vk1FaSiiKOPwiJXchiye63zWCWUr7SmctW4zrbSOYXpdPKNId3yudOOX53JKWiMwrOibKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T3VKK0zwEr2WR10xC8KY790PQk5i4BzLypS9+YXPYt4=;
 b=dHqnXPlvr8MpbM8GUCvv6eJHEgQVto0ho8p4Ao2aV13ocHXdOkrhPjBlAYA5zAYkcUlC1lBnGYPjk3NDxjQpCURWTBWOUQiSU4abTwCDrPzoLCZv5v9VZTxAvJKW1lg3w7y1SxCnvKRt61mmhm8wEF+upFyESli/QR1EIgrGxEw=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB3823.namprd11.prod.outlook.com (20.178.254.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.20; Tue, 29 Oct 2019 11:17:01 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 11:17:01 +0000
From: <Tudor.Ambarus@microchip.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 08/32] mtd: spi-nor: Pointer parameter for SR in
 spi_nor_read_sr()
Thread-Topic: [PATCH v3 08/32] mtd: spi-nor: Pointer parameter for SR in
 spi_nor_read_sr()
Thread-Index: AQHVjkpiOw/hcnX3gEiJ07FI3O5zBw==
Date: Tue, 29 Oct 2019 11:17:00 +0000
Message-ID: <20191029111615.3706-9-tudor.ambarus@microchip.com>
References: <20191029111615.3706-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191029111615.3706-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0376.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::28) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.9.5
x-originating-ip: [83.166.207.93]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cc9d2213-1d65-4c48-1453-08d75c6184e8
x-ms-traffictypediagnostic: MN2PR11MB3823:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3823ECD71E08D432FB70568EF0610@MN2PR11MB3823.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(136003)(376002)(396003)(189003)(199004)(478600001)(8676002)(4326008)(8936002)(66066001)(14454004)(36756003)(6512007)(107886003)(86362001)(11346002)(2616005)(476003)(486006)(6436002)(1076003)(2201001)(71200400001)(71190400001)(446003)(81156014)(81166006)(6486002)(50226002)(99286004)(66946007)(386003)(316002)(52116002)(6506007)(102836004)(76176011)(26005)(2501003)(305945005)(186003)(6116002)(110136005)(25786009)(2906002)(14444005)(256004)(54906003)(3846002)(64756008)(66446008)(66556008)(66476007)(5660300002)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3823;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cmKKObFGMQz3UWtVNCeSk92jfe06ffrIeWRqUngNHvTMNCu1wq6+io8dPZa4RSIr1898tqbVBhn4Qv5lfGW9888wc8t7iXCPLnvjlIIDdkdUJEDl2lk7OOe2iX+K7aQX+/43dJ2SURELg2N3OJbBuAjfTDUxUVNJ2KubW49/koHSSqgijfSHoI0hCMOGydpzhMKj5fgN3QY+c06vbmwezrAqBtmsT9ybaag+D4xbWRj0fAImwn5g7MJ2be9AcOswmcKhP4ptYXTf9kosV+aCluEVIfaCwBMN15kdRRwiAJJ9SVivzkIBMZq8r5bkd6CkGAOEA2a8psUYt0riLO3b9uv6hSGo8eteAWQ9jrBOp4fKikIWQ3HX+UB5OPj/CQHkhudi0hI6PktDKrx4vp11FnBUaICLUY9YHpNJovJlK/Vc6lHM6CPq9Fx8+NsXA123
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cc9d2213-1d65-4c48-1453-08d75c6184e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 11:17:00.9288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GNXWe3RV06JI5LmSQb8LMXuROcNLz1DEOAE5sQnbKTVGE5EjSpCq29nxqluiCTiS2lcu5Ew10f7cJ/912MiBlJcNENPkwLVckb1ELU31mxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3823
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_041704_174574_D248067A 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tudor.Ambarus@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Tudor Ambarus <tudor.ambarus@microchip.com>

Let the callers pass the pointer to the DMA-able buffer where
the value of the Status Register will be written. This way we
avoid the casts between int and u8, which can be confusing.

Callers stop compare the return value of spi_nor_read_sr() with negative,
spi_nor_read_sr() returns 0 on success and -errno otherwise.

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 117 +++++++++++++++++++++++-------------------
 1 file changed, 64 insertions(+), 53 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1a00438fd061..dc44d1206f77 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -425,12 +425,15 @@ static int spi_nor_write_disable(struct spi_nor *nor)
 	return nor->controller_ops->write_reg(nor, SPINOR_OP_WRDI, NULL, 0);
 }
 
-/*
- * Read the status register, returning its value in the location
- * Return the status register value.
- * Returns negative if error occurred.
+/**
+ * spi_nor_read_sr() - Read the Status Register.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @sr:		pointer to a DMA-able buffer where the value of the
+ *              Status Register will be written.
+ *
+ * Return: 0 on success, -errno otherwise.
  */
-static int spi_nor_read_sr(struct spi_nor *nor)
+static int spi_nor_read_sr(struct spi_nor *nor, u8 *sr)
 {
 	int ret;
 
@@ -439,20 +442,18 @@ static int spi_nor_read_sr(struct spi_nor *nor)
 			SPI_MEM_OP(SPI_MEM_OP_CMD(SPINOR_OP_RDSR, 1),
 				   SPI_MEM_OP_NO_ADDR,
 				   SPI_MEM_OP_NO_DUMMY,
-				   SPI_MEM_OP_DATA_IN(1, nor->bouncebuf, 1));
+				   SPI_MEM_OP_DATA_IN(1, sr, 1));
 
 		ret = spi_mem_exec_op(nor->spimem, &op);
 	} else {
 		ret = nor->controller_ops->read_reg(nor, SPINOR_OP_RDSR,
-						    nor->bouncebuf, 1);
+						    sr, 1);
 	}
 
-	if (ret) {
+	if (ret)
 		dev_err(nor->dev, "error %d reading SR\n", ret);
-		return ret;
-	}
 
-	return nor->bouncebuf[0];
+	return ret;
 }
 
 /*
@@ -668,12 +669,14 @@ static int spi_nor_clear_sr(struct spi_nor *nor)
 
 static int spi_nor_sr_ready(struct spi_nor *nor)
 {
-	int sr = spi_nor_read_sr(nor);
-	if (sr < 0)
-		return sr;
+	int ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
 
-	if (nor->flags & SNOR_F_USE_CLSR && sr & (SR_E_ERR | SR_P_ERR)) {
-		if (sr & SR_E_ERR)
+	if (ret)
+		return ret;
+
+	if (nor->flags & SNOR_F_USE_CLSR &&
+	    nor->bouncebuf[0] & (SR_E_ERR | SR_P_ERR)) {
+		if (nor->bouncebuf[0] & SR_E_ERR)
 			dev_err(nor->dev, "Erase Error occurred\n");
 		else
 			dev_err(nor->dev, "Programming Error occurred\n");
@@ -682,7 +685,7 @@ static int spi_nor_sr_ready(struct spi_nor *nor)
 		return -EIO;
 	}
 
-	return !(sr & SR_WIP);
+	return !(nor->bouncebuf[0] & SR_WIP);
 }
 
 static int spi_nor_clear_fsr(struct spi_nor *nor)
@@ -831,11 +834,11 @@ static int spi_nor_write_sr_and_check(struct spi_nor *nor, u8 status_new,
 	if (ret)
 		return ret;
 
-	ret = spi_nor_read_sr(nor);
-	if (ret < 0)
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+	if (ret)
 		return ret;
 
-	return ((ret & mask) != (status_new & mask)) ? -EIO : 0;
+	return ((nor->bouncebuf[0] & mask) != (status_new & mask)) ? -EIO : 0;
 }
 
 static int spi_nor_write_sr2(struct spi_nor *nor, u8 *sr2)
@@ -1510,16 +1513,18 @@ static int stm_is_unlocked_sr(struct spi_nor *nor, loff_t ofs, uint64_t len,
 static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 {
 	struct mtd_info *mtd = &nor->mtd;
-	int status_old, status_new;
+	int ret, status_old, status_new;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
 	u8 shift = ffs(mask) - 1, pow, val;
 	loff_t lock_len;
 	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
 	bool use_top;
 
-	status_old = spi_nor_read_sr(nor);
-	if (status_old < 0)
-		return status_old;
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+	if (ret)
+		return ret;
+
+	status_old = nor->bouncebuf[0];
 
 	/* If nothing in our range is unlocked, we don't need to do anything */
 	if (stm_is_locked_sr(nor, ofs, len, status_old))
@@ -1590,16 +1595,18 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 {
 	struct mtd_info *mtd = &nor->mtd;
-	int status_old, status_new;
+	int ret, status_old, status_new;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
 	u8 shift = ffs(mask) - 1, pow, val;
 	loff_t lock_len;
 	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
 	bool use_top;
 
-	status_old = spi_nor_read_sr(nor);
-	if (status_old < 0)
-		return status_old;
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+	if (ret)
+		return ret;
+
+	status_old = nor->bouncebuf[0];
 
 	/* If nothing in our range is locked, we don't need to do anything */
 	if (stm_is_unlocked_sr(nor, ofs, len, status_old))
@@ -1674,13 +1681,13 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
  */
 static int stm_is_locked(struct spi_nor *nor, loff_t ofs, uint64_t len)
 {
-	int status;
+	int ret;
 
-	status = spi_nor_read_sr(nor);
-	if (status < 0)
-		return status;
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+	if (ret)
+		return ret;
 
-	return stm_is_locked_sr(nor, ofs, len, status);
+	return stm_is_locked_sr(nor, ofs, len, nor->bouncebuf[0]);
 }
 
 static const struct spi_nor_locking_ops stm_locking_ops = {
@@ -1746,24 +1753,28 @@ static int spi_nor_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
  */
 static int macronix_quad_enable(struct spi_nor *nor)
 {
-	int ret, val;
+	int ret;
+
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+	if (ret)
+		return ret;
 
-	val = spi_nor_read_sr(nor);
-	if (val < 0)
-		return val;
-	if (val & SR_QUAD_EN_MX)
+	if (nor->bouncebuf[0] & SR_QUAD_EN_MX)
 		return 0;
 
 	spi_nor_write_enable(nor);
 
-	spi_nor_write_sr(nor, val | SR_QUAD_EN_MX);
+	spi_nor_write_sr(nor, nor->bouncebuf[0] | SR_QUAD_EN_MX);
 
 	ret = spi_nor_wait_till_ready(nor);
 	if (ret)
 		return ret;
 
-	ret = spi_nor_read_sr(nor);
-	if (!(ret > 0 && (ret & SR_QUAD_EN_MX))) {
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+	if (ret)
+		return ret;
+
+	if (!(nor->bouncebuf[0] & SR_QUAD_EN_MX)) {
 		dev_err(nor->dev, "Macronix Quad bit not set\n");
 		return -EINVAL;
 	}
@@ -1835,12 +1846,12 @@ static int spansion_no_read_cr_quad_enable(struct spi_nor *nor)
 	int ret;
 
 	/* Keep the current value of the Status Register. */
-	ret = spi_nor_read_sr(nor);
-	if (ret < 0) {
+	ret = spi_nor_read_sr(nor, &sr_cr[0]);
+	if (ret) {
 		dev_err(nor->dev, "error while reading status register\n");
 		return ret;
 	}
-	sr_cr[0] = ret;
+
 	sr_cr[1] = CR_QUAD_EN_SPAN;
 
 	return spi_nor_write_sr_cr(nor, sr_cr);
@@ -1878,12 +1889,11 @@ static int spansion_read_cr_quad_enable(struct spi_nor *nor)
 	sr_cr[1] = ret | CR_QUAD_EN_SPAN;
 
 	/* Keep the current value of the Status Register. */
-	ret = spi_nor_read_sr(nor);
-	if (ret < 0) {
+	ret = spi_nor_read_sr(nor, &sr_cr[0]);
+	if (ret) {
 		dev_err(dev, "error while reading status register\n");
 		return ret;
 	}
-	sr_cr[0] = ret;
 
 	ret = spi_nor_write_sr_cr(nor, sr_cr);
 	if (ret)
@@ -1967,15 +1977,15 @@ static int spi_nor_clear_sr_bp(struct spi_nor *nor)
 	int ret;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
 
-	ret = spi_nor_read_sr(nor);
-	if (ret < 0) {
+	ret = spi_nor_read_sr(nor, &nor->bouncebuf[0]);
+	if (ret) {
 		dev_err(nor->dev, "error while reading status register\n");
 		return ret;
 	}
 
 	spi_nor_write_enable(nor);
 
-	ret = spi_nor_write_sr(nor, ret & ~mask);
+	ret = spi_nor_write_sr(nor, nor->bouncebuf[0] & ~mask);
 	if (ret) {
 		dev_err(nor->dev, "write to status register failed\n");
 		return ret;
@@ -2021,13 +2031,14 @@ static int spi_nor_spansion_clear_sr_bp(struct spi_nor *nor)
 	if (ret & CR_QUAD_EN_SPAN) {
 		sr_cr[1] = ret;
 
-		ret = spi_nor_read_sr(nor);
-		if (ret < 0) {
+		ret = spi_nor_read_sr(nor, &sr_cr[0]);
+		if (ret) {
 			dev_err(nor->dev,
 				"error while reading status register\n");
 			return ret;
 		}
-		sr_cr[0] = ret & ~mask;
+
+		sr_cr[0] &= ~mask;
 
 		ret = spi_nor_write_sr_cr(nor, sr_cr);
 		if (ret)
-- 
2.9.5


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
