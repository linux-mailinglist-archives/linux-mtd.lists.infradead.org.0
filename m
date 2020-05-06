Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272A41C6C87
	for <lists+linux-mtd@lfdr.de>; Wed,  6 May 2020 11:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDYLoRb3gnCN0oRBDw5AnJ19mNSa+OemHuULisBYPBs=; b=pbwDJlMQ3IqQZe
	rmuS7Uq0i6VYs93PjhGoqiGsDq6AJwC4I/CRdl70x1/10xJHzrYdt/mUGio4LMH+xL5Kyd8nzqRmO
	TkfZvAKY/seG3OzfyD05kRBWKi/Jy7vAhwbE8adZ+oJM+RVqFnYwMrUxxNif8NibhZTaCQ1u0OC9w
	n3lH8ETeI3Fshp3H2K3+DQ51vbVQFm4NNdSojUtYVSNAO8vB/oiK4oD3twc9wJmvj66GUjb+pIWMd
	d3mL4em9fU6rmQotKLZckXOIEjmv+E8qDIAKEHlnNGYXmyd7HUBrXwg1fB1gnTbsJheydcykBUDWS
	PdrmhlSpL8Y1wcPmapYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWG6d-0007Gg-MJ; Wed, 06 May 2020 09:12:43 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWG67-000778-8T
 for linux-mtd@lists.infradead.org; Wed, 06 May 2020 09:12:13 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04697EYO001972; Wed, 6 May 2020 11:12:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=P+DYjJ1GrlLPWPS5TfKbJgOvt9CYy26/DlrQnU+Di10=;
 b=MjMSF5nruLVMYia8JEfsi+B2UkMv4jRp857ZQeXn8Eg5xRmbsvVZQPcxpMo6DObCoH5L
 EY9CFTbdSKFfWAZxESqwLqZsj6pq8GlAXR4cAP0UmqhseburkeSE2Ga45exZ6hHKq54U
 tgQ0KmBpkpLCsW5rZIQp5Hkkl2sUvI7hArDAG1XOD0CmH2vJvMirkZEV8HdRgB+CC9N8
 Myun6GINA8LSA/SsfjUwkwg266Rpnr9C/WcT/Kd+cmpkwrln3R/swxCOK7rzsJ6ICjFI
 /PWmxUvxhFMFYU/yb2y64UauSm4wAz1j1o6EqXq/c2WWsnMA0wU+akB5bqr/8442HPVW vA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxb254wm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 May 2020 11:12:02 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6ED2D10002A;
 Wed,  6 May 2020 11:12:02 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 563E3222CF7;
 Wed,  6 May 2020 11:12:02 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Wed, 6 May 2020 11:12:01 +0200
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <gregkh@linuxfoundation.org>, <boris.brezillon@collabora.com>
Subject: [PATCH v4 01/10] mtd: rawnand: stm32_fmc2: manage all errors cases at
 probe time
Date: Wed, 6 May 2020 11:11:10 +0200
Message-ID: <1588756279-17289-2-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1588756279-17289-1-git-send-email-christophe.kerello@st.com>
References: <1588756279-17289-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-06_03:2020-05-04,
 2020-05-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_021211_603809_A7874CD3 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: marex@denx.de, devicetree@vger.kernel.org,
 Christophe Kerello <christophe.kerello@st.com>, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This patch defers its probe when the expected reset control is not
yet ready. This patch also handles properly all errors cases at probe
time.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
Changes in v3:
 - rename labels used on errors

 drivers/mtd/nand/raw/stm32_fmc2_nand.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index b6d45cd..50a6377 100644
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
+		goto err_release_dma;
 
 	/* FMC2 init routine */
 	stm32_fmc2_init(fmc2);
@@ -1997,20 +2001,20 @@ static int stm32_fmc2_probe(struct platform_device *pdev)
 	/* Scan to find existence of the device */
 	ret = nand_scan(chip, nand->ncs);
 	if (ret)
-		goto err_scan;
+		goto err_release_dma;
 
 	ret = mtd_device_register(mtd, NULL, 0);
 	if (ret)
-		goto err_device_register;
+		goto err_nand_cleanup;
 
 	platform_set_drvdata(pdev, fmc2);
 
 	return 0;
 
-err_device_register:
+err_nand_cleanup:
 	nand_cleanup(chip);
 
-err_scan:
+err_release_dma:
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
