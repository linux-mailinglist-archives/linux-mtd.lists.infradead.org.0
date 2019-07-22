Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1926F949
	for <lists+linux-mtd@lfdr.de>; Mon, 22 Jul 2019 08:02:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9xmkiaqIcVyWixYm7t0T3kJwiayDZoxST1hda7Fc7I=; b=bAtm6oaoFpQkXr
	35ZRAZVhccvYTIwhYUIR+Pgp68XUT+gAoqMfk/oK5AwgVoUtcTx1FCHhDVS1v1o2WKOtoI2QiSO0f
	6PLdJeKxLdYBqk0J2O6naX6LjeH+K2o95s4JkZoqpzzkAH0n7Ks+kPtae0ZkX8wgcDHBaPoCqnEZP
	XtmgIO+p5uHEsLgjswbAswfE2uh40EwJ7UUHIeCBZ+8W+hhs1Hl2zB+2ec2FjcMMqLg5cXXRQXYuE
	HSH0nwwgRzLMA4ythA/++BpvxH4iGa+igDEX77xzW3T2Zwu9OWCtNzHu5CBOx0iWIF3rQY7/N+L2N
	LoA8zVRCbHi1orothdgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRPC-0002rZ-DY; Mon, 22 Jul 2019 06:02:38 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRJz-0006EZ-7F
 for linux-mtd@lists.infradead.org; Mon, 22 Jul 2019 05:57:16 +0000
Received: by mail-ed1-x542.google.com with SMTP id k21so39510180edq.3
 for <linux-mtd@lists.infradead.org>; Sun, 21 Jul 2019 22:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=TqB0rOZLlIYh0a/SpSOrS2aG6wy2S7sHIDUEyeUZVZg=;
 b=gezfKoa3qKy7xPyCUHoxaFJthIwAlw54R2fUek3dXgLyhqVEMHotVYj8+wwaIHrNjC
 IYvfBBQU/JhMWxByqEbyyQipkJJ54h9RUgitieBUKDeIrPLVY7V3O+ZCwxnlxto2GTIb
 UlZj2kUAdLp0mDSWbArVC1AiJO1iT7lxNdWDZdQ6U35CzScgzRWjVOJd16sg0WeTOc6e
 R6fadiWy9m1YNkLIJ3JCB7mVUUuAh5EASppf0MiPR1eA9/fxkO4H0IiGWym1mYJgJu45
 uGUXlOj3BVHEYF+D3xNbDQotLWAdcNhlTTsomh7E+7jYzNqmCSntkgR8PpAV36Coqcrq
 jjKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=TqB0rOZLlIYh0a/SpSOrS2aG6wy2S7sHIDUEyeUZVZg=;
 b=MKCIjZOrBJ+ny+5Kc+Ssa3qisefbG34l5OqZakWsJkqQ3VwKk1ZFIkBD6HN70TI3Jb
 c7LueeRo0MFe2und/gCY6+sL0FocIf/zxmLmxgcCsg8bgSbMPr4uZvxXWuV9RI7Bwpy6
 2ZkrL7odRaMLDI93EYxTi06x+Ka3wJV6CA+WNJVMj1FvcfOwQ8y+YZhYTG/4lJ0INuu2
 vozZlCYrizIZ53PezFlcjc6j1qjYvA+UL8mns3G4NHqaQQnvVXaozAjUIXBedI68ygFE
 fKGX5lfuc0JpQzyVfrtRrrS+0qun8hW9s1NHAtjjX67JujU/fPI2gy55Ht8kfNUiWTle
 DWvg==
X-Gm-Message-State: APjAAAXecviTc7PmNf3Lve7VpCptv2GY49fSoLsqnT70o4w9JYFMQQ15
 WP/iLAw3hExUajnIkPFCe5U=
X-Google-Smtp-Source: APXvYqx6ImEFwf8Is2ljvvdc4l0y2Rhn6dNHfM+qK/yx45nzcqfiYPSyeBCbYyIS9F+jcjplkkTHxQ==
X-Received: by 2002:a17:906:af86:: with SMTP id
 mj6mr6292915ejb.157.1563775033987; 
 Sun, 21 Jul 2019 22:57:13 -0700 (PDT)
Received: from opensdev.fritz.box
 (business-178-015-117-054.static.arcor-ip.net. [178.15.117.54])
 by smtp.gmail.com with ESMTPSA id a6sm10351725eds.19.2019.07.21.22.57.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 22:57:13 -0700 (PDT)
From: shiva.linuxworks@gmail.com
X-Google-Original-From: sshivamurthy@micron.com
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Shivamurthy Shastri <sshivamurthy@micron.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jeff Kletsky <git-commits@allycomm.com>,
 Chuanhong Guo <gch981213@gmail.com>,
 liaoweixiong <liaoweixiong@allwinnertech.com>
Subject: [PATCH 7/8] mtd: spinand: micron: Fix read failure in Micron M70A
 flashes
Date: Mon, 22 Jul 2019 07:56:20 +0200
Message-Id: <20190722055621.23526-8-sshivamurthy@micron.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190722055621.23526-1-sshivamurthy@micron.com>
References: <20190722055621.23526-1-sshivamurthy@micron.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_225715_339423_14D9266F 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (shiva.linuxworks[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Shivamurthy Shastri <sshivamurthy@micron.com>

M70A series flashes by default enable continuous read feature (BIT0 in
configuration register). This feature will not expose the ECC to host
and causing read failure.

Signed-off-by: Shivamurthy Shastri <sshivamurthy@micron.com>
---
 drivers/mtd/nand/spi/micron.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/mtd/nand/spi/micron.c b/drivers/mtd/nand/spi/micron.c
index 6fde93ec23a1..1e28ea3d1362 100644
--- a/drivers/mtd/nand/spi/micron.c
+++ b/drivers/mtd/nand/spi/micron.c
@@ -127,6 +127,15 @@ static int micron_spinand_detect(struct spinand_device *spinand)
 	return 1;
 }
 
+static int micron_spinand_init(struct spinand_device *spinand)
+{
+	/*
+	 * Some of the Micron flashes enable this BIT by default,
+	 * and there is a chance of read failure due to this.
+	 */
+	return spinand_upd_cfg(spinand, CFG_QUAD_ENABLE, 0);
+}
+
 static void micron_fixup_param_page(struct spinand_device *spinand,
 				    struct nand_onfi_params *p)
 {
@@ -150,6 +159,7 @@ static void micron_fixup_param_page(struct spinand_device *spinand,
 
 static const struct spinand_manufacturer_ops micron_spinand_manuf_ops = {
 	.detect = micron_spinand_detect,
+	.init = micron_spinand_init,
 	.fixup_param_page = micron_fixup_param_page,
 };
 
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
