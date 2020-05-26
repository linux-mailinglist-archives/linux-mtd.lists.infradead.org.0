Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F3C1C2DBA
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 17:55:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKfWGjNiHbzS7G3J2M5CXfb+ICVCMYoRcT2SDMR36ZQ=; b=H2qkFzp9CHxcTa
	//gjgPj5tB0HMnRa/lcAwBZUDSA9fJm0yFaevi202+YH7j+ostEQN6yuohINk+j0+xwSuHZWPOdsh
	AN2nVfOxip0PNWO5a+56lMFuqv9pJrwar0KE/Z9Ta3GTIwYt+YofMgQgqDiYfhiy5nD4lqbE6IxC7
	yo0pHZfbZ4WmB8us+bVvGZnrbFadOV7S9k8l9zu7rRNqdBgu+2HqnXhNQaprJIAzOQ4KFGnwO3UIF
	Kg+JDOLtWD0dc1aYxZ6K63Fz915IKVuqV2p0a3mOm34JsqL/hJgq91NV48Xn8Hq02hVmMT+ueQVxU
	wtOBoob164U3mVpcFacg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVGxm-00059s-NI; Sun, 03 May 2020 15:55:30 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVGwA-0002ei-QV
 for linux-mtd@lists.infradead.org; Sun, 03 May 2020 15:53:53 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 2AB8C24000B;
 Sun,  3 May 2020 15:53:48 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 <linux-mtd@lists.infradead.org>
Subject: [PATCH v2 4/8] mtd: Add support for emulated SLC mode on MLC NANDs
Date: Sun,  3 May 2020 17:53:37 +0200
Message-Id: <20200503155341.16712-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200503155341.16712-1-miquel.raynal@bootlin.com>
References: <20200503155341.16712-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_085351_134018_C188D18B 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Maxime Ripard <maxime@cerno.tech>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

MLC NANDs can be made a bit more reliable if we only program the lower
page of each pair. At least, this solves the paired-pages corruption
issue.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/mtdcore.c          | 189 ++++++++++++++++++++++++++++++---
 drivers/mtd/mtdpart.c          |  54 ++++++----
 include/linux/mtd/mtd.h        |   7 +-
 include/linux/mtd/partitions.h |   2 +
 include/uapi/mtd/mtd-abi.h     |   1 +
 5 files changed, 213 insertions(+), 40 deletions(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 2916674208b3..50437b4ffe76 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -617,6 +617,19 @@ int add_mtd_device(struct mtd_info *mtd)
 		    !(mtd->flags & MTD_NO_ERASE)))
 		return -EINVAL;
 
+	/*
+	 * MTD_SLC_ON_MLC_EMULATION can only be set on partitions, when the
+	 * master is an MLC NAND and has a proper pairing scheme defined.
+	 * We also reject masters that implement ->_writev() for now, because
+	 * NAND controller drivers don't implement this hook, and adding the
+	 * SLC -> MLC address/length conversion to this path is useless if we
+	 * don't have a user.
+	 */
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION &&
+	    (!mtd_is_partition(mtd) || master->type != MTD_MLCNANDFLASH ||
+	     !master->pairing || master->_writev))
+		return -EINVAL;
+
 	mutex_lock(&mtd_table_mutex);
 
 	i = idr_alloc(&mtd_idr, mtd, 0, 0, GFP_KERNEL);
@@ -632,6 +645,14 @@ int add_mtd_device(struct mtd_info *mtd)
 	if (mtd->bitflip_threshold == 0)
 		mtd->bitflip_threshold = mtd->ecc_strength;
 
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION) {
+		int ngroups = mtd_pairing_groups(master);
+
+		mtd->erasesize /= ngroups;
+		mtd->size = (u64)mtd_div_by_eb(mtd->size, master) *
+			    mtd->erasesize;
+	}
+
 	if (is_power_of_2(mtd->erasesize))
 		mtd->erasesize_shift = ffs(mtd->erasesize) - 1;
 	else
