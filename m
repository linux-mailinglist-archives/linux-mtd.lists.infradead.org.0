Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F06618F816
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Mar 2020 16:03:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ae6lk65w1X0WODy06qAr0zH5F+e21LTGSUbieQBvTTI=; b=eIlywprXZasrkt
	sNUbVKsd0DBSE4U+wHZA+EcFyB/ohHKJxFq9Ij66XUng9SPlcYUXS8chlYigOW8CTBb7o72ZpAGJK
	Z52nIneVUZgglketBsVqXqfQATINh7aLkma2hhh4TWU8HKPIsPQGyFdVMZ116lxCpoKAvZl3cj7yJ
	DAi7kPSmmnDkBw28hH+G+pnkjA13VpvEFJ/+ZasjivFf3HLwKvb2vNtWz2FevxaJA5ok8a0NV0K7T
	jA14/YMxtP1Fexp1C1ZkQ/mLdrk8b9jFuI/RWW4lBVWmvWFIxkoi0+QVXQ56pJ7QqunOz3EjZwAWn
	IW76+Lh8d8fD726K1yew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGObm-00030J-A2; Mon, 23 Mar 2020 15:03:18 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOYs-0008An-Oa
 for linux-mtd@lists.infradead.org; Mon, 23 Mar 2020 15:00:25 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02NEbVx4023781; Mon, 23 Mar 2020 16:00:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=YNDg9aUDB/h6JOtly4P30iV25DZw0H9ltZvqpy2BYBo=;
 b=A1vH6DySsH8MbDJDiclUecb1HDv8eFqI0P+yq/Qd50xd1Zyo9O+DvFfuddIRmarXdPAL
 sGeeT2Yku+IkqGs4KEyL5j5egVtXRaNsSJS5sMbZFZhXbbPJDQO3a3QqCjdyEo1BQW3E
 q21DOIi281P9IGEdE5OsBBbm2V/8gl68d5uqUPQFv6NTVfoU5yJuZqhQc4kBDRQm5IYt
 jEVZki66xcxSexL/j1OrWkxepMY9b5ZoMR6W5Fe1qfJB3PjhBqLJ6ROUGgifRDC8Z1ym
 GLyk1d2SumWSlNkzN7x6MNQrvSWjc8YfwUjqdebcQJOSKqvCiqGQwgYMjiCm85xp8I1P Eg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yw995ajf3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 23 Mar 2020 16:00:12 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7176B100034;
 Mon, 23 Mar 2020 16:00:12 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node2.st.com [10.75.127.17])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 62B8A220F8F;
 Mon, 23 Mar 2020 16:00:12 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE2.st.com (10.75.127.17)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2;
 Mon, 23 Mar 2020 16:00:11 +0100
From: Christophe Kerello <christophe.kerello@st.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>, <vigneshr@ti.com>,
 <lee.jones@linaro.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <tony@atomide.com>
Subject: [12/12] mtd: rawnand: stm32_fmc2: add new MP1 compatible string
Date: Mon, 23 Mar 2020 15:58:52 +0100
Message-ID: <1584975532-8038-13-git-send-email-christophe.kerello@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
References: <1584975532-8038-1-git-send-email-christophe.kerello@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG6NODE2.st.com
 (10.75.127.17)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-23_05:2020-03-21,
 2020-03-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_080019_120923_E277B1A9 
X-CRM114-Status: GOOD (  12.66  )
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

This patch adds "st,stm32mp1-fmc2-nand" compatible string.

Signed-off-by: Christophe Kerello <christophe.kerello@st.com>
---
 drivers/mtd/nand/raw/stm32_fmc2_nand.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/nand/raw/stm32_fmc2_nand.c b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
index 1dc568f..2c0a206 100644
--- a/drivers/mtd/nand/raw/stm32_fmc2_nand.c
+++ b/drivers/mtd/nand/raw/stm32_fmc2_nand.c
@@ -1956,6 +1956,7 @@ static SIMPLE_DEV_PM_OPS(stm32_fmc2_nfc_pm_ops, stm32_fmc2_nfc_suspend,
 
 static const struct of_device_id stm32_fmc2_nfc_match[] = {
 	{.compatible = "st,stm32mp15-fmc2"},
+	{.compatible = "st,stm32mp1-fmc2-nand"},
 	{}
 };
 MODULE_DEVICE_TABLE(of, stm32_fmc2_nfc_match);
-- 
1.9.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
