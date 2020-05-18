Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F561D82D9
	for <lists+linux-mtd@lfdr.de>; Mon, 18 May 2020 20:00:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/vbJQhi2PdFWCd7hTvns5ib7BYP9Fujff25jW1IVGCY=; b=N7J
	egy+gkKDUHsnGXBp/Ln8YRmnPikrJ1nF0XEet+OXcWO71gHW9i8U1BmXvLM1g/xW8v22d/LI5oErf
	FUfVq89SWlBGWuSw3RtD6vomf5kklyxE+6NOdELEoyACsQg86q0mNxekq0rupGch5hQF11kHxc81H
	Vd2zH3ayJX/EPUkI3kY0y1zILr+YmL19BJTgr+9ZfppXqMSTrP/AgfBCRU+5m8KunpMHboG92GZj+
	5iyMhl7qdQmyDRRCjmZkOKgjMlR1E97NMPIeOABw8gk3p8RzQezNd2qrqwo4/7svXuY9vbQQYW/Kr
	hJef1Z1P4ectq4rI50+VThHzPHN1/+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jak3R-0008J1-OG; Mon, 18 May 2020 17:59:57 +0000
Received: from rcdn-iport-8.cisco.com ([173.37.86.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jak34-00089B-58
 for linux-mtd@lists.infradead.org; Mon, 18 May 2020 17:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=1409; q=dns/txt; s=iport;
 t=1589824773; x=1591034373;
 h=from:to:cc:subject:date:message-id;
 bh=I6Ye1oWv20B/Y6eYK4Iqy3OEerd2+jAvxiUKGYznuqo=;
 b=MYFCMeDkjwhy+ggODO8sP8T2AQ7PgXmhypyokvTpyshWPHyB1JsIqlQJ
 d35Uk3T0qJRmdhchagZdepHNn94I/ivf0RKPfnDIjzpg0WZu2CnGBtlXR
 F1R7DngPWhZnHwyvnUU1l71h63RMnQcNe/KoNNOislgn7xHUjzL+SJ9DZ Q=;
X-IronPort-AV: E=Sophos;i="5.73,407,1583193600"; d="scan'208";a="768458453"
Received: from rcdn-core-10.cisco.com ([173.37.93.146])
 by rcdn-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 18 May 2020 17:59:32 +0000
Received: from zorba.cisco.com ([10.24.1.223])
 by rcdn-core-10.cisco.com (8.15.2/8.15.2) with ESMTP id 04IHxUGL000659;
 Mon, 18 May 2020 17:59:32 GMT
From: Daniel Walker <danielwa@cisco.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 2/2] mtd: spi-nor: intel-spi: fix forced writable option
Date: Mon, 18 May 2020 10:59:30 -0700
Message-Id: <20200518175930.10948-2-danielwa@cisco.com>
X-Mailer: git-send-email 2.17.1
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-Outbound-SMTP-Client: 10.24.1.223, [10.24.1.223]
X-Outbound-Node: rcdn-core-10.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_105934_275998_BB6F0AEE 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [173.37.86.79 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.79 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, xe-linux-external@cisco.com,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Jinhua Wu <jinhwu@cisco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This option currently doesn't work as expected. If the BIOS has this
flash as read-only there is no way to change this thru the driver.
There is a parameter which allows the flash to become writable with the
"writable" option to the module, but it does nothing if the BIOS has it
set to read-only.

I would expect this option would make the flash writable regardless of
the BIOS settings. This patch changes this option so the BIOS setting
doesn't stop the writable option from enabling read write on the flash.

Original patch by Jinhua Wu <jinhwu@cisco.com>

Cc: Jinhua Wu <jinhwu@cisco.com>
Cc: xe-linux-external@cisco.com
Signed-off-by: Daniel Walker <danielwa@cisco.com>
---
 drivers/mtd/spi-nor/controllers/intel-spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/controllers/intel-spi.c b/drivers/mtd/spi-nor/controllers/intel-spi.c
index e5a3d51a2e4d..68a5877bfc0b 100644
--- a/drivers/mtd/spi-nor/controllers/intel-spi.c
+++ b/drivers/mtd/spi-nor/controllers/intel-spi.c
@@ -954,7 +954,7 @@ struct intel_spi *intel_spi_probe(struct device *dev,
 	intel_spi_fill_partition(ispi, &part);
 
 	/* Prevent writes if not explicitly enabled */
-	if (!ispi->writeable || !writeable)
+	if (!ispi->writeable && !writeable)
 		ispi->nor.mtd.flags &= ~MTD_WRITEABLE;
 
 	ret = mtd_device_register(&ispi->nor.mtd, &part, 1);
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
