Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E989D136AF9
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 11:23:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=I4dYYbiPqAazFdEAnhzdAiUfs2I1TzxkHOcNOTLdGyQ=; b=REe0pCBQ5GDY2A
	djnvSigoSZovFU4L5Z02qt+UkMgY4aQobC3Ge6C+Ohn/FsActyOhcbkNf4I5o7vO+8uznLEoOHJ1D
	WkIIBQfq/CDLc5LMCaawH125nud3xI1Ml2YQNd7/d89XM0s1EhgWocA1NHLeHgJgJmCIuERH74UIa
	GF+lD/QhV8W+KJ1y9shF2CQbGprjMzvqjgeaYAemLdw4NrRSN3ObQJEttYvfKdiU3GNdpjroae/oO
	zULqa+eriis5qCtYrPs7kNNYzxJGReWKcyzkDJr9cGgSmeKJd8aEvHcNM11IwYy9TV+KYk8+36Sm0
	wj9AqHmOyJZHmksr+g7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprRu-00064O-2K; Fri, 10 Jan 2020 10:23:26 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprRi-00063S-TQ
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 10:23:16 +0000
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200110102310epoutp03ba9e417b55cdd93517ff4a681d99e20a~of3B2FObH0866408664epoutp032
 for <linux-mtd@lists.infradead.org>; Fri, 10 Jan 2020 10:23:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200110102310epoutp03ba9e417b55cdd93517ff4a681d99e20a~of3B2FObH0866408664epoutp032
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1578651790;
 bh=ZT9gk3Qr65aOLdt/Ucet4AAG0kIErlyp2QZ2AQ3M2Sk=;
 h=From:To:Subject:Date:References:From;
 b=I/AzzKkybJoN0lcmzjL8EySZQxo5YcBkIz4S1A2B8ytJArlaKolcb3s5pZjI9PUBc
 LceB4HRNFoXkIDc8gHhFLBODaCQ6PkiFsYtGaem5qPw4d4GIkxUMTMF54L+O+YK2TV
 lI0SxSgomSD3NgZ6SHxwXMHQn2QUMwJk/7EQ02eU=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas1p3.samsung.com (KnoxPortal) with ESMTP id
 20200110102310epcas1p32fc8347b7f678b9a03a2c37498555a22~of3BlMjqh1289112891epcas1p3L;
 Fri, 10 Jan 2020 10:23:10 +0000 (GMT)
