Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021F394B77
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 19:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9Hrhr2S3AMm7T1odAJoin+lY2GQrbZdyi/yIj4NZZuM=; b=eL5
	QrDbaYpwM/RJNdJyQzVPwxbY3MrpYtYJHBJrEGAuyKowdcpOeZCgyQ3wAuG16GbNvNyX4xqtDqaUB
	i5OgvGXUUXXCOptLf92hcI3cAo74w8sX6XIhO+ro+xS/ZhSt1IObs4bGMQNo+T5xxihdO6UVrUoqk
	tddcWunElg1VMQQbeDMrkYcTvV07TRDUTxQa7aalJeJUOkHas0U7dvcx6x9H1kHDoApxss5X3ArxM
	yFJkpPgLBRr8wGcCqFy2sIZuu1WwAybRxDs8GrBB4EWqq8YrXoBlLy+7cLp111HvTcToWiMe5UMcb
	xhMue+GW/ndo6WdFyit3BUrly/kK/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzlGY-0006G6-Po; Mon, 19 Aug 2019 17:16:22 +0000
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzlGQ-0006Ey-5U
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 17:16:15 +0000
Received: by mail-yb1-f194.google.com with SMTP id b16so687416ybq.0
 for <linux-mtd@lists.infradead.org>; Mon, 19 Aug 2019 10:16:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TMs535P7xxFLiQOk7wJAthNZTpkgqr1nBQtH4nH/Y58=;
 b=M7boxWOl9j2GUIl0MoMiScCWOLoha1hQQUeeDTSjpSAdOt4VJrdeMjeV99fx18qU5W
 HvEiCgiDAuoWNg/c9ksookCb5goreEtSRzg3uxlPRW0nxsQubBsC+yDzWvxDGAfJt7hY
 WBTRODnu4/dTz9Z2TlYzBvK+U86w79/K86/PTIbsqtY4L1kZFrWb3xJ9beMuNTJRiJ5L
 oh8cogcrvRLvzAZlaSey0QyhbB7Ze5nRxSBGlT10dnOWwqQvOmP08RqbMQCpjwRfEjRC
 yORBVZzr5SEtkYu3Pd+2VtqEL/NNoMu3lPrH9hHhIgxdB3qiHS+hXNKmz7g2WDhe7EgA
 eEpA==
X-Gm-Message-State: APjAAAW2/x5HUgiive01PwYnjewR3TwQeayesxF3ctyBt9As0tbc3sYl
 qljELzTDq4tIerbLlSHAdQo=
X-Google-Smtp-Source: APXvYqzS9X155iH1jfQ8BTy+g0T7ZE1WrdMJBLi8pYxlufq1uAsp5sPKPqwPuIsEDAgWqjqEQvRXSA==
X-Received: by 2002:a25:9747:: with SMTP id h7mr16350427ybo.432.1566234969941; 
 Mon, 19 Aug 2019 10:16:09 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id d195sm3365808ywb.101.2019.08.19.10.16.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 10:16:08 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH v2] mtd: spi-nor: fix a memory leak bug
Date: Mon, 19 Aug 2019 12:16:00 -0500
Message-Id: <1566234960-3226-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_101614_209492_16EEAB83 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>,
 "open list:SPI NOR SUBSYSTEM" <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In spi_nor_parse_4bait(), 'dwords' is allocated through kmalloc(). However,
it is not deallocated in the following execution if spi_nor_read_sfdp()
fails, leading to a memory leak. To fix this issue, free 'dwords' before
returning the error.

Fixes: 816873eaeec6 ("mtd: spi-nor: parse SFDP 4-byte Address Instruction
Table")

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 03cc788..a41a466 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -3453,7 +3453,7 @@ static int spi_nor_parse_4bait(struct spi_nor *nor,
 	addr = SFDP_PARAM_HEADER_PTP(param_header);
 	ret = spi_nor_read_sfdp(nor, addr, len, dwords);
 	if (ret)
-		return ret;
+		goto out;
 
 	/* Fix endianness of the 4BAIT DWORDs. */
 	for (i = 0; i < SFDP_4BAIT_DWORD_MAX; i++)
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
