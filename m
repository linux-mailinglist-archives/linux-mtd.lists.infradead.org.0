Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A439171015
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Feb 2020 06:18:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rBE60eEnp1u+IS3YQK78tL+pbaCKVZxpvdXaXW6lXtI=; b=izMXnT5GBB2zSQ
	f34XiqXZ7J0cU/SolE/Pw4NXB4zJPaNF2PPC7D1+ZmOOXI+gNuHH9V/oTaMnmc9LjAxWxssN0Dicn
	Ug/WwDbjxxGnwS8Mt5X2hcLoFy4XrV3CV9LbM7TW1BQ0ruWvkCuPaku0utr33l63BCw4E/ZoNef6X
	Je3mwT1l5LIxAEuTce4u2MQgXVAlYgL9IVYBocRN4CZwkge3T/B1lSSv4ZRr+EmlC7g0s6h6dpgFS
	depnsHeTBUVlaKDwjjmFDqm2JXRkj7V/g9317LNvtvxVPSyag/fkDxRRPOm4cB+46aRZ8GU74XPga
	QtjPDsB2Zyt3HdfHvWiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7BZ0-0000fP-I4; Thu, 27 Feb 2020 05:18:22 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7BYu-0000do-4w
 for linux-mtd@lists.infradead.org; Thu, 27 Feb 2020 05:18:17 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01R5I7me110504;
 Wed, 26 Feb 2020 23:18:07 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582780687;
 bh=2qRkH6X4Mnpo8OoVa0Oqzt0oYnaF3hA8tNYiok0SX5A=;
 h=From:To:CC:Subject:Date;
 b=f7SZ2VchaJ02pXrXpOkZ80l7C1k39vQYQFjzxW9YY2zLm9w88LJskLH7Y5jsZ0xkO
 gPpy6sL/VQueOeLJrkv4SHcO65GSbukLkAdE3bYn3YcOhSEURmypsF+5HUx3tCvRmQ
 KzTvoqtcfrVGzZzvYWRxhIBIp3S7WLQFa/8o+Okk=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01R5I7cs003806
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Feb 2020 23:18:07 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 26
 Feb 2020 23:18:06 -0600
Received: from localhost.localdomain (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 26 Feb 2020 23:18:06 -0600
Received: from a0132425.dhcp.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by localhost.localdomain (8.15.2/8.15.2) with ESMTP id
 01R5I4pA129849; Wed, 26 Feb 2020 23:18:05 -0600
From: Vignesh Raghavendra <vigneshr@ti.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>
Subject: [PATCH v2] MAINTAINERS: Add staging branch for HyperBus
Date: Thu, 27 Feb 2020 10:42:12 +0530
Message-ID: <20200227051212.15496-1-vigneshr@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_211816_251605_ACF660F7 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Update HyperBus entry with branch used to stage patches under
mtd.git. Also, add mailing list and patchwork queue information.

Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
v2: Update commit desc to include all changes being made

 MAINTAINERS | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index a0d86490c2c6..4b9930263dc7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7769,6 +7769,9 @@ F:	Documentation/ABI/testing/debugfs-hyperv
 
 HYPERBUS SUPPORT
 M:	Vignesh Raghavendra <vigneshr@ti.com>
+L:	linux-mtd@lists.infradead.org
+Q:	http://patchwork.ozlabs.org/project/linux-mtd/list/
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git cfi/next
 S:	Supported
 F:	drivers/mtd/hyperbus/
 F:	include/linux/mtd/hyperbus.h
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
