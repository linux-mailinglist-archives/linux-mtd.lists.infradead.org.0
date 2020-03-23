Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B91718F813
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Mar 2020 16:03:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMYzZ7XEOnGXpWw8FB+beSd9d8AZM3cHGxFJDiLYOFk=; b=dDEXEik/RqXuFj
	DnLsQwXbaNdChdFRIlXbaSQ9ZDe+c6nSkNmoam8n3SSl3YDRAzkGPcfGcT1T21Zeg9aIsB9Ci6rqL
	vzRn1gNwXlDX/0cznEk3CaDnwUyooaOSMSdChDmm1TjMAnFv6zMp92dUZWzTrU9r5nvkQ78b9uoWP
	8Hznpwu9c79jMXAWs1nHxjb7Mct5U+ItRkVfzs3jLdPoPX1g9ZmmwKn+8YJRnzZ+HqKNbO1OUN8tY
	sV6QQuni4jTrc3T6ia4zL1H9qqYqMUhEOnel92A+BXiPNI4yOKWwkg3NcdCDwxQ4MvnVaW6GKD/Uf
	xxbYADm19t2Bp6By6/fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGObS-0002mX-Kz; Mon, 23 Mar 2020 15:02:58 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOYr-00089a-Rw
 for linux-mtd@lists.infradead.org; Mon, 23 Mar 2020 15:00:26 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02NEbVx2023781; Mon, 23 Mar 2020 16:00:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=6dX+ocDX1yLYgXuNafYMvTFVJnDcaZyu/IHbSNnRf/o=;
 b=IQ+8b3nYN/AtIGCpminMtJRauIFjqMH8wbo1+q9SeXrj8ItSpuIKCcJ3AmSV7YgMwUsZ
 I6Plw4vEIuB2NNAyAwFZ+kwfGKN+28CR7ZAthsBI9TTROUsPLc/ywfBCzgmMr8sT0ztX
 svt+22trzkpeuA1Yr+u2uucDkYj3NTgFQcoB0U4icmHKcBpf2a99qWVN6IlzZ3V0DpO6
 hz+VNc1Tyxxal2R/+nq9C449lf8ATxDcIotdZzMq3aXesoaFldrvci6OBC3fB4sRnZj+
 Wi8+W/hFZlfuSI6o1VRoasHCT5NM2Lbg92eo5GWnLveoi6mcSD4ffcGwFfXDqfsde9u6 ug== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw995ajef-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 23 Mar 2020 16:00:08 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1139F100038;
 Mon, 23 Mar 2020 16:00:04 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F16F2220F8F;
 Mon, 23 Mar 2020 16:00:03 +0100 (CET)
Received: from localhost (10.75.127.45) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Mon, 23 Mar 2020 16:00:02 +0100
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <tony@atomide.com>
Subject: [09/12] mtd: rawnand: stm32_fmc2: move all registers
Date: Mon, 23 Mar 2020 15:58:49 +0100
Message-ID: <1584975532-8038-10-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
References: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.45]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-23_05:2020-03-21,
 2020-03-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_080018_252230_2EB35DC6 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: marex@denx.de, Christophe Kerello <christophe.kerello@st.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patch moves all constants/structures based on regmap used
to stm32-fmc2.h

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
 drivers/mtd/nand/raw/stm32_fmc2_nand.c | 156 +--------------------------------
 1 file changed, 1 insertion(+), 155 deletions(-)

diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index e0a7c08..8a3a45b 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -4,13 +4,12 @@
  * Author: Christophe Kerello <christophe.kerello@st.com>
  */
 
-#include <linux/bitfield.h>
-#include <linux/clk.h>
 #include <linux/dmaengine.h>
 #include <linux/dma-mapping.h>
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 #include <linux/iopoll.h>
+#include <linux/mfd/stm32-fmc2.h>
 #include <linux/module.h>
 #include <linux/mtd/rawnand.h>
 #include <linux/pinctrl/consumer.h>
@@ -47,162 +46,9 @@
 #define FMC2_PCR_TIMING_MASK		0xf
 #define FMC2_PMEM_PATT_TIMING_MASK	0xff
 
