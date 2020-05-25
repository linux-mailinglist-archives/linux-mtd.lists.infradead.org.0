Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CD81E1106
	for <lists+linux-mtd@lfdr.de>; Mon, 25 May 2020 16:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJoB9sRYe0XhBnodCwcWhFnMYZ6wG9ggOIwQYa3xS1Y=; b=ondJZpdOwsqA3o
	4yjSid1+DtOQj7fLHcS2TggN/2GYZbIu0thmC3htg+clhP9C/90PUUAaLXvDs4SsaGuL0sNOrD/h/
	KYnN8kFdmc+gILZ4NYDNilCSIh6hDfETqhTTjkvgn1wQ/32ePR25eqMk7HNmGJugcWOdmFsDR7E2m
	BYWTSDn+psLi68Lxtg7Zg6zpKKj2iuYdUTTf+afH2UUThf/LJknefZnZiPTEKs3I7nF1MhMYzaiPj
	FMPbq/Rhx56gfbJC0kloIx1Uzbl65bDd7FxU5V2OfZZPedfFDSwb1+cDryXr77lsmVVP+LoDRK1UX
	dJw3G7p7Cbj/gMGMApsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdESb-0001CF-22; Mon, 25 May 2020 14:52:13 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdESH-00014c-FX
 for linux-mtd@lists.infradead.org; Mon, 25 May 2020 14:51:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=3433; q=dns/txt; s=axis-central1;
 t=1590418313; x=1621954313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=NWo4hNWQ1Zmi6ZYeN+iZd74zaTr5XBo3LdSMQTED/mQ=;
 b=bSlYt3GNmgC+xdml1c9WHSYQAuLlROLVnRWKaN/psW9EBuyacc46bWbc
 Ngd08TVKpaMatRz0vZwLqaffa7FIm5pnKYzIUDdF0FZXOnbqqkmUe5dCZ
 dZovQoGbkJQgHCG8dNIrXQGQ6fhyRWs2jH6h8hgOlAjUUryJsMrHCDZ08
 I7tqijiQ2h7bPXEr5OV5SezRIj4eDm2r67j0IwdaxVhxu3saWQ6b6J1tB
 ICkPZbAYo5EhYhp/DeNdgAl881aNIBdWl9eKS4cucbJqLfNibR1UeENA+
 5JMKXuNrE81JTDG4V+0xbqXdvpxvKG03CzclzF+yed8TR6nQEgAWfYjZI w==;
IronPort-SDR: Vrsx4tfN0Igr8J3v10crrfq78iRdk4HihVXz6IxsmblfXdITJ9frme78KOZRgdpvVCiMhUKvf5
 j1wrF5AE+miSfsnOnEYjF8XcLALa4yVUrgQsQgBytBEo/6SbPmqlc8kHHMg744+vMpTMVvV4+a
 x+Cu2BtXymGHMnZ+kRzEAU9j1syja9gAi27G6LUj7VxJRe4cBMKsrw4QMZ5V53QgyIVDd3RjlQ
 St7xkZT3tEiSSWMF7l0Z4qLuPYNk02Qh98ZuyzOGOMc6ySj4qTxkGCPiKfKd/f5hGiuyHceeqM
 wL8=
X-IronPort-AV: E=Sophos;i="5.73,433,1583190000"; 
   d="scan'208";a="9086798"
From: Rickard Andersson <rickaran@axis.com>
To: <miquel.raynal@bootlin.com>, <linux-mtd@lists.infradead.org>,
 <boris.brezillon@collabora.com>
Subject: [PATCH v3 2/2] mtd: rawnand: Add timings for Kioxia TH58NVG2S3HBAI4
Date: Mon, 25 May 2020 16:51:33 +0200
Message-ID: <20200525145133.8298-2-rickaran@axis.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200525145133.8298-1-rickaran@axis.com>
References: <20200525145133.8298-1-rickaran@axis.com>
MIME-Version: 1.0
X-Originating-IP: [10.0.5.60]
X-ClientProxiedBy: XBOX04.axis.com (10.0.5.18) To XBOX02.axis.com (10.0.5.16)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_075153_839906_1E831A7E 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: rickaran@axis.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Rickard x Andersson <rickaran@axis.com>

The Kioxia/Toshiba TH58NVG2S3HBAI4 NAND memory is not a
ONFI compliant memory. The timings of the memory is quite
close to ONFI mode 4 but is breaking that spec.