Received: from epsmges1p1.samsung.com (unknown [182.195.40.166]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 47vJwF0XJhzMqYkb; Fri, 10 Jan
 2020 10:23:09 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
 epsmges1p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 C4.9A.57028.B80581E5; Fri, 10 Jan 2020 19:23:07 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200110102307epcas1p2a8b32fc2a2455d1052982d8ac499d21b~of2-NrVPL0682306823epcas1p2C;
 Fri, 10 Jan 2020 10:23:07 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200110102307epsmtrp173a20fa925e4e74f13e241ebd59c075b~of2-NB3j-1827118271epsmtrp1h;
 Fri, 10 Jan 2020 10:23:07 +0000 (GMT)
X-AuditID: b6c32a35-50bff7000001dec4-1d-5e18508b3d02
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C3.79.06569.B80581E5; Fri, 10 Jan 2020 19:23:07 +0900 (KST)
Received: from localhost.localdomain (unknown [10.88.100.192]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200110102307epsmtip2ed9fdcdc80506d621286ac1ee162fc82~of2-AP0P51253612536epsmtip2w;
 Fri, 10 Jan 2020 10:23:07 +0000 (GMT)
From: Jungseung Lee <js07.lee@samsung.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>, Vignesh Raghavendra
 <vigneshr@ti.com>, linux-mtd@lists.infradead.org, js07.lee@gmail.com,
 js07.lee@samsung.com
Subject: [PATCH 1/3] mtd: spi-nor: introduce SR_BP_SHIFT define
Date: Fri, 10 Jan 2020 19:22:55 +0900
Message-Id: <20200110102257.28883-1-js07.lee@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA01SbUhTYRTm3Xa362p1maYHEVoXjBTUXed0lpaQxUB/CEZFmHbZXrbhvtid
 I/ujlImplVYiSqWYH2mUomLOCmJiQmUkFSgpfhdaWmaZpWWb16h/z3nOed7nnPMeUih/QgST
 JqsTO6ysmRZLRV29YVERJWmQqVybidP8ur4g0EwOrxKaB2cbJZrF+iTN+sBnSRKhdVePSrQd
 9XnakZUGpL3U2YK0/UP3BWnECXOCEbN67FBgq86mN1kNiXRKetbBLHWskolg4jVxtMLKWnAi
 nZyaFnHYZPZ60woXa87xUmksx9FR+xMcthwnVhhtnDORxna92c4o7ZEca+FyrIZInc2yl1Eq
 o9XeylNmY2Vfj8Q+GnS64P1tUT6akRcjPxKoGHjc/w4VIykpp7oRDH5sEPPBFwQtZQMSPlhG
 MHE1X1iMyA1JeZOO5x8haPhZJOKDJQTPz1cIfO+KqXAYWm0nfIkA6haC0vlXyKf2pw7A6xqx
 r0ZEhcJ6wzLhwzIqHty9tSK+p51wp+2x0KcFapaAurc9It45Gbo+2fkaf5jr75TwOBhmLxdu
 Yg7czeUSXluAYLKpfjOhgoX5uxsTCKkwaO2J4uld4F69gXxYSG2DhW+lBG8lg6LCzRXR8HG8
 YLM1gJdTFwkea+H7s6cbvJw6CY3N06IyFFL9z6AWoRYUiO2cxYA5xs78/zHtaOOGwtXd6NqL
 VA+iSERvlRn9gzLlBOvici0eBKSQDpD1DQVmymV6NvcMdtiyHDlmzHmQ2ru8cmHwDp3Ne5FW
 ZxajjlapVJqY2LhYtYoOkpErgyfllIF14myM7djxVycg/YLzUfeC2D26pa7mIrVv+XfNbuOe
 h/jNZXzq7r3ncQVFZXPzybmtxzOGJ0arPl34EFXvCUh/6MqTVrgPyI6YDolhraJ2ZGy7Sz9y
 88pSdoQ1PvDS2FTG145CR6HB1Kw4dqc65cc52bhfZeNq5Hk8Ps0sCqqokqO6vGce+ndZSJs0
 dIUWcUaWCRc6OPYP7ydGGVkDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMJMWRmVeSWpSXmKPExsWy7bCSvG53gEScQftVKYu/c94xWTy6+ZvV
 YnfTMnaLj0scLP6f/cDuwOqxc9Zddo/NS+o97vxYyujRt2UVo8fxG9uZAlijuGxSUnMyy1KL
 9O0SuDKmH93FXnBXvKLl+QqWBsanQl2MHBwSAiYSE5cndzFycQgJ7GaUWP3xNnsXIydQXELi
 0c4vLBA1whKHDxdD1HxklPg9YQ0rSA2bgJbEjd+bWEESIgLLGSXO/7zLDtIgLGAvcWU+G0gN
 i4CqxP+l38DqeQUsJXYeXsACMV9eYvWGA8wTGLkXMDKsYpRMLSjOTc8tNiwwykst1ytOzC0u
 zUvXS87P3cQIDgotrR2MJ07EH2IU4GBU4uHNEBaPE2JNLCuuzD3EKMHBrCTCe/SGWJwQb0pi
 ZVVqUX58UWlOavEhRmkOFiVxXvn8Y5FCAumJJanZqakFqUUwWSYOTqkGxpwXpVvUO7Y6/7T1
 vGOhMrX3071Qy1sMRX3TLbrbO5XunXd6/K338I4G5+/37MxlpJs4u7/cmhEWz6829yKb9Gbl
 zATdaNs3PN/OJ/MnfOvhf5CQMaVc4W5vSYh/etwSoSk1hW8+CU6V/Mdiuk9AddGfLYnrbn+9
 tCj+9GqFv6UH2otXlF7IU2Ipzkg01GIuKk4EAG8Z+I8GAgAA
X-CMS-MailID: 20200110102307epcas1p2a8b32fc2a2455d1052982d8ac499d21b
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200110102307epcas1p2a8b32fc2a2455d1052982d8ac499d21b
References: <CGME20200110102307epcas1p2a8b32fc2a2455d1052982d8ac499d21b@epcas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_022315_196270_0BA4D1E1 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
