Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1EA11F3AA
	for <lists+linux-mtd@lfdr.de>; Sat, 14 Dec 2019 20:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XRFxeUkjWdBEbcxJyVAC/8SsBjDwJbWNsnB5maTj8Kg=; b=ZHGeywS1a6XQK0
	YZ+0lEj7Ze7fRET2OoDT+a7TP/yF1ndFmq9x7uJGNWFdkxsQ7QdAZ/aUQ3e2PyoCTCWSVjZxTDZJy
	uHYbdZAWEULUI91eYnLFIRm5rP7pihAuHU36ZQR/pcPGijgq86t3R5OTK/+IquHOSIt4XVVCmDGF2
	9ABd+t8G+iNufioHKZnig7wwupzgMGfdWWAXmhos897VSfTmynCo6kHXiAAZ8+CZacZdR57/APBfq
	0rNBNUdPuWqF9+zPgimyTSnpHi+DfwJ6+EVTs0Op9jD+GNXDOIy5dycCGAaxeiskp3KnehprdhB13
	EspuLUMBnEClIZt/2qnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igCyU-0000Z2-Nc; Sat, 14 Dec 2019 19:21:10 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igCy5-0000PH-RV
 for linux-mtd@lists.infradead.org; Sat, 14 Dec 2019 19:20:48 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 2B35823D06;
 Sat, 14 Dec 2019 20:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1576351234;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=ysL33np8BhyER+fKb3WeaE9uREJDfQ24GzS2e8pwjVM=;
 b=urKzNnWl7W9ntJNgz/JcLqu7bxbv+9W+rCNhoIJgIBG+ICP6RDNdT7jR5NueER9veiIxaj
 f0JGpp3oLLYZLNUvV3o3zPuYuRiVyQggUauNZFRxL8G0Wssb+4hEdGxQXcOWBqBC/ljgWC
 cWse9yfwrjI5+t/2OrO6mW7f7cf3dQQ=
From: Michael Walle <michael@walle.cc>
To: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: mtd: spi-nor: document new flag
Date: Sat, 14 Dec 2019 20:19:42 +0100
Message-Id: <20191214191943.3679-1-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 2B35823D06
X-Spamd-Result: default: False [6.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_SEVEN(0.00)[10]; MID_CONTAINS_FROM(1.00)[];
 NEURAL_HAM(-0.00)[-0.700]; RCVD_COUNT_ZERO(0.00)[0];
 FROM_EQ_ENVFROM(0.00)[]; MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191214_112046_049968_1FB0F5D5 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

Document the new flag "no-unlock".

Signed-off-by: Michael Walle <michael@walle.cc>
---
Does the property need a prefix? I couldn't find any hint. If so, what
should it be? "m25p," or "spi-nor," ?

 Documentation/devicetree/bindings/mtd/jedec,spi-nor.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.txt b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.txt
index f03be904d3c2..2d305c893ed7 100644
--- a/Documentation/devicetree/bindings/mtd/jedec,spi-nor.txt
+++ b/Documentation/devicetree/bindings/mtd/jedec,spi-nor.txt
@@ -78,6 +78,12 @@ Optional properties:
 		   cannot reboot properly if the flash is left in the "wrong"
 		   state. This boolean flag can be used on such systems, to
 		   denote the absence of a reliable reset mechanism.
+- no-unlock : By default, linux unlocks the whole flash because there
+		   are legacy flash devices which are locked by default
+		   after reset. Set this flag if you don't want linux to
+		   unlock the whole flash automatically. In this case you
+		   can control the non-volatile bits by the
+		   flash_lock/flash_unlock tools.
 
 Example:
 
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
