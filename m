Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CBF1AE402
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 19:46:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uLr8LCPvd32o5KlUDl4O5oLlTwEzRy4S/TKQNM4PobA=; b=sQy
	sftv+hQ0ZSX1Lo1Goeu/u8hI20zHuJ55yblsi4cCqd8EO7E19srtnmTks0goAV/I2EiMdlBGUleU2
	hSxBM1B6reBYXsbzxzqaZ3GVvqIAUidvoqRhtaE+JwR+5d1U3C/hWWQq6e8G2vrAmRFZav4WfMOaQ
	ms9NKpHno+DNizu/hsx/M1/+9yzP+DErmpQ0GouLrlgMiysuUbpF8t4qEaglUjpisW1DcLm/ZE1J6
	aWePizhhoW5Kv6Dcgo1h3ctPJXu1Slpv2SYqqYKLznN5KG1DLncsrhtZCGk0yJ/aQ7Ow3yvw+hW+b
	ZuBtIWdVvIWy8ybHLNJi3YIm8DFz6uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPV4P-0000ZJ-1W; Fri, 17 Apr 2020 17:46:29 +0000
Received: from rcdn-iport-7.cisco.com ([173.37.86.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPV4J-0000Yi-Kb
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 17:46:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1064; q=dns/txt; s=iport;
 t=1587145583; x=1588355183;
 h=from:to:cc:subject:date:message-id;
 bh=qY+9PAFy7cPu/uPuW56FYsLvpzKOkBk6Uqf0v5jAxjs=;
 b=jGNFIWFEChW0sKhjpPhvnj1xmW4vEKXvNnS2A7k6O1F+u/EgEr7GWGUT
 F3sHMHj5I7JhurCYRPNM3tJ3PWd2fY/pfROqN7u89PeLyLcgR1dsRnkpI
 oC8T5q5aWSAf1ktNZZ8Q+mLz+eFPk1g9BJK2Ieq4y/EKqu2loYyQ2F2Uz 4=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0AdBABq6ple/4oNJK1mHgELHIFwC4I?=
 =?us-ascii?q?pgUEyKq56gXsKAQEBDi8EAQGERIIRJDUIDgIDAQELAQEFAQEBAgEFBG2FYoZ?=
 =?us-ascii?q?xgT4TgyaCfa53gieJIYFAFIEkh1OEZhqBQT+EX4QVhioEmR+YUYJOgQGWVgw?=
 =?us-ascii?q?dnD4BLaxGgVQBNoFXMxoIGxWDJFAYDaBAIQMwjHKCRQEB?=
X-IronPort-AV: E=Sophos;i="5.72,395,1580774400"; d="scan'208";a="746715712"
Received: from alln-core-5.cisco.com ([173.36.13.138])
 by rcdn-iport-7.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 17 Apr 2020 17:46:21 +0000
Received: from zorba.cisco.com ([10.24.5.71])
 by alln-core-5.cisco.com (8.15.2/8.15.2) with ESMTP id 03HHkKH4019594;
 Fri, 17 Apr 2020 17:46:20 GMT
From: Daniel Walker <danielwa@cisco.com>
To: Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: [PATCH] mtd: spi-nor: Add 4B_OPCODES flag to n25q256a
Date: Fri, 17 Apr 2020 10:46:19 -0700
Message-Id: <20200417174620.16420-1-danielwa@cisco.com>
X-Mailer: git-send-email 2.17.1
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.24.5.71, [10.24.5.71]
X-Outbound-Node: alln-core-5.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_104623_751482_22B82E1D 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.78 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 xe-linux-external@cisco.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The n25q256a supports 4-byte opcodes so lets add the flag.
Tested on Cisco IoT platform hardware using Marvell A7040 SoC.

This patch was base on one from Guo Yi <yi.guo@cavium.com>.

Cc: xe-linux-external@cisco.com
Signed-off-by: Daniel Walker <danielwa@cisco.com>
---
 drivers/mtd/spi-nor/micron-st.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/micron-st.c b/drivers/mtd/spi-nor/micron-st.c
index 6c034b9718e2..471fe2bc2ba4 100644
--- a/drivers/mtd/spi-nor/micron-st.c
+++ b/drivers/mtd/spi-nor/micron-st.c
@@ -37,7 +37,7 @@ static const struct flash_info st_parts[] = {
 			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
 	{ "n25q256a",    INFO(0x20ba19, 0, 64 * 1024,  512, SECT_4K |
 			      USE_FSR | SPI_NOR_DUAL_READ |
-			      SPI_NOR_QUAD_READ) },
+			      SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
 	{ "mt25qu256a",  INFO6(0x20bb19, 0x104400, 64 * 1024,  512,
 			       SECT_4K | USE_FSR | SPI_NOR_DUAL_READ |
 			       SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
