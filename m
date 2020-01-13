Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1603138B82
	for <lists+linux-mtd@lfdr.de>; Mon, 13 Jan 2020 06:59:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=I4dYYbiPqAazFdEAnhzdAiUfs2I1TzxkHOcNOTLdGyQ=; b=RvGk9kgP3qQQtU
	qwm6IYL9RVRf+ANYSkaXAH17dRDYBOcuFZTUKvTq86s1nx1DrCceE041D1SdSNIGo9SLb2Q8lW7MO
	pSmqAi1l1e2hOqHohn6IIGc9hM42Wa7slcQ7KBnzdhkEd/6/BzsxKMLCPEDgoASp00FhIh3dNCXyj
	gVxRfUhrVsI5RdS16bAf5am353HyBPEkDREE1u90ox/3TeDITwFcPtuQFtmwKUDisuFXIShe/FTQN
	PMIWjemgEfdb131vRS+opyrzqKuu3XEu8BHe4ELg3e64H8tRDOrazxIcZxu+hUvwQ2eStUWIAllow
	xWAE1erb4J8+81d809ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqsl2-00045s-Uc; Mon, 13 Jan 2020 05:59:24 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqskt-00044c-Kh
 for linux-mtd@lists.infradead.org; Mon, 13 Jan 2020 05:59:17 +0000
Received: from epcas1p1.samsung.com (unknown [182.195.41.45])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200113055912epoutp01720535fb3b8a68b3140966efcd75fc6f~pXMagsgJa2395223952epoutp01R
 for <linux-mtd@lists.infradead.org>; Mon, 13 Jan 2020 05:59:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200113055912epoutp01720535fb3b8a68b3140966efcd75fc6f~pXMagsgJa2395223952epoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1578895152;
 bh=ZT9gk3Qr65aOLdt/Ucet4AAG0kIErlyp2QZ2AQ3M2Sk=;
 h=From:To:Subject:Date:References:From;
 b=vM3fibHv9HbVqiq06t/GA2C3wxiFLp8OFRtc9rZeIfPnYxqdOx9GQshLAE1Oildl+
 vzOW7aKcO88leQMpoHAyn/yo/2bHFFU68j0FWffg1BEGpgWIKkbt74Je/lJj0hmYzH
 KMdyq88fgrJXnEe0JyNTDrA2nK3kBSaQvP7+gmSU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200113055912epcas1p222109c5037e314195fd80bc31d910e5c~pXMaNb0233073730737epcas1p2c;
 Mon, 13 Jan 2020 05:59:12 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.165]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 47x2wH1FxKzMqYmC; Mon, 13 Jan
 2020 05:59:11 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 FE.F1.57028.E270C1E5; Mon, 13 Jan 2020 14:59:10 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
 20200113055910epcas1p4f97dfeb465b00d66649d6321cffc7b5a~pXMYjVcZp2759727597epcas1p4-;
 Mon, 13 Jan 2020 05:59:10 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200113055910epsmtrp12a7a1761213d46c47e77428c3d20f215~pXMYijphV0693206932epsmtrp1w;
 Mon, 13 Jan 2020 05:59:10 +0000 (GMT)
