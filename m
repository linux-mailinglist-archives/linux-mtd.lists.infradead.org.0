Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4707E11F3A8
	for <lists+linux-mtd@lfdr.de>; Sat, 14 Dec 2019 20:21:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tr459yC0Tone5cNDaGslwgP0uM7oPwTx74gFeAiRQCs=; b=WfLDDpd8d35kn/
	efWB5WTP5+hx9/ND1dDM1P10Z/pRTxoMg+ZHy17jw1ZLUFiBodbRNLvwk4q8y6mVyvASMMsPFO0IC
	oGlgn16JbfZaAuEt3YJLMeHjhhstbL53gXEt4KC5i4mbu7qyw39zShbV/IS94q8FljivactAujuSA
	9TJTU2vux/P+7hmQlp3XndMMJxBBEbzB8Zf8Yu+AlZzEvr1Sa4xZLCw2Q4MMDWZSjSL5nt3WPfX1t
	I3/aMLCtMUh2PPqHOyS76Ra+Ovj05Ft+I2Qlm0/1QpKUXmGFa07NNmNmcxu3D/lPMShF9RwOYnYOz
	I6Vc9HnDNmjF0q4ihCCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igCyF-0000Rs-G9; Sat, 14 Dec 2019 19:20:55 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igCy5-0000PI-SQ
 for linux-mtd@lists.infradead.org; Sat, 14 Dec 2019 19:20:48 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 6787C23D22;
 Sat, 14 Dec 2019 20:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1576351234;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gjxbYEaca/vTHscXtSMHgXjg4LOanuSO0Q2tZkdqZ94=;
 b=D8XNfnrQ0Rvc7fo0XUilIeXZDPX4+zGsPHQRj8NGTrYC5GT6Pd2ERbPRA943sdNFxp9wZy
 /4OJWhne1cOtfLCaT7B053rSLwF0h1fyyg9A9L7cxJALgYWjsZovTiTdBcxtxkAf08YNxu
 NLqh24+qhYvfQLufa3nQpZ8DVXZ45v4=
From: Michael Walle <michael@walle.cc>
To: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] mtd: spi-nor: add option to keep lock bits
Date: Sat, 14 Dec 2019 20:19:43 +0100
Message-Id: <20191214191943.3679-2-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191214191943.3679-1-michael@walle.cc>
References: <20191214191943.3679-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 6787C23D22
X-Spamd-Result: default: False [6.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[10]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.709]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_112046_074037_0522D340 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Traditionally, linux unlocks the whole flash because there are legacy
devices which has the write protections bits set by default at startup.
If you actually want to use the flash protection bits, eg. because there
is a read-only part for a bootloader, this automatic unlocking is
harmful. If there is no hardware write protection in place (usually
called WP#), a startup of the kernel just discards this protection.

Introduce a new device tree flag to indicate that the flash should not
be automatically unlocked.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/mtd/spi-nor/spi-nor.c | 5 ++++-
 include/linux/mtd/spi-nor.h   | 1 +
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index f4afe123e9dc..d0bec0adf2f8 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -4910,7 +4910,7 @@ static int spi_nor_quad_enable(struct spi_nor *nor)
  */
 static int spi_nor_unlock_all(struct spi_nor *nor)
 {
-	if (nor->flags & SNOR_F_HAS_LOCK)
+	if (nor->flags & SNOR_F_HAS_LOCK && !(nor->flags & SNOR_F_NO_UNLOCK))
 		return spi_nor_unlock(&nor->mtd, 0, nor->params.size);
 
 	return 0;
@@ -5159,6 +5159,9 @@ int spi_nor_scan(struct spi_nor *nor, const char *name,
 	if (of_property_read_bool(np, "broken-flash-reset"))
 		nor->flags |= SNOR_F_BROKEN_RESET;
 
+	if (of_property_read_bool(np, "no-unlock"))
+		nor->flags |= SNOR_F_NO_UNLOCK;
+
 	/*
 	 * Configure the SPI memory:
 	 * - select op codes for (Fast) Read, Page Program and Sector Erase.
diff --git a/include/linux/mtd/spi-nor.h b/include/linux/mtd/spi-nor.h
index 5a4623fc586b..4cba5dda2d38 100644
--- a/include/linux/mtd/spi-nor.h
+++ b/include/linux/mtd/spi-nor.h
@@ -244,6 +244,7 @@ enum spi_nor_option_flags {
 	SNOR_F_HAS_LOCK		= BIT(8),
 	SNOR_F_HAS_16BIT_SR	= BIT(9),
 	SNOR_F_NO_READ_CR	= BIT(10),
+	SNOR_F_NO_UNLOCK	= BIT(11),
 
 };
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
