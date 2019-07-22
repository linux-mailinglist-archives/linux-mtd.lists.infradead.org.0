Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA3B7083D
	for <lists+linux-mtd@lfdr.de>; Mon, 22 Jul 2019 20:16:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1iYBWXsmzhcX9HbrbKNE5uJpOOncHgL7IxeiQUSOtQQ=; b=o2kSicBB00Wb/a
	dvrli2DJFrXBggNee5yWGGRgSNoaYzSpEundikVDx+NM7J7LVS+SyA/MMnyt/tkmYF150Cyv8HvNj
	OtehLTSoj7MqrTFLMWCmh61fNcsV5S+d4+GVyIqYEAn5MobuU8HAPioAESFY8i2VwbELhaheL6DJi
	3QIY7RLOUBdmVH4rcP79sJE/9E1pz4woX/NGL8I9WqHx/pIrr73MW8fslz8rWcfKEuN56ykcM9tLK
	HXkLUMaAqWFBBPApccdgsWuMLZ9AVtrvQ9s5wM5jD3Rtb69ryUIWDPLqyAUgJgumoo8YASPsQ2gEV
	2MLAc8VD7IVAzzsLlKCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpcrI-0006G8-Tz; Mon, 22 Jul 2019 18:16:25 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpcqq-0006Fe-91
 for linux-mtd@lists.infradead.org; Mon, 22 Jul 2019 18:15:57 +0000
Received: from localhost (p54B33E22.dip0.t-ipconnect.de [84.179.62.34])
 by pokefinder.org (Postfix) with ESMTPSA id 593654A148F;
 Mon, 22 Jul 2019 20:15:55 +0200 (CEST)
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH v2] mtd: maps: pismo: simplify getting the adapter of a client
Date: Mon, 22 Jul 2019 20:15:49 +0200
Message-Id: <20190722181549.6798-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_111556_464025_6B424967 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Marek Vasut <marek.vasut@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

We have a dedicated pointer for that, so use it. Much easier to read and
less computation involved.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---

Change since V1:

* remove 'adapter' variable entirely

 drivers/mtd/maps/pismo.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/mtd/maps/pismo.c b/drivers/mtd/maps/pismo.c
index 788d4996e2c1..946ba80f9758 100644
--- a/drivers/mtd/maps/pismo.c
+++ b/drivers/mtd/maps/pismo.c
@@ -211,13 +211,12 @@ static int pismo_remove(struct i2c_client *client)
 static int pismo_probe(struct i2c_client *client,
 		       const struct i2c_device_id *id)
 {
-	struct i2c_adapter *adapter = to_i2c_adapter(client->dev.parent);
 	struct pismo_pdata *pdata = client->dev.platform_data;
 	struct pismo_eeprom eeprom;
 	struct pismo_data *pismo;
 	int ret, i;
 
-	if (!i2c_check_functionality(adapter, I2C_FUNC_I2C)) {
+	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
 		dev_err(&client->dev, "functionality mismatch\n");
 		return -EIO;
 	}
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