@@ -1074,9 +1095,11 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 {
 	struct mtd_info *master = mtd_get_master(mtd);
 	u64 mst_ofs = mtd_get_master_ofs(mtd, 0);
+	struct erase_info adjinstr;
 	int ret;
 
 	instr->fail_addr = MTD_FAIL_ADDR_UNKNOWN;
+	adjinstr = *instr;
 
 	if (!mtd->erasesize || !master->_erase)
 		return -ENOTSUPP;
@@ -1091,12 +1114,27 @@ int mtd_erase(struct mtd_info *mtd, struct erase_info *instr)
 
 	ledtrig_mtd_activity();
 
-	instr->addr += mst_ofs;
-	ret = master->_erase(master, instr);
-	if (instr->fail_addr != MTD_FAIL_ADDR_UNKNOWN)
-		instr->fail_addr -= mst_ofs;
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION) {
+		adjinstr.addr = (loff_t)mtd_div_by_eb(instr->addr, mtd) *
+				master->erasesize;
+		adjinstr.len = ((u64)mtd_div_by_eb(instr->addr + instr->len, mtd) *
+				master->erasesize) -
+			       adjinstr.addr;
+	}
+
+	adjinstr.addr += mst_ofs;
+
+	ret = master->_erase(master, &adjinstr);
+
+	if (adjinstr.fail_addr != MTD_FAIL_ADDR_UNKNOWN) {
+		instr->fail_addr = adjinstr.fail_addr - mst_ofs;
+		if (mtd->flags & MTD_SLC_ON_MLC_EMULATION) {
+			instr->fail_addr = mtd_div_by_eb(instr->fail_addr,
+							 master);
+			instr->fail_addr *= mtd->erasesize;
+		}
+	}
 
-	instr->addr -= mst_ofs;
 	return ret;
 }
 EXPORT_SYMBOL_GPL(mtd_erase);
@@ -1276,6 +1314,101 @@ static int mtd_check_oob_ops(struct mtd_info *mtd, loff_t offs,
 	return 0;
 }
 
+static int mtd_read_oob_std(struct mtd_info *mtd, loff_t from,
+			    struct mtd_oob_ops *ops)
+{
+	struct mtd_info *master = mtd_get_master(mtd);
+	int ret;
+
+	from = mtd_get_master_ofs(mtd, from);
+	if (master->_read_oob)
+		ret = master->_read_oob(master, from, ops);
+	else
+		ret = master->_read(master, from, ops->len, &ops->retlen,
+				    ops->datbuf);
+
+	return ret;
+}
+
+static int mtd_write_oob_std(struct mtd_info *mtd, loff_t to,
+			     struct mtd_oob_ops *ops)
+{
+	struct mtd_info *master = mtd_get_master(mtd);
+	int ret;
+
+	to = mtd_get_master_ofs(mtd, to);
+	if (master->_write_oob)
+		ret = master->_write_oob(master, to, ops);
+	else
+		ret = master->_write(master, to, ops->len, &ops->retlen,
+				     ops->datbuf);
+
+	return ret;
+}
+
+static int mtd_io_emulated_slc(struct mtd_info *mtd, loff_t start, bool read,
+			       struct mtd_oob_ops *ops)
+{
+	struct mtd_info *master = mtd_get_master(mtd);
+	int ngroups = mtd_pairing_groups(master);
+	int npairs = mtd_wunit_per_eb(master) / ngroups;
+	struct mtd_oob_ops adjops = *ops;
+	unsigned int wunit, oobavail;
+	struct mtd_pairing_info info;
+	int max_bitflips = 0;
+	u32 ebofs, pageofs;
+	loff_t base, pos;
+
+	ebofs = mtd_mod_by_eb(start, mtd);
+	base = (loff_t)mtd_div_by_eb(start, mtd) * master->erasesize;
+	info.group = 0;
+	info.pair = mtd_div_by_ws(ebofs, mtd);
+	pageofs = mtd_mod_by_ws(ebofs, mtd);
+	oobavail = mtd_oobavail(mtd, ops);
+
+	while (ops->retlen < ops->len || ops->oobretlen < ops->ooblen) {
+		int ret;
+
+		if (info.pair >= npairs) {
+			info.pair = 0;
+			base += master->erasesize;
+		}
+
+		wunit = mtd_pairing_info_to_wunit(master, &info);
+		pos = mtd_wunit_to_offset(mtd, base, wunit);
+
+		adjops.len = ops->len - ops->retlen;
+		if (adjops.len > mtd->writesize - pageofs)
+			adjops.len = mtd->writesize - pageofs;
+
+		adjops.ooblen = ops->ooblen - ops->oobretlen;
+		if (adjops.ooblen > oobavail - adjops.ooboffs)
+			adjops.ooblen = oobavail - adjops.ooboffs;
+
+		if (read) {
+			ret = mtd_read_oob_std(mtd, pos + pageofs, &adjops);
+			if (ret > 0)
+				max_bitflips = max(max_bitflips, ret);
+		} else {
+			ret = mtd_write_oob_std(mtd, pos + pageofs, &adjops);
+		}
+
+		if (ret < 0)
+			return ret;
+
+		max_bitflips = max(max_bitflips, ret);
+		ops->retlen += adjops.retlen;
+		ops->oobretlen += adjops.oobretlen;
+		adjops.datbuf += adjops.retlen;
+		adjops.oobbuf += adjops.oobretlen;
+		adjops.ooboffs = 0;
+		pageofs = 0;
+		info.pair++;
+	}
+
+	return max_bitflips;
+}
+
 int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
 {
 	struct mtd_info *master = mtd_get_master(mtd);
@@ -1294,12 +1427,10 @@ int mtd_read_oob(struct mtd_info *mtd, loff_t from, struct mtd_oob_ops *ops)
 	if (!master->_read_oob && (!master->_read || ops->oobbuf))
 		return -EOPNOTSUPP;
 
-	from = mtd_get_master_ofs(mtd, from);
-	if (master->_read_oob)
-		ret_code = master->_read_oob(master, from, ops);
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION)
+		ret_code = mtd_io_emulated_slc(mtd, from, true, ops);
 	else
