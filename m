Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EEB4193290
	for <lists+linux-mtd@lfdr.de>; Wed, 25 Mar 2020 22:21:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AWYnw9ilEPbYen5WbFWkVi0i7Zit7LXTEjbffpiFUss=; b=Y/GEFSjLwDjChH
	BAPv4wPAzOa7VKB5MT54HlaCtU5aIzfomV6eDHH1W6t12qbvba3l9L0IIXs/tWTk3biUa/cQLSZRO
	yN+jPO4qlgft212vnE5qzHLL204ZsrbhZIYPKwEp8KPhkmuPcwtQu6rBkLv2tG3R0Y1UvjtbtlvMV
	x+o0kr202kLZ+R+K0QmfJ5uf+CCX0jSzC0InYtjH3jhEgli4PBSK17DE7Tx2datE5Gln6y4ZGcbvX
	jxWBv7ANlkFkkICgk05gVrfF4Xas5p82kEg6TgIShB52B8VwShLarTjVVQ6c902SlX3uwIy4jvBtn
	3X2DVJq7ECgKemq57XwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHDSx-00022z-5n; Wed, 25 Mar 2020 21:21:35 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHDSj-000228-KI
 for linux-mtd@lists.infradead.org; Wed, 25 Mar 2020 21:21:24 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 9A706200006;
 Wed, 25 Mar 2020 21:21:16 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2] mtd: Convert fallthrough comments into statements
Date: Wed, 25 Mar 2020 22:21:15 +0100
Message-Id: <20200325212115.14170-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_142121_939719_BB5C56E1 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Use Joe Perches cvt_fallthrough.pl script to convert

	/* fallthrough */

comments (and its derivatives) into a

	fallthrough;

statement. This automatically drops useless ones.

Do it MTD-wide.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
Acked-by: Vignesh Raghavendra <vigneshr@ti.com>
Acked-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---

Changes in v2:
* Acks from Vignesh and Tudor.
* Rebased on top of spi-nor/for-5.7 tag (merged into mtd/next).
* Fixed a typo in the commit message.
* Enhanced the commit message.

 drivers/mtd/chips/cfi_cmdset_0001.c             |  4 ++--
 drivers/mtd/chips/cfi_cmdset_0002.c             |  5 ++---
 drivers/mtd/chips/cfi_cmdset_0020.c             | 17 ++++++-----------
 drivers/mtd/chips/cfi_util.c                    | 12 ++++++------
 drivers/mtd/devices/block2mtd.c                 |  4 ++--
 drivers/mtd/devices/phram.c                     |  4 ++--
 drivers/mtd/lpddr/lpddr_cmds.c                  |  3 +--
 drivers/mtd/maps/sa1100-flash.c                 |  3 +--
 drivers/mtd/nand/onenand/onenand_base.c         |  2 +-
 drivers/mtd/nand/raw/diskonchip.c               |  2 +-
 drivers/mtd/nand/raw/fsl_elbc_nand.c            |  3 +--
 drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c |  2 +-
 drivers/mtd/nand/raw/ingenic/jz4725b_bch.c      |  4 ++--
 drivers/mtd/nand/raw/ingenic/jz4780_bch.c       |  4 ++--
 drivers/mtd/nand/raw/nand_base.c                |  9 +++------
 drivers/mtd/nand/raw/nand_legacy.c              |  6 ++----
 drivers/mtd/nand/raw/nandsim.c                  |  4 ++--
 drivers/mtd/nand/raw/omap_elm.c                 |  8 ++++----
 drivers/mtd/spi-nor/controllers/aspeed-smc.c    |  2 +-
 drivers/mtd/spi-nor/sfdp.c                      |  1 -
 drivers/mtd/ubi/attach.c                        |  2 +-
 drivers/mtd/ubi/build.c                         |  4 ++--
 22 files changed, 45 insertions(+), 60 deletions(-)

diff --git a/drivers/mtd/chips/cfi_cmdset_0001.c b/drivers/mtd/chips/cfi_cmdset_0001.c
index 00a79489067c..142c0f9485fe 100644
--- a/drivers/mtd/chips/cfi_cmdset_0001.c
+++ b/drivers/mtd/chips/cfi_cmdset_0001.c
@@ -834,7 +834,7 @@ static int chip_ready (struct map_info *map, struct flchip *chip, unsigned long
 			/* Someone else might have been playing with it. */
 			return -EAGAIN;
 		}