X-AuditID: b6c32a35-4f3ff7000001dec4-4b-5e1c072e2e32
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 FD.44.10238.E270C1E5; Mon, 13 Jan 2020 14:59:10 +0900 (KST)
Received: from localhost.localdomain (unknown [10.88.100.192]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200113055910epsmtip1f270c47fa4a0941d161cc036f272cfbd~pXMYXPImp0859408594epsmtip1M;
 Mon, 13 Jan 2020 05:59:10 +0000 (GMT)
From: Jungseung Lee <js07.lee@samsung.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Vignesh Raghavendra
 <vigneshr@ti.com>, linux-mtd@lists.infradead.org, js07.lee@gmail.com,
 js07.lee@samsung.com
Subject: [PATCH v3 1/3] mtd: spi-nor: introduce SR_BP_SHIFT define
Date: Mon, 13 Jan 2020 14:59:05 +0900
Message-Id: <20200113055907.9029-1-js07.lee@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBKsWRmVeSWpSXmKPExsWy7bCmrq4eu0ycwcdzWhZ/57xjsnh08zer
 xe6mZewWH5c4WPw/+4HdgdVj56y77B6bl9R73PmxlNGjb8sqRo/jN7YzBbBG5dhkpCampBYp
 pOYl56dk5qXbKnkHxzvHm5oZGOoaWlqYKynkJeam2iq5+AToumXmAO1WUihLzCkFCgUkFhcr
 6dvZFOWXlqQqZOQXl9gqpRak5BQYGhToFSfmFpfmpesl5+daGRoYGJkCVSbkZEw/uou94K54
 RcvzFSwNjE+Fuhg5OSQETCSWrv/A3MXIxSEksINRYtGX11DOJ0aJE+82sEI43xgleidcZIZp
 WftjGyNEYi+jxKe1rVBVnxklbszfyAhSxSagJXHj9yawhIjAYkaJnreXwRLCAk4S/z/PBBrF
 wcEioCox7b4CSJhXwEJi15ZXbBAb5CVWbzgAdoeEwEtWiYMrGlggEi4SKy58gTpDWOLV8S3s
 ELaUxMv+Nii7WGLnyonsEM0tjBKPli+BShhLvHu7Fmwxs4CmxPpd+hBhRYmdv+eC3cYswCfx
 7msPK0iJhACvREcbNJCUJN48aIE6QULiwuNeVgjbQ+LZ/h1gNwsJxEq0Nh1nmcAoMwthwQJG
 xlWMYqkFxbnpqcWGBYbIUbOJEZyKtEx3ME4553OIUYCDUYmH90CVdJwQa2JZcWXuIUYJDmYl
 Ed5N56TihHhTEiurUovy44tKc1KLDzGaAgNvIrOUaHI+ME3mlcQbmhoZGxtbmJiZm5kaK4nz
 cvy4GCskkJ5YkpqdmlqQWgTTx8TBKdXAOPfr9vo3e46U7J522lV183cVr2zBy1ZyLUa5QjGV
 nGfcZaQiyu+xfdi0z/Fno9CKYGnuS183OfRkyUhPezCl8uz6vqoJX0/89r5+8LfeP/0Vgteu
 rft1YLfz8X6X71Ma2u2SznbvWJO9voSPc/fr8HTbWSoPirI+3/Gw+XRV6E7u0cnvz3HZ1Cmx
 FGckGmoxFxUnAgAdfuLtWwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMJMWRmVeSWpSXmKPExsWy7bCSnK4eu0ycwZLDwhZ/57xjsnh08zer
 xe6mZewWH5c4WPw/+4HdgdVj56y77B6bl9R73PmxlNGjb8sqRo/jN7YzBbBGcdmkpOZklqUW
 6dslcGVMP7qLveCueEXL8xUsDYxPhboYOTkkBEwk1v7YxghiCwnsZpR406QMEZeQeLTzC0sX
 IweQLSxx+HBxFyMXUMlHRom5s76xg9SwCWhJ3Pi9iRUkISKwnFHi/M+7YAlhASeJ/59nMoM0
 swioSky7rwAS5hWwkNi15RUbxHx5idUbDjBPYORewMiwilEytaA4Nz232LDAMC+1XK84Mbe4
 NC9dLzk/dxMjOCi0NHcwXl4Sf4hRgINRiYdXolY6Tog1say4MvcQowQHs5II76ZzUnFCvCmJ
 lVWpRfnxRaU5qcWHGKU5WJTEeZ/mHYsUEkhPLEnNTk0tSC2CyTJxcEo1MNr8XG1edNDbRJzl
 lfyNK1KXtz2YUZL9sSfBO3F30tR9+dntU57UMiubb+T9eJEp+GNrV/A9s0vzupT/LFgYKq/H
 cqMurIO7if3JIZ0dgpbR4nJn0uZ6Ocnq9zwX5uIqWtyrcv9U+ybLyq/Hp60+FsJ96j7PxQty
 5k9bzjikzY6ymJXkKn1kqhJLcUaioRZzUXEiAGN+TlIGAgAA
X-CMS-MailID: 20200113055910epcas1p4f97dfeb465b00d66649d6321cffc7b5a
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200113055910epcas1p4f97dfeb465b00d66649d6321cffc7b5a
References: <CGME20200113055910epcas1p4f97dfeb465b00d66649d6321cffc7b5a@epcas1p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_215916_020407_035EB3B5 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The shift variable of SR_BP is conclusive because the first bit of SR_BP
is fixed on all known flashes.

Introduce SR_BP_SHIFT define and let them used by stm_* functions
to replace ffs operation to get shift value.

Signed-off-by: Jungseung Lee <js07.lee@samsung.com>
---
 drivers/mtd/spi-nor/spi-nor.c | 11 +++++------
 include/linux/mtd/spi-nor.h   |  2 ++
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index addb6319fcbb..e3da6a8654a8 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1767,7 +1767,6 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
 	struct mtd_info *mtd = &nor->mtd;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
 	u8 tb_mask = SR_TB_BIT5;
-	int shift = ffs(mask) - 1;
 	int pow;
 
 	if (nor->flags & SNOR_F_HAS_SR_TB_BIT6)
@@ -1778,7 +1777,7 @@ static void stm_get_locked_range(struct spi_nor *nor, u8 sr, loff_t *ofs,
 		*ofs = 0;
 		*len = 0;
 	} else {
-		pow = ((sr & mask) ^ mask) >> shift;
+		pow = ((sr & mask) ^ mask) >> SR_BP_SHIFT;
 		*len = mtd->size >> pow;
 		if (nor->flags & SNOR_F_HAS_SR_TB && sr & tb_mask)
 			*ofs = 0;
@@ -1860,7 +1859,7 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	int ret, status_old, status_new;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
 	u8 tb_mask = SR_TB_BIT5;
-	u8 shift = ffs(mask) - 1, pow, val;
+	u8 pow, val;
 	loff_t lock_len;
 	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
 	bool use_top;
@@ -1909,7 +1908,7 @@ static int stm_lock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	 *   pow = ceil(log2(size / len)) = log2(size) - floor(log2(len))
 	 */
 	pow = ilog2(mtd->size) - ilog2(lock_len);
-	val = mask - (pow << shift);
+	val = mask - (pow << SR_BP_SHIFT);
 	if (val & ~mask)
 		return -EINVAL;
 	/* Don't "lock" with no region! */
@@ -1946,7 +1945,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	int ret, status_old, status_new;
 	u8 mask = SR_BP2 | SR_BP1 | SR_BP0;
 	u8 tb_mask = SR_TB_BIT5;
-	u8 shift = ffs(mask) - 1, pow, val;
+	u8 pow, val;
 	loff_t lock_len;
 	bool can_be_top = true, can_be_bottom = nor->flags & SNOR_F_HAS_SR_TB;
 	bool use_top;
@@ -1997,7 +1996,7 @@ static int stm_unlock(struct spi_nor *nor, loff_t ofs, uint64_t len)
 	if (lock_len == 0) {
 		val = 0; /* fully unlocked */
 	} else {
-		val = mask - (pow << shift);
+		val = mask - (pow << SR_BP_SHIFT);
 		/* Some power-of-two sizes are not supported */
 		if (val & ~mask)
 			return -EINVAL;
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 7e32adce72f7..541c06d042e8 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -137,6 +137,8 @@
 
 #define SR1_QUAD_EN_BIT6	BIT(6)
 
+#define SR_BP_SHIFT		2
+
 /* Enhanced Volatile Configuration Register bits */
 #define EVCR_QUAD_EN_MICRON	BIT(7)	/* Micron Quad I/O */
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