-		ret_code = master->_read(master, from, ops->len, &ops->retlen,
-					 ops->datbuf);
+		ret_code = mtd_read_oob_std(mtd, from, ops);
 
 	mtd_update_ecc_stats(mtd, master, &old_stats);
 
@@ -1338,13 +1469,10 @@ int mtd_write_oob(struct mtd_info *mtd, loff_t to,
 	if (!master->_write_oob && (!master->_write || ops->oobbuf))
 		return -EOPNOTSUPP;
 
-	to = mtd_get_master_ofs(mtd, to);
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION)
+		return mtd_io_emulated_slc(mtd, to, false, ops);
 
-	if (master->_write_oob)
-		return master->_write_oob(master, to, ops);
-	else
-		return master->_write(master, to, ops->len, &ops->retlen,
-				      ops->datbuf);
+	return mtd_write_oob_std(mtd, to, ops);
 }
 EXPORT_SYMBOL_GPL(mtd_write_oob);
 
@@ -1817,6 +1945,12 @@ int mtd_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 		return -EINVAL;
 	if (!len)
 		return 0;
+
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION) {
+		ofs = (loff_t)mtd_div_by_eb(ofs, mtd) * master->erasesize;
+		len = (u64)mtd_div_by_eb(len, mtd) * master->erasesize;
+	}
+
 	return master->_lock(master, mtd_get_master_ofs(mtd, ofs), len);
 }
 EXPORT_SYMBOL_GPL(mtd_lock);
@@ -1831,6 +1965,12 @@ int mtd_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 		return -EINVAL;
 	if (!len)
 		return 0;
+
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION) {
+		ofs = (loff_t)mtd_div_by_eb(ofs, mtd) * master->erasesize;
+		len = (u64)mtd_div_by_eb(len, mtd) * master->erasesize;
+	}
+
 	return master->_unlock(master, mtd_get_master_ofs(mtd, ofs), len);
 }
 EXPORT_SYMBOL_GPL(mtd_unlock);