-		/* Fall through */
+		fallthrough;
 	case FL_READY:
 	case FL_CFI_QUERY:
 	case FL_JEDEC_QUERY:
@@ -907,7 +907,7 @@ static int chip_ready (struct map_info *map, struct flchip *chip, unsigned long
 		/* Only if there's no operation suspended... */
 		if (mode == FL_READY && chip->oldstate == FL_READY)
 			return 0;
-		/* Fall through */
+		fallthrough;
 	default:
 	sleep:
 		set_current_state(TASK_UNINTERRUPTIBLE);
diff --git a/drivers/mtd/chips/cfi_cmdset_0002.c b/drivers/mtd/chips/cfi_cmdset_0002.c
index 04b383bc3947..a1f3e1031c3d 100644
--- a/drivers/mtd/chips/cfi_cmdset_0002.c
+++ b/drivers/mtd/chips/cfi_cmdset_0002.c
@@ -966,8 +966,7 @@ static int get_chip(struct map_info *map, struct flchip *chip, unsigned long adr
 		/* Only if there's no operation suspended... */
 		if (mode == FL_READY && chip->oldstate == FL_READY)
 			return 0;
-		/* fall through */
-
+		fallthrough;
 	default:
 	sleep:
 		set_current_state(TASK_UNINTERRUPTIBLE);
@@ -2935,7 +2934,7 @@ static void cfi_amdstd_sync (struct mtd_info *mtd)
 			 * as the whole point is that nobody can do anything
 			 * with the chip now anyway.
 			 */
-			/* fall through */
+			fallthrough;
 		case FL_SYNCING:
 			mutex_unlock(&chip->mutex);
 			break;
diff --git a/drivers/mtd/chips/cfi_cmdset_0020.c b/drivers/mtd/chips/cfi_cmdset_0020.c
index 54edae63b92d..270322bca221 100644
--- a/drivers/mtd/chips/cfi_cmdset_0020.c
+++ b/drivers/mtd/chips/cfi_cmdset_0020.c
@@ -324,8 +324,7 @@ static inline int do_read_onechip(struct map_info *map, struct flchip *chip, lof
 	case FL_JEDEC_QUERY:
 		map_write(map, CMD(0x70), cmd_addr);
 		chip->state = FL_STATUS;
-		/* Fall through */
-
+		fallthrough;
 	case FL_STATUS:
 		status = map_read(map, cmd_addr);
 		if (map_word_andequal(map, status, status_OK, status_OK)) {
@@ -462,8 +461,7 @@ static int do_write_buffer(struct map_info *map, struct flchip *chip,
 #ifdef DEBUG_CFI_FEATURES
 	printk("%s: 1 status[%x]\n", __func__, map_read(map, cmd_adr));
 #endif
-		/* Fall through */
-
+		fallthrough;
 	case FL_STATUS:
 		status = map_read(map, cmd_adr);
 		if (map_word_andequal(map, status, status_OK, status_OK))
@@ -756,8 +754,7 @@ static inline int do_erase_oneblock(struct map_info *map, struct flchip *chip, u
 	case FL_READY:
 		map_write(map, CMD(0x70), adr);
 		chip->state = FL_STATUS;
-		/* Fall through */
-
+		fallthrough;
 	case FL_STATUS:
 		status = map_read(map, adr);
 		if (map_word_andequal(map, status, status_OK, status_OK))
@@ -998,7 +995,7 @@ static void cfi_staa_sync (struct mtd_info *mtd)
 			 * as the whole point is that nobody can do anything
 			 * with the chip now anyway.
 			 */
-			/* Fall through */
+			fallthrough;
 		case FL_SYNCING:
 			mutex_unlock(&chip->mutex);
 			break;
@@ -1054,8 +1051,7 @@ static inline int do_lock_oneblock(struct map_info *map, struct flchip *chip, un
 	case FL_READY:
 		map_write(map, CMD(0x70), adr);
 		chip->state = FL_STATUS;
-		/* Fall through */
-
+		fallthrough;
 	case FL_STATUS:
 		status = map_read(map, adr);
 		if (map_word_andequal(map, status, status_OK, status_OK))
@@ -1201,8 +1197,7 @@ static inline int do_unlock_oneblock(struct map_info *map, struct flchip *chip,
 	case FL_READY:
 		map_write(map, CMD(0x70), adr);
 		chip->state = FL_STATUS;
-		/* Fall through */
-
+		fallthrough;
 	case FL_STATUS:
 		status = map_read(map, adr);
 		if (map_word_andequal(map, status, status_OK, status_OK))
diff --git a/drivers/mtd/chips/cfi_util.c b/drivers/mtd/chips/cfi_util.c
index e2d4db05aeb3..99b7986002f0 100644
--- a/drivers/mtd/chips/cfi_util.c
+++ b/drivers/mtd/chips/cfi_util.c
@@ -109,13 +109,13 @@ map_word cfi_build_cmd(u_long cmd, struct map_info *map, struct cfi_private *cfi
 	case 8:
 		onecmd |= (onecmd << (chip_mode * 32));
 #endif
-		/* fall through */
+		fallthrough;
 	case 4:
 		onecmd |= (onecmd << (chip_mode * 16));
-		/* fall through */
+		fallthrough;
 	case 2:
 		onecmd |= (onecmd << (chip_mode * 8));
-		/* fall through */
+		fallthrough;
 	case 1:
 		;
 	}
@@ -165,13 +165,13 @@ unsigned long cfi_merge_status(map_word val, struct map_info *map,
 	case 8:
 		res |= (onestat >> (chip_mode * 32));
 #endif
-		/* fall through */
+		fallthrough;
 	case 4:
 		res |= (onestat >> (chip_mode * 16));
-		/* fall through */
+		fallthrough;
 	case 2:
 		res |= (onestat >> (chip_mode * 8));
-		/* fall through */
+		fallthrough;
 	case 1:
 		;
 	}
diff --git a/drivers/mtd/devices/block2mtd.c b/drivers/mtd/devices/block2mtd.c
index 36aa082f6db0..c08721b11642 100644
--- a/drivers/mtd/devices/block2mtd.c
+++ b/drivers/mtd/devices/block2mtd.c
@@ -329,10 +329,10 @@ static int ustrtoul(const char *cp, char **endp, unsigned int base)
 	switch (**endp) {
 	case 'G' :
 		result *= 1024;
-		/* fall through */
+		fallthrough;
 	case 'M':
 		result *= 1024;
-		/* fall through */
+		fallthrough;
 	case 'K':
 	case 'k':
 		result *= 1024;
diff --git a/drivers/mtd/devices/phram.c b/drivers/mtd/devices/phram.c
index b50ec7ecd10c..087b5e86d1bf 100644
--- a/drivers/mtd/devices/phram.c
+++ b/drivers/mtd/devices/phram.c
@@ -148,10 +148,10 @@ static int parse_num64(uint64_t *num64, char *token)
 			switch (token[len - 2]) {
 			case 'G':
 				shift += 10;
-				/* fall through */
+				fallthrough;
 			case 'M':
 				shift += 10;
-				/* fall through */
+				fallthrough;
 			case 'k':
 				shift += 10;
 				token[len - 2] = 0;
diff --git a/drivers/mtd/lpddr/lpddr_cmds.c b/drivers/mtd/lpddr/lpddr_cmds.c
index 9341a8a592e8..fb1cbc9a2870 100644
--- a/drivers/mtd/lpddr/lpddr_cmds.c
+++ b/drivers/mtd/lpddr/lpddr_cmds.c
@@ -304,8 +304,7 @@ static int chip_ready(struct map_info *map, struct flchip *chip, int mode)
 		/* Only if there's no operation suspended... */
 		if (mode == FL_READY && chip->oldstate == FL_READY)
 			return 0;
-		/* fall through */
-
+		fallthrough;
 	default:
 sleep:
 		set_current_state(TASK_UNINTERRUPTIBLE);
diff --git a/drivers/mtd/maps/sa1100-flash.c b/drivers/mtd/maps/sa1100-flash.c
index bb1ef650ffd2..d3d4e987c163 100644
--- a/drivers/mtd/maps/sa1100-flash.c
+++ b/drivers/mtd/maps/sa1100-flash.c
@@ -81,8 +81,7 @@ static int sa1100_probe_subdev(struct sa_subdev_info *subdev, struct resource *r
 	default:
 		printk(KERN_WARNING "SA1100 flash: unknown base address "
 		       "0x%08lx, assuming CS0\n", phys);
-		/* Fall through */
-
+		fallthrough;
 	case SA1100_CS0_PHYS:
 		subdev->map.bankwidth = (MSC0 & MSC_RBW) ? 2 : 4;
 		break;
diff --git a/drivers/mtd/nand/onenand/onenand_base.c b/drivers/mtd/nand/onenand/onenand_base.c
index d5326d19b136..ec18ade33262 100644
--- a/drivers/mtd/nand/onenand/onenand_base.c
+++ b/drivers/mtd/nand/onenand/onenand_base.c
@@ -3259,7 +3259,7 @@ static void onenand_check_features(struct mtd_info *mtd)
 	switch (density) {
 	case ONENAND_DEVICE_DENSITY_8Gb:
 		this->options |= ONENAND_HAS_NOP_1;
-		/* fall through */
+		fallthrough;
 	case ONENAND_DEVICE_DENSITY_4Gb:
 		if (ONENAND_IS_DDP(this))
 			this->options |= ONENAND_HAS_2PLANE;
diff --git a/drivers/mtd/nand/raw/diskonchip.c b/drivers/mtd/nand/raw/diskonchip.c
index 2833c49c1378..c2a391ad2c35 100644
--- a/drivers/mtd/nand/raw/diskonchip.c
+++ b/drivers/mtd/nand/raw/diskonchip.c
@@ -1482,7 +1482,7 @@ static int __init doc_probe(unsigned long physadr)
 			break;
 		case DOC_ChipID_DocMilPlus32:
 			pr_err("DiskOnChip Millennium Plus 32MB is not supported, ignoring.\n");
-			/* fall through */
+			fallthrough;
 		default:
 			ret = -ENODEV;
 			goto notfound;
diff --git a/drivers/mtd/nand/raw/fsl_elbc_nand.c b/drivers/mtd/nand/raw/fsl_elbc_nand.c
index 634c550db13a..e1dc675b12bb 100644
--- a/drivers/mtd/nand/raw/fsl_elbc_nand.c
+++ b/drivers/mtd/nand/raw/fsl_elbc_nand.c
@@ -324,8 +324,7 @@ static void fsl_elbc_cmdfunc(struct nand_chip *chip, unsigned int command,
 	/* READ0 and READ1 read the entire buffer to use hardware ECC. */
 	case NAND_CMD_READ1:
 		column += 256;
-
-	/* fall-through */
+		fallthrough;
 	case NAND_CMD_READ0:
 		dev_dbg(priv->dev,
 		        "fsl_elbc_cmdfunc: NAND_CMD_READ0, page_addr:"
diff --git a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
index 49afebee50db..935c4902ada7 100644
--- a/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
+++ b/drivers/mtd/nand/raw/ingenic/ingenic_nand_drv.c
@@ -253,7 +253,7 @@ static int ingenic_nand_attach_chip(struct nand_chip *chip)
 		chip->ecc.hwctl = ingenic_nand_ecc_hwctl;
 		chip->ecc.calculate = ingenic_nand_ecc_calculate;
 		chip->ecc.correct = ingenic_nand_ecc_correct;
-		/* fall through */
+		fallthrough;
 	case NAND_ECC_SOFT:
 		dev_info(nfc->dev, "using %s (strength %d, size %d, bytes %d)\n",
 			 (nfc->ecc) ? "hardware ECC" : "software ECC",
diff --git a/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c b/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c
index 6c852eae09cf..2d0e0a2192ae 100644
--- a/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c
+++ b/drivers/mtd/nand/raw/ingenic/jz4725b_bch.c
@@ -145,10 +145,10 @@ static void jz4725b_bch_read_parity(struct ingenic_ecc *bch, u8 *buf,
 	switch (size8) {
 	case 3:
 		dest8[2] = (val >> 16) & 0xff;
-		/* fall-through */
+		fallthrough;
 	case 2:
 		dest8[1] = (val >> 8) & 0xff;
-		/* fall-through */
+		fallthrough;
 	case 1:
 		dest8[0] = val & 0xff;
 		break;
diff --git a/drivers/mtd/nand/raw/ingenic/jz4780_bch.c b/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
index 079266a0d6cf..d67dbfff76cc 100644
--- a/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
+++ b/drivers/mtd/nand/raw/ingenic/jz4780_bch.c
@@ -123,10 +123,10 @@ static void jz4780_bch_read_parity(struct ingenic_ecc *bch, void *buf,
 	switch (size8) {
 	case 3:
 		dest8[2] = (val >> 16) & 0xff;
-		/* fall through */
+		fallthrough;
 	case 2:
 		dest8[1] = (val >> 8) & 0xff;
-		/* fall through */
+		fallthrough;
 	case 1:
 		dest8[0] = val & 0xff;
 		break;
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index f64e3b6605c6..a81e556c9fad 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5591,8 +5591,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 		}
 		if (!ecc->read_page)
 			ecc->read_page = nand_read_page_hwecc_oob_first;
-		/* fall through */
-
+		fallthrough;
 	case NAND_ECC_HW:
 		/* Use standard hwecc read page function? */
 		if (!ecc->read_page)
@@ -5611,8 +5610,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			ecc->read_subpage = nand_read_subpage;
 		if (!ecc->write_subpage && ecc->hwctl && ecc->calculate)
 			ecc->write_subpage = nand_write_subpage_hwecc;
-		/* fall through */
-
+		fallthrough;
 	case NAND_ECC_HW_SYNDROME:
 		if ((!ecc->calculate || !ecc->correct || !ecc->hwctl) &&
 		    (!ecc->read_page ||
@@ -5649,8 +5647,7 @@ static int nand_scan_tail(struct nand_chip *chip)
 			ecc->size, mtd->writesize);
 		ecc->mode = NAND_ECC_SOFT;
 		ecc->algo = NAND_ECC_HAMMING;
-		/* fall through */
-
+		fallthrough;
 	case NAND_ECC_SOFT:
 		ret = nand_set_ecc_soft_ops(chip);
 		if (ret) {
diff --git a/drivers/mtd/nand/raw/nand_legacy.c b/drivers/mtd/nand/raw/nand_legacy.c
index f2526ec616a6..f91e92e1b972 100644
--- a/drivers/mtd/nand/raw/nand_legacy.c
+++ b/drivers/mtd/nand/raw/nand_legacy.c
@@ -331,8 +331,7 @@ static void nand_command(struct nand_chip *chip, unsigned int command,
 		 */
 		if (column == -1 && page_addr == -1)
 			return;
-		/* fall through */
-
+		fallthrough;
 	default:
 		/*
 		 * If we don't have access to the busy pin, we apply the given
@@ -483,8 +482,7 @@ static void nand_command_lp(struct nand_chip *chip, unsigned int command,
 				      NAND_NCE | NAND_CLE | NAND_CTRL_CHANGE);
 		chip->legacy.cmd_ctrl(chip, NAND_CMD_NONE,
 				      NAND_NCE | NAND_CTRL_CHANGE);
-
-		/* fall through - This applies to read commands */
+		fallthrough;	/* This applies to read commands */
 	default:
 		/*
 		 * If we don't have access to the busy pin, we apply the given
diff --git a/drivers/mtd/nand/raw/nandsim.c b/drivers/mtd/nand/raw/nandsim.c
index 9a70754a61ef..1de03bb34e84 100644
--- a/drivers/mtd/nand/raw/nandsim.c
+++ b/drivers/mtd/nand/raw/nandsim.c
@@ -2251,10 +2251,10 @@ static int __init ns_init_module(void)
 	switch (bbt) {
 	case 2:
 		chip->bbt_options |= NAND_BBT_NO_OOB;
-		/* fall through */
+		fallthrough;
 	case 1:
 		chip->bbt_options |= NAND_BBT_USE_FLASH;
-		/* fall through */
+		fallthrough;
 	case 0:
 		break;
 	default:
diff --git a/drivers/mtd/nand/raw/omap_elm.c b/drivers/mtd/nand/raw/omap_elm.c
index 5502ffbdd1e6..3fa0e2cbbe53 100644
--- a/drivers/mtd/nand/raw/omap_elm.c
+++ b/drivers/mtd/nand/raw/omap_elm.c
@@ -455,13 +455,13 @@ static int elm_context_save(struct elm_info *info)
 					ELM_SYNDROME_FRAGMENT_5 + offset);
 			regs->elm_syndrome_fragment_4[i] = elm_read_reg(info,
 					ELM_SYNDROME_FRAGMENT_4 + offset);
-			/* fall through */
+			fallthrough;
 		case BCH8_ECC:
 			regs->elm_syndrome_fragment_3[i] = elm_read_reg(info,
 					ELM_SYNDROME_FRAGMENT_3 + offset);
 			regs->elm_syndrome_fragment_2[i] = elm_read_reg(info,
 					ELM_SYNDROME_FRAGMENT_2 + offset);
-			/* fall through */
+			fallthrough;
 		case BCH4_ECC:
 			regs->elm_syndrome_fragment_1[i] = elm_read_reg(info,
 					ELM_SYNDROME_FRAGMENT_1 + offset);
@@ -503,13 +503,13 @@ static int elm_context_restore(struct elm_info *info)
 					regs->elm_syndrome_fragment_5[i]);
 			elm_write_reg(info, ELM_SYNDROME_FRAGMENT_4 + offset,
 					regs->elm_syndrome_fragment_4[i]);
-			/* fall through */
+			fallthrough;
 		case BCH8_ECC:
 			elm_write_reg(info, ELM_SYNDROME_FRAGMENT_3 + offset,
 					regs->elm_syndrome_fragment_3[i]);
 			elm_write_reg(info, ELM_SYNDROME_FRAGMENT_2 + offset,
 					regs->elm_syndrome_fragment_2[i]);
-			/* fall through */
+			fallthrough;
 		case BCH4_ECC:
 			elm_write_reg(info, ELM_SYNDROME_FRAGMENT_1 + offset,
 					regs->elm_syndrome_fragment_1[i]);
diff --git a/drivers/mtd/spi-nor/controllers/aspeed-smc.c b/drivers/mtd/spi-nor/controllers/aspeed-smc.c
index e26a1897db0e..ae85e4c0e114 100644
--- a/drivers/mtd/spi-nor/controllers/aspeed-smc.c
+++ b/drivers/mtd/spi-nor/controllers/aspeed-smc.c
@@ -354,7 +354,7 @@ static void aspeed_smc_send_cmd_addr(struct spi_nor *nor, u8 cmd, u32 addr)
 	default:
 		WARN_ONCE(1, "Unexpected address width %u, defaulting to 3\n",
 			  nor->addr_width);
-		/* FALLTHROUGH */
+		fallthrough;
 	case 3:
 		cmdaddr = addr & 0xFFFFFF;
 		cmdaddr |= cmd << 24;
diff --git a/drivers/mtd/spi-nor/sfdp.c b/drivers/mtd/spi-nor/sfdp.c
index df967f1f4951..f6038d3a3684 100644
--- a/drivers/mtd/spi-nor/sfdp.c
+++ b/drivers/mtd/spi-nor/sfdp.c
@@ -623,7 +623,6 @@ static u8 spi_nor_smpt_addr_width(const struct spi_nor *nor, const u32 settings)
 	case SMPT_CMD_ADDRESS_LEN_4:
 		return 4;
 	case SMPT_CMD_ADDRESS_LEN_USE_CURRENT:
-		/* fall through */
 	default:
 		return nor->addr_width;
 	}
diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index ea7440ac913b..ae5abe492b52 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -1059,7 +1059,7 @@ static int scan_peb(struct ubi_device *ubi, struct ubi_attach_info *ai,
 			 * be a result of power cut during erasure.
 			 */
 			ai->maybe_bad_peb_count += 1;
-		/* fall through */
+		fallthrough;
 	case UBI_IO_BAD_HDR:
 			/*
 			 * If we're facing a bad VID header we have to drop *all*
diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 2f93c25bbaee..12c02342149c 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -1342,10 +1342,10 @@ static int bytes_str_to_int(const char *str)
 	switch (*endp) {
 	case 'G':
 		result *= 1024;
-		/* fall through */
+		fallthrough;
 	case 'M':
 		result *= 1024;
-		/* fall through */
+		fallthrough;
 	case 'K':
 		result *= 1024;
 		if (endp[1] == 'i' && endp[2] == 'B')
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