-/* FMC2 Controller Registers */
-#define FMC2_BCR1			0x0
-#define FMC2_PCR			0x80
-#define FMC2_SR				0x84
-#define FMC2_PMEM			0x88
-#define FMC2_PATT			0x8c
-#define FMC2_HECCR			0x94
-#define FMC2_ISR			0x184
-#define FMC2_ICR			0x188
-#define FMC2_CSQCR			0x200
-#define FMC2_CSQCFGR1			0x204
-#define FMC2_CSQCFGR2			0x208
-#define FMC2_CSQCFGR3			0x20c
-#define FMC2_CSQAR1			0x210
-#define FMC2_CSQAR2			0x214
-#define FMC2_CSQIER			0x220
-#define FMC2_CSQISR			0x224
-#define FMC2_CSQICR			0x228
-#define FMC2_CSQEMSR			0x230
-#define FMC2_BCHIER			0x250
-#define FMC2_BCHISR			0x254
-#define FMC2_BCHICR			0x258
-#define FMC2_BCHPBR1			0x260
-#define FMC2_BCHPBR2			0x264
-#define FMC2_BCHPBR3			0x268
-#define FMC2_BCHPBR4			0x26c
-#define FMC2_BCHDSR0			0x27c
-#define FMC2_BCHDSR1			0x280
-#define FMC2_BCHDSR2			0x284
-#define FMC2_BCHDSR3			0x288
-#define FMC2_BCHDSR4			0x28c
-
-/* Register: FMC2_BCR1 */
-#define FMC2_BCR1_FMC2EN		BIT(31)
-
-/* Register: FMC2_PCR */
-#define FMC2_PCR_PWAITEN		BIT(1)
-#define FMC2_PCR_PBKEN			BIT(2)
-#define FMC2_PCR_PWID			GENMASK(5, 4)
-#define FMC2_PCR_PWID_BUSWIDTH_8	0
-#define FMC2_PCR_PWID_BUSWIDTH_16	1
-#define FMC2_PCR_ECCEN			BIT(6)
-#define FMC2_PCR_ECCALG			BIT(8)
-#define FMC2_PCR_TCLR			GENMASK(12, 9)
-#define FMC2_PCR_TCLR_DEFAULT		0xf
-#define FMC2_PCR_TAR			GENMASK(16, 13)
-#define FMC2_PCR_TAR_DEFAULT		0xf
-#define FMC2_PCR_ECCSS			GENMASK(19, 17)
-#define FMC2_PCR_ECCSS_512		1
-#define FMC2_PCR_ECCSS_2048		3
-#define FMC2_PCR_BCHECC			BIT(24)
-#define FMC2_PCR_WEN			BIT(25)
-
-/* Register: FMC2_SR */
-#define FMC2_SR_NWRF			BIT(6)
-
-/* Register: FMC2_PMEM */
-#define FMC2_PMEM_MEMSET		GENMASK(7, 0)
-#define FMC2_PMEM_MEMWAIT		GENMASK(15, 8)
-#define FMC2_PMEM_MEMHOLD		GENMASK(23, 16)
-#define FMC2_PMEM_MEMHIZ		GENMASK(31, 24)
 #define FMC2_PMEM_DEFAULT		0x0a0a0a0a
-
-/* Register: FMC2_PATT */
-#define FMC2_PATT_ATTSET		GENMASK(7, 0)
-#define FMC2_PATT_ATTWAIT		GENMASK(15, 8)
-#define FMC2_PATT_ATTHOLD		GENMASK(23, 16)
-#define FMC2_PATT_ATTHIZ		GENMASK(31, 24)
 #define FMC2_PATT_DEFAULT		0x0a0a0a0a
 