Erase block read speed is increased from 6910 KiB/s to
13490 KiB/s. Erase block write speed is increased from
3350 KiB/s to 4410 KiB/s.

Tested on IMX6SX which has a NAND controller supporting
EDO mode.

Signed-off-by: Rickard x Andersson <rickaran@axis.com>
---
 drivers/mtd/nand/raw/nand_ids.c     |  3 +++
 drivers/mtd/nand/raw/nand_toshiba.c | 44 +++++++++++++++++++++++++++++++++++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_ids.c b/drivers/mtd/nand/raw/nand_ids.c
index e0dbc2e316c7..8b676e8b481b 100644
--- a/drivers/mtd/nand/raw/nand_ids.c
+++ b/drivers/mtd/nand/raw/nand_ids.c
@@ -52,6 +52,9 @@ struct nand_flash_dev nand_flash_ids[] = {
 		{ .id = {0xad, 0xde, 0x94, 0xda, 0x74, 0xc4} },
 		  SZ_8K, SZ_8K, SZ_2M, NAND_NEED_SCRAMBLING, 6, 640,
 		  NAND_ECC_INFO(40, SZ_1K), 4 },
+	{"TH58NVG2S3HBAI4 4G 3.3V 8-bit",
+		{ .id = {0x98, 0xdc, 0x91, 0x15, 0x76} },
+		  SZ_2K, SZ_512, SZ_128K, 0, 5, 128, NAND_ECC_INFO(8, SZ_512) },
 
 	LEGACY_ID_NAND("NAND 4MiB 5V 8-bit",   0x6B, 4, SZ_8K, SP_OPTIONS),
 	LEGACY_ID_NAND("NAND 4MiB 3,3V 8-bit", 0xE3, 4, SZ_8K, SP_OPTIONS),
diff --git a/drivers/mtd/nand/raw/nand_toshiba.c b/drivers/mtd/nand/raw/nand_toshiba.c
index b6efaf5195bb..bea6bd1beece 100644
--- a/drivers/mtd/nand/raw/nand_toshiba.c
+++ b/drivers/mtd/nand/raw/nand_toshiba.c
@@ -194,6 +194,42 @@ static void toshiba_nand_decode_id(struct nand_chip *chip)
 	}
 }
 
+static int th58nvg2s3hbai4_choose_data_interface(struct nand_chip *chip)
+{
+	int ret;
+	struct nand_sdr_timings *timings = &chip->data_interface.timings.sdr;
+
+	/* Start with timings from the closest timing mode, mode 4. */
+	ret = onfi_fill_data_interface(chip, NAND_SDR_IFACE, 4);
+	if (ret)
+		return ret;
+
+	/* Patch timings that differ from mode 4. */
+	timings->tALS_min = 12000;
+	timings->tCHZ_max = 20000;
+	timings->tCLS_min = 12000;
+	timings->tCOH_min = 0;
+	timings->tDS_min = 12000;
+	timings->tRHOH_min = 25000;
+	timings->tRHW_min = 30000;
+	timings->tRHZ_max = 60000;
+	timings->tWHR_min = 60000;
+
+	/* Patch timings not part of onfi timing mode. */
+	timings->tPROG_max = 700000000;
+	timings->tBERS_max = 5000000000;
+
+	/*
+	 * Find the corresponding onfi timing mode that is safe to use. This
+	 * will only be used if the controller does not handle the specific
+	 * timings that were provided.
+	 */
+	chip->data_interface.timings.mode =
+		onfi_find_equivalent_sdr_mode(timings);
+
+	return ret;
+}
+
 static int tc58teg5dclta00_init(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
@@ -205,6 +241,12 @@ static int tc58teg5dclta00_init(struct nand_chip *chip)
 	return 0;
 }
 
+static int th58nvg2s3hbai4_init(struct nand_chip *chip)
+{
+	chip->ops.choose_data_interface = th58nvg2s3hbai4_choose_data_interface;
+	return 0;
+}
+
 static int toshiba_nand_init(struct nand_chip *chip)
 {
 	if (nand_is_slc(chip))
@@ -217,6 +259,8 @@ static int toshiba_nand_init(struct nand_chip *chip)
 
 	if (!strcmp("TC58TEG5DCLTA00", chip->parameters.model))
 		tc58teg5dclta00_init(chip);
+	if (!strncmp("TH58NVG2S3HBAI4", chip->parameters.model, 15))
+		th58nvg2s3hbai4_init(chip);
 
 	return 0;
 }
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
