Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 855A618F809
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Mar 2020 16:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Kgb2y21O98RADu/M7LWVM+uS4HP2XS0WdVNKUA8cAo=; b=iMTXHrzbJ8SJqx
	GZoqq4S9pWDTGIjriOZ40t61M4Yx9+znfJK+v44DA07SHuhjdLz9tOYk24xZAEQejc8A00Fr31c4v
	n8RNO7md/2o7I68ccI4jmds8YwhEiEg+f02HfuTS27PqE5bLWAs1Rlh30pQAMI1bvzeF9JHfGnD4A
	z2zy6LS8UzqD/s2inhFh2xdVGlHFElhG6AFJ51NwVArOor8o3GakrwX0HXdTjypdS60sw926Ykr8C
	9EI77gKRSJo53krD7NHG/8L1GlQnQC+RHTlRn6IEJN5530NcMh6iwk8VuwX8D4MQwBaaQFi6VaN0o
	PsBFArN51vBT6JoUPB0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOaF-0001rT-5I; Mon, 23 Mar 2020 15:01:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOYb-0007u8-V8
 for linux-mtd@lists.infradead.org; Mon, 23 Mar 2020 15:00:04 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02NEbTUQ023758; Mon, 23 Mar 2020 15:59:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=ysOQdhxkH/yrY5LkPt2G2khgQ9eVt+ECxotn643GF5M=;
 b=B16F/CHdNyswVzRywnIeeovif5AJAUv2DjDTpWzfcW0A9UJWf9xa/K5/UR7KnY7tqnZz
 E2Vll6E3RKJtW0NefQr/M/cESh8cDDkbCis7MFguIMzWgidDmdg5L/Lz2RyoQ0s+jD7W
 nMuUKvGWYqrofzNFZ3iMdGIGMhr1exYCKIq5HJoCFBiQDcjn+Y4rma2csUZs3BcdT8zy
 YaVKTCxfXWhqNYc1AUvbLvKtbez4JtzibhICwe+u1GLUj2no2xLbmKlRNxc0x9qfAcgI
 vxhmiMd+T34iT/jpXCYcRdzmSExc4JHYpHoKlUEqCmczR9CZHmqyrzwdJ3OeJzfU7gLf JQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw995ajd0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 23 Mar 2020 15:59:49 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9B96410003A;
 Mon, 23 Mar 2020 15:59:44 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8C5FD21E69C;
 Mon, 23 Mar 2020 15:59:44 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Mon, 23 Mar 2020 15:59:43 +0100
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <tony@atomide.com>
Subject: [04/12] mtd: rawnand: stm32_fmc2: manage all errors cases at probe
 time
Date: Mon, 23 Mar 2020 15:58:44 +0100
Message-ID: <1584975532-8038-5-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
References: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-23_05:2020-03-21,
 2020-03-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_080002_372035_CCECDC21 
X-CRM114-Status: GOOD (  15.30  )
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

This patch defers its probe when the expected reset control is not
yet ready. This patch also handles properly all errors cases at probe
time.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
 drivers/mtd/nand/raw/stm32_fmc2_nand.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index b6d45cd..0a96797 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -1967,7 +1967,11 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
 	}
 
 	rstc = devm_reset_control_get(dev, NULL);
-	if (!IS_ERR(rstc)) {
+	if (IS_ERR(rstc)) {
+		ret = PTR_ERR(rstc);
+		if (ret == -EPROBE_DEFER)
+			goto err_clk_disable;
+	} else {
 		reset_control_assert(rstc);
 		reset_control_deassert(rstc);
 	}
@@ -1975,7 +1979,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
 	/* DMA setup */
 	ret = stm32_fmc2_dma_setup(fmc2);
 	if (ret)
-		return ret;
+		goto err_dma_setup;
 
 	/* FMC2 init routine */
 	stm32_fmc2_init(fmc2);
@@ -1997,7 +2001,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
 	/* Scan to find existence of the device */
 	ret = nand_scan(chip, nand->ncs);
 	if (ret)
-		goto err_scan;
+		goto err_dma_setup;
 
 	ret = mtd_device_register(mtd, NULL, 0);
 	if (ret)
@@ -2010,7 +2014,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
 err_device_register:
 	nand_cleanup(chip);
 
-err_scan:
+err_dma_setup:
 	if (fmc2->dma_ecc_ch)
 		dma_release_channel(fmc2->dma_ecc_ch);
 	if (fmc2->dma_tx_ch)
@@ -2021,6 +2025,7 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
 	sg_free_table(&fmc2->dma_data_sg);
 	sg_free_table(&fmc2->dma_ecc_sg);
 
+err_clk_disable:
 	clk_disable_unprepare(fmc2->clk);
 
 	return ret;
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