-/* Register: FMC2_ISR */
-#define FMC2_ISR_IHLF			BIT(1)
-
-/* Register: FMC2_ICR */
-#define FMC2_ICR_CIHLF			BIT(1)
-
-/* Register: FMC2_CSQCR */
-#define FMC2_CSQCR_CSQSTART		BIT(0)
-
-/* Register: FMC2_CSQCFGR1 */
-#define FMC2_CSQCFGR1_CMD2EN		BIT(1)
-#define FMC2_CSQCFGR1_DMADEN		BIT(2)
-#define FMC2_CSQCFGR1_ACYNBR		GENMASK(6, 4)
-#define FMC2_CSQCFGR1_CMD1		GENMASK(15, 8)
-#define FMC2_CSQCFGR1_CMD2		GENMASK(23, 16)
-#define FMC2_CSQCFGR1_CMD1T		BIT(24)
-#define FMC2_CSQCFGR1_CMD2T		BIT(25)
-
-/* Register: FMC2_CSQCFGR2 */
-#define FMC2_CSQCFGR2_SQSDTEN		BIT(0)
-#define FMC2_CSQCFGR2_RCMD2EN		BIT(1)
-#define FMC2_CSQCFGR2_DMASEN		BIT(2)
-#define FMC2_CSQCFGR2_RCMD1		GENMASK(15, 8)
-#define FMC2_CSQCFGR2_RCMD2		GENMASK(23, 16)
-#define FMC2_CSQCFGR2_RCMD1T		BIT(24)
-#define FMC2_CSQCFGR2_RCMD2T		BIT(25)
-
-/* Register: FMC2_CSQCFGR3 */
-#define FMC2_CSQCFGR3_SNBR		GENMASK(13, 8)
-#define FMC2_CSQCFGR3_AC1T		BIT(16)
-#define FMC2_CSQCFGR3_AC2T		BIT(17)
-#define FMC2_CSQCFGR3_AC3T		BIT(18)
-#define FMC2_CSQCFGR3_AC4T		BIT(19)
-#define FMC2_CSQCFGR3_AC5T		BIT(20)
-#define FMC2_CSQCFGR3_SDT		BIT(21)
-#define FMC2_CSQCFGR3_RAC1T		BIT(22)
-#define FMC2_CSQCFGR3_RAC2T		BIT(23)
-
-/* Register: FMC2_CSQCAR1 */
-#define FMC2_CSQCAR1_ADDC1		GENMASK(7, 0)
-#define FMC2_CSQCAR1_ADDC2		GENMASK(15, 8)
-#define FMC2_CSQCAR1_ADDC3		GENMASK(23, 16)
-#define FMC2_CSQCAR1_ADDC4		GENMASK(31, 24)
-
-/* Register: FMC2_CSQCAR2 */
-#define FMC2_CSQCAR2_ADDC5		GENMASK(7, 0)
-#define FMC2_CSQCAR2_NANDCEN		GENMASK(11, 10)
-#define FMC2_CSQCAR2_SAO		GENMASK(31, 16)
-
-/* Register: FMC2_CSQIER */
-#define FMC2_CSQIER_TCIE		BIT(0)
-
-/* Register: FMC2_CSQICR */
-#define FMC2_CSQICR_CLEAR_IRQ		GENMASK(4, 0)
-
-/* Register: FMC2_CSQEMSR */
-#define FMC2_CSQEMSR_SEM		GENMASK(15, 0)
-
-/* Register: FMC2_BCHIER */
-#define FMC2_BCHIER_DERIE		BIT(1)
-#define FMC2_BCHIER_EPBRIE		BIT(4)
-
-/* Register: FMC2_BCHICR */
-#define FMC2_BCHICR_CLEAR_IRQ		GENMASK(4, 0)
-
-/* Register: FMC2_BCHDSR0 */
-#define FMC2_BCHDSR0_DUE		BIT(0)
-#define FMC2_BCHDSR0_DEF		BIT(1)
-#define FMC2_BCHDSR0_DEN		GENMASK(7, 4)
-
-/* Register: FMC2_BCHDSR1 */
-#define FMC2_BCHDSR1_EBP1		GENMASK(12, 0)
-#define FMC2_BCHDSR1_EBP2		GENMASK(28, 16)
-
-/* Register: FMC2_BCHDSR2 */
-#define FMC2_BCHDSR2_EBP3		GENMASK(12, 0)
-#define FMC2_BCHDSR2_EBP4		GENMASK(28, 16)
-
-/* Register: FMC2_BCHDSR3 */
-#define FMC2_BCHDSR3_EBP5		GENMASK(12, 0)
-#define FMC2_BCHDSR3_EBP6		GENMASK(28, 16)
-
-/* Register: FMC2_BCHDSR4 */
-#define FMC2_BCHDSR4_EBP7		GENMASK(12, 0)
-#define FMC2_BCHDSR4_EBP8		GENMASK(28, 16)
-
 enum stm32_fmc2_ecc {
 	FMC2_ECC_HAM = 1,
 	FMC2_ECC_BCH4 = 4,
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
