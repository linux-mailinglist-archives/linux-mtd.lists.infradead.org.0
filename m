Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C4F57D67
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 09:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8wPaN9UulyoxMxV+mL4anF+ECqa6/UnFw/1du7YJr54=; b=E3aaKSIllBT+y+
	MXDyFmRhw+4hnh11knUXDp1zodjr8pvUq+PrfaRrrduQ3vjtnyc/iDF9iZmvj0ZGCdLYBHJW2Lo4t
	97dVkLimwL78kdonk367kp9VsXlntlxafsuOO0ptEmzUoizReGCcXMXzyT+ID/Vu9CEGIk3MHNl9E
	JoQpKk6Y6VOiggkOC2zJopKtDS/ftRRafnRzlFy6yecuBvUxgG5jyaTfyrmPlVT6fD00ROS+HqtRS
	SwlLXROfP7YEyG9ZqorVv2B2ahtQYjkJqZbTuQaYKyvi3OQyyGktPRZj+/Ow5VoJoBoJ8uLP6QgqK
	HJsSEApBcfs7sKBeCVaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgP5M-0007Dy-UE; Thu, 27 Jun 2019 07:44:48 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgP4p-00071C-Ru; Thu, 27 Jun 2019 07:44:17 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5R7gOnU025955; Thu, 27 Jun 2019 09:44:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=LDoJwloACDp1lGUZApvN4oyiNkplfSxCLcnyBGjtIdA=;
 b=XrnCaniJnt+gl9vXyW6BD2LVyOZphOSHEMdn+2YU/6WsShJD7mp6zhUBFVzODTt4UUTg
 iKEWCb/XOyPKcyA8uuTRd0+U92x7RurNOaBMUwbUygxEKVjUgMaIhTtq6zq6nuztWrob
 5WI//0387MhTAF7S+ow70dHPr9FL75veV4vs5RL2V4cuHC8lgkI1UOKOnbBH1u4xEoo3
 g0lpxJJT1MMM4E6dJFTuJ8Xa4rQUXKWw8nQAaxzHNY5ezamXC99PJaAG58WMtZ2AU8Rh
 pgLp+LsybXBLgu5dh9vVBKbO50+E9IIKRM1tLKaZ1LJsNwT82bgNFuRxC7W0id95HYy6 3A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t9d2gn3nd-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 27 Jun 2019 09:44:07 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2D8C831;
 Thu, 27 Jun 2019 07:44:06 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EA24B157A;
 Thu, 27 Jun 2019 07:44:05 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 27 Jun
 2019 09:44:05 +0200
Received: from lmecxl0923.lme.st.com (10.48.0.237) by Webmail-ga.st.com
 (10.75.90.48) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 27 Jun
 2019 09:44:05 +0200
From: Ludovic Barre <ludovic.Barre@st.com>
To: Mark Brown <broonie@kernel.org>, Marek Vasut <marek.vasut@gmail.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] dt-bindings: spi: stm32-qspi: add dma properties
Date: Thu, 27 Jun 2019 09:43:58 +0200
Message-ID: <1561621439-7305-1-git-send-email-ludovic.Barre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.237]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-27_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_004416_191028_9EBF68FD 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Cc: devicetree@vger.kernel.org, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-mtd@lists.infradead.org, Ludovic Barre <ludovic.barre@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Ludovic Barre <ludovic.barre@st.com>

This patch adds description of dma properties (optional).

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
---
 Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt b/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
index adeeb63..bfc038b 100644
--- a/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-stm32-qspi.txt
@@ -19,8 +19,11 @@ Required properties:
 - reg: chip-Select number (QSPI controller may connect 2 flashes)
 - spi-max-frequency: max frequency of spi bus
 
-Optional property:
+Optional properties:
 - spi-rx-bus-width: see ./spi-bus.txt for the description
+- dmas: DMA specifiers for tx and rx dma. See the DMA client binding,
+Documentation/devicetree/bindings/dma/dma.txt.
+- dma-names: DMA request names should include "tx" and "rx" if present.
 
 Example:
 
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
