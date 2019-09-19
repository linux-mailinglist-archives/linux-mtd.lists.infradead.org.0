Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702A3B819F
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Sep 2019 21:44:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KggHMII/MCTchlmNd6ypWs1u0z96BX5cD5zV2U2PsE=; b=SQVdr5TtEKGiZD
	Gv1oQp63cSjmH0cqx76K5w1AO+aYybAcgnGSmWssFAcWG5i93ycybHWygUhtah6hMk4OBWD7Tx36y
	SsZhWs506QN5v3JmG7rk4DqTMRiTNjieBbUJYGjKzngiKj7tHYgqYszz4oubqeVtZdgUd1PnMY5SI
	Gu+YcZ1WBB9PuM0E9LTqqCmSc6XhXvFqmThNL2b9JjqEQJBYf2MjFy2IWJVJzytutjoRBkuV4R65s
	fZzMhXVPUeju2Rf4q15kWwL13Dah4wduw9t2MuxB0QwNI5G2zaVvtBWZ4XoyYB9xQip6xfCcX1bhh
	aPnXgu9l6cbFlcE5i0dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB2MA-0003Jr-OU; Thu, 19 Sep 2019 19:44:46 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB2A4-00029K-4i; Thu, 19 Sep 2019 19:32:17 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9FF20240009;
 Thu, 19 Sep 2019 19:32:12 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Vignesh Raghavendra <vigneshr@ti.com>
Subject: [PATCH v3 13/40] mtd: nand: Add more parameters to the nand_ecc_props
 structure
Date: Thu, 19 Sep 2019 21:31:13 +0200
Message-Id: <20190919193141.7865-14-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190919193141.7865-1-miquel.raynal@bootlin.com>
References: <20190919193141.7865-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_123216_378726_35F7C463 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Tudor Ambarus <tudor.ambarus@microchip.com>,
 Julien Su <juliensu@mxic.com.tw>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Paul Cercueil <paul@crapouillou.net>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Mason Yang <masonccyang@mxic.com.tw>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Prepare the migration to the generic ECC framework by adding more
fields to the nand_ecc_props structure which will be used widely to
describe different kind of ECC properties.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 include/linux/mtd/nand.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/linux/mtd/nand.h b/include/linux/mtd/nand.h
index 7072f14239e5..11cd7cc81a7a 100644
--- a/include/linux/mtd/nand.h
+++ b/include/linux/mtd/nand.h
@@ -129,12 +129,20 @@ struct nand_page_io_req {
 
 /**
  * struct nand_ecc_props - NAND ECC properties
+ * @provider: ECC engine provider type
+ * @placement: OOB placement (if relevant)
+ * @algo: ECC algorithm (if relevant)
  * @strength: ECC strength
  * @step_size: Number of bytes per step
+ * @flags: Misc properties
  */
 struct nand_ecc_props {
+	unsigned int provider;
+	unsigned int placement;
+	unsigned int algo;
 	unsigned int strength;
 	unsigned int step_size;
+	unsigned int flags;
 };
 
 #define NAND_ECCREQ(str, stp) { .strength = (str), .step_size = (stp) }
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