@@ -1845,6 +1985,12 @@ int mtd_is_locked(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 		return -EINVAL;
 	if (!len)
 		return 0;
+
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION) {
+		ofs = (loff_t)mtd_div_by_eb(ofs, mtd) * master->erasesize;
+		len = (u64)mtd_div_by_eb(len, mtd) * master->erasesize;
+	}
+
 	return master->_is_locked(master, mtd_get_master_ofs(mtd, ofs), len);
 }
 EXPORT_SYMBOL_GPL(mtd_is_locked);
@@ -1857,6 +2003,10 @@ int mtd_block_isreserved(struct mtd_info *mtd, loff_t ofs)
 		return -EINVAL;
 	if (!master->_block_isreserved)
 		return 0;
+
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION)
+		ofs = (loff_t)mtd_div_by_eb(ofs, mtd) * master->erasesize;
+
 	return master->_block_isreserved(master, mtd_get_master_ofs(mtd, ofs));
 }
 EXPORT_SYMBOL_GPL(mtd_block_isreserved);
@@ -1869,6 +2019,10 @@ int mtd_block_isbad(struct mtd_info *mtd, loff_t ofs)
 		return -EINVAL;
 	if (!master->_block_isbad)
 		return 0;
+
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION)
+		ofs = (loff_t)mtd_div_by_eb(ofs, mtd) * master->erasesize;
+
 	return master->_block_isbad(master, mtd_get_master_ofs(mtd, ofs));
 }
 EXPORT_SYMBOL_GPL(mtd_block_isbad);
@@ -1885,6 +2039,9 @@ int mtd_block_markbad(struct mtd_info *mtd, loff_t ofs)
 	if (!(mtd->flags & MTD_WRITEABLE))
 		return -EROFS;
 
+	if (mtd->flags & MTD_SLC_ON_MLC_EMULATION)
+		ofs = (loff_t)mtd_div_by_eb(ofs, mtd) * master->erasesize;
+
 	ret = master->_block_markbad(master, mtd_get_master_ofs(mtd, ofs));
 	if (ret)
 		return ret;
diff --git a/drivers/mtd/mtdpart.c b/drivers/mtd/mtdpart.c
index 3f6025684f58..c3575b686f79 100644
--- a/drivers/mtd/mtdpart.c
+++ b/drivers/mtd/mtdpart.c
@@ -35,9 +35,12 @@ static struct mtd_info *allocate_partition(struct mtd_info *parent,
 					   const struct mtd_partition *part,
 					   int partno, uint64_t cur_offset)
 {
-	int wr_alignment = (parent->flags & MTD_NO_ERASE) ? parent->writesize :
-							    parent->erasesize;
-	struct mtd_info *child, *master = mtd_get_master(parent);
+	struct mtd_info *master = mtd_get_master(parent);
+	int wr_alignment = (parent->flags & MTD_NO_ERASE) ?
+			   master->writesize : master->erasesize;
+	u64 parent_size = mtd_is_partition(parent) ?
+			  parent->part.size : parent->size;
+	struct mtd_info *child;
 	u32 remainder;
 	char *name;
 	u64 tmp;
@@ -56,8 +59,9 @@ static struct mtd_info *allocate_partition(struct mtd_info *parent,
 	/* set up the MTD object for this partition */
 	child->type = parent->type;
 	child->part.flags = parent->flags & ~part->mask_flags;
+	child->part.flags |= part->add_flags;
 	child->flags = child->part.flags;
-	child->size = part->size;
+	child->part.size = part->size;
 	child->writesize = parent->writesize;
 	child->writebufsize = parent->writebufsize;
 	child->oobsize = parent->oobsize;
@@ -98,29 +102,29 @@ static struct mtd_info *allocate_partition(struct mtd_info *parent,
 	}
 	if (child->part.offset == MTDPART_OFS_RETAIN) {
 		child->part.offset = cur_offset;
-		if (parent->size - child->part.offset >= child->size) {
-			child->size = parent->size - child->part.offset -
-				      child->size;
+		if (parent_size - child->part.offset >= child->part.size) {
+			child->part.size = parent_size - child->part.offset -
+					   child->part.size;
 		} else {
 			printk(KERN_ERR "mtd partition \"%s\" doesn't have enough space: %#llx < %#llx, disabled\n",
-				part->name, parent->size - child->part.offset,
-				child->size);
+				part->name, parent_size - child->part.offset,
+				child->part.size);
 			/* register to preserve ordering */
 			goto out_register;
 		}
 	}
-	if (child->size == MTDPART_SIZ_FULL)
-		child->size = parent->size - child->part.offset;
+	if (child->part.size == MTDPART_SIZ_FULL)
+		child->part.size = parent_size - child->part.offset;
 
 	printk(KERN_NOTICE "0x%012llx-0x%012llx : \"%s\"\n",
-	       child->part.offset, child->part.offset + child->size,
+	       child->part.offset, child->part.offset + child->part.size,
 	       child->name);
 
 	/* let's do some sanity checks */
-	if (child->part.offset >= parent->size) {
+	if (child->part.offset >= parent_size) {
 		/* let's register it anyway to preserve ordering */
 		child->part.offset = 0;
-		child->size = 0;
+		child->part.size = 0;
 
 		/* Initialize ->erasesize to make add_mtd_device() happy. */
 		child->erasesize = parent->erasesize;
@@ -128,15 +132,16 @@ static struct mtd_info *allocate_partition(struct mtd_info *parent,
 			part->name);
 		goto out_register;
 	}
-	if (child->part.offset + child->size > parent->size) {
-		child->size = parent->size - child->part.offset;
+	if (child->part.offset + child->part.size > parent->size) {
+		child->part.size = parent_size - child->part.offset;
 		printk(KERN_WARNING"mtd: partition \"%s\" extends beyond the end of device \"%s\" -- size truncated to %#llx\n",
-			part->name, parent->name, child->size);
+			part->name, parent->name, child->part.size);
 	}
+
 	if (parent->numeraseregions > 1) {
 		/* Deal with variable erase size stuff */
 		int i, max = parent->numeraseregions;
-		u64 end = child->part.offset + child->size;
+		u64 end = child->part.offset + child->part.size;
 		struct mtd_erase_region_info *regions = parent->eraseregions;
 
 		/* Find the first erase regions which is part of this
@@ -156,7 +161,7 @@ static struct mtd_info *allocate_partition(struct mtd_info *parent,
 		BUG_ON(child->erasesize == 0);
 	} else {
 		/* Single erase size */
-		child->erasesize = parent->erasesize;
+		child->erasesize = master->erasesize;
 	}
 
 	/*
@@ -178,7 +183,7 @@ static struct mtd_info *allocate_partition(struct mtd_info *parent,
 			part->name);
 	}
 
-	tmp = mtd_get_master_ofs(child, 0) + child->size;
+	tmp = mtd_get_master_ofs(child, 0) + child->part.size;
 	remainder = do_div(tmp, wr_alignment);
 	if ((child->flags & MTD_WRITEABLE) && remainder) {
 		child->flags &= ~MTD_WRITEABLE;
@@ -186,6 +191,7 @@ static struct mtd_info *allocate_partition(struct mtd_info *parent,
 			part->name);
 	}
 
+	child->size = child->part.size;
 	child->ecc_step_size = parent->ecc_step_size;
 	child->ecc_strength = parent->ecc_strength;
 	child->bitflip_threshold = parent->bitflip_threshold;
@@ -193,7 +199,7 @@ static struct mtd_info *allocate_partition(struct mtd_info *parent,
 	if (master->_block_isbad) {
 		uint64_t offs = 0;
 
-		while (offs < child->size) {
+		while (offs < child->part.size) {
 			if (mtd_block_isreserved(child, offs))
 				child->ecc_stats.bbtblocks++;
 			else if (mtd_block_isbad(child, offs))
@@ -234,6 +240,8 @@ int mtd_add_partition(struct mtd_info *parent, const char *name,
 		      long long offset, long long length)
 {
 	struct mtd_info *master = mtd_get_master(parent);
+	u64 parent_size = mtd_is_partition(parent) ?
+			  parent->part.size : parent->size;
 	struct mtd_partition part;
 	struct mtd_info *child;
 	int ret = 0;
@@ -244,7 +252,7 @@ int mtd_add_partition(struct mtd_info *parent, const char *name,
 		return -EINVAL;
 
 	if (length == MTDPART_SIZ_FULL)
-		length = parent->size - offset;
+		length = parent_size - offset;
 
 	if (length <= 0)
 		return -EINVAL;
@@ -419,7 +427,7 @@ int add_mtd_partitions(struct mtd_info *parent,
 		/* Look for subpartitions */
 		parse_mtd_partitions(child, parts[i].types, NULL);
 
-		cur_offset = child->part.offset + child->size;
+		cur_offset = child->part.offset + child->part.size;
 	}
 
 	return 0;
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 2d1f4a61f4ac..157357ec1441 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -200,6 +200,8 @@ struct mtd_debug_info {
  *
  * @node: list node used to add an MTD partition to the parent partition list
  * @offset: offset of the partition relatively to the parent offset
+ * @size: partition size. Should be equal to mtd->size unless
+ *	  MTD_SLC_ON_MLC_EMULATION is set
  * @flags: original flags (before the mtdpart logic decided to tweak them based
  *	   on flash constraints, like eraseblock/pagesize alignment)
  *
@@ -209,6 +211,7 @@ struct mtd_debug_info {
 struct mtd_part {
 	struct list_head node;
 	u64 offset;
+	u64 size;
 	u32 flags;
 };
 
@@ -622,7 +625,9 @@ static inline uint32_t mtd_mod_by_ws(uint64_t sz, struct mtd_info *mtd)
 
 static inline int mtd_wunit_per_eb(struct mtd_info *mtd)
 {
-	return mtd->erasesize / mtd->writesize;
+	struct mtd_info *master = mtd_get_master(mtd);
+
+	return master->erasesize / mtd->writesize;
 }
 
 static inline int mtd_offset_to_wunit(struct mtd_info *mtd, loff_t offs)
diff --git a/include/linux/mtd/partitions.h b/include/linux/mtd/partitions.h
index e545c050d3e8..b74a539ec581 100644
--- a/include/linux/mtd/partitions.h
+++ b/include/linux/mtd/partitions.h
@@ -37,6 +37,7 @@
  * 	master MTD flag set for the corresponding MTD partition.
  * 	For example, to force a read-only partition, simply adding
  * 	MTD_WRITEABLE to the mask_flags will do the trick.
+ * add_flags: contains flags to add to the parent flags
  *
  * Note: writeable partitions require their size and offset be
  * erasesize aligned (e.g. use MTDPART_OFS_NEXTBLK).
@@ -48,6 +49,7 @@ struct mtd_partition {
 	uint64_t size;			/* partition size */
 	uint64_t offset;		/* offset within the master MTD space */
 	uint32_t mask_flags;		/* master MTD flags to mask out for this partition */
+	uint32_t add_flags;		/* flags to add to the partition */
 	struct device_node *of_node;
 };
 
diff --git a/include/uapi/mtd/mtd-abi.h b/include/uapi/mtd/mtd-abi.h
index 47ffe3208c27..4b48fbf7d343 100644
--- a/include/uapi/mtd/mtd-abi.h
+++ b/include/uapi/mtd/mtd-abi.h
@@ -104,6 +104,7 @@ struct mtd_write_req {
 #define MTD_BIT_WRITEABLE	0x800	/* Single bits can be flipped */
 #define MTD_NO_ERASE		0x1000	/* No erase necessary */
 #define MTD_POWERUP_LOCK	0x2000	/* Always locked after reset */
+#define MTD_SLC_ON_MLC_EMULATION 0x4000	/* Emulate SLC behavior on MLC NANDs */
 
 /* Some common devices / combinations of capabilities */
 #define MTD_CAP_ROM		0
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
