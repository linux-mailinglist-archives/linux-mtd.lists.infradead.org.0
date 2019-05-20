Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693DC240DE
	for <lists+linux-mtd@lfdr.de>; Mon, 20 May 2019 21:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2fT2fpFYySscOzlGeIHZTBNXt6rRauu40d2Bmu12Cgk=; b=bkwZept2bh769SwxIK2F+T2kgZ
	GHXJulko2m+/iEcGxShqFarIp4LvPRAWytqOrybU/USKTwE7PaTZkxirUpnw+YXS7BKvqGYvuiNAB
	AjX7Bzp6i3aoO3TsVlTKhfnDc7+Mtj1n0SjVlROQh+pUNG+ITORfGSW/22ji1XkNTcdJvQ48yPw4V
	9UQVHjhm8aTgDNuHuJ2fJRRJk9a8/EZOowfabjXmA34hDVVmTWIjzp4oK4RzbtnWmF9FUDJoZwjHF
	Y8ZxeRtmGn10Xkl0+SMnmHIyLV+27UIPGZ0VLwFT1/WzejuJhfaz8hmmrZPVKt8IgVj2SaOsMfZbF
	w/wHEGiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSnc7-0004pf-EV; Mon, 20 May 2019 19:06:23 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSnbx-0004lJ-8V
 for linux-mtd@lists.infradead.org; Mon, 20 May 2019 19:06:15 +0000
Received: by mail-ed1-x544.google.com with SMTP id w11so25398352edl.5
 for <linux-mtd@lists.infradead.org>; Mon, 20 May 2019 12:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Ha5skDnnLVo1GJdX/CM9NCe/isDa5RVzOLC2hACwN2I=;
 b=axsFtOim/WJJUWbZJz8/i03Ph3xHSdnz2DNiFe2Q6ydh5h1ov4vVORzsbiXKu4xf3q
 T8qv/PEpxWr/0XCWg+dWz8Fbaqo589CjX1+CVNrsRQPm6vq6/RXK4BqJzc9BhtvujQrZ
 demB+VLNkgwH1e0xE3eug2/mCTuZFgVuDohU1BXXR1t0EH3Y4i/vbvv0uxYEIFLqOCEC
 TPGQYB4l2GEP/AQW0Gok9TgGpg3Cw1wI6/Ut7kpZeQzBoL8bJ232hzUu8gdtfCfJfWHN
 EjgU7pK/15Z32ja3bM/p+QKiSiu6Yy0oYnjSC4CtNuX0geMW+vdVUWmEhToZq0HwBiug
 6bBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Ha5skDnnLVo1GJdX/CM9NCe/isDa5RVzOLC2hACwN2I=;
 b=VY0HKbBXwwY0Jf3mcLTgFYlZC3US6HGVlEUw6YrXOkm+ga7s+cd1LQrOvhEA3XS6wT
 5Snwjjl73cUanQh+swSBLtKt2LvwhRfm4KMJdSUux4nhgX92qZSBy5uDxTmR6d5SJH70
 UeVRHsOAJXJ/lhlkWnALtOwdo+0+34IPdAAQP4BeZ+nFJmH7+zONqjPdVM4GC9qggdB3
 hVKN7HEZfymLxF+qpDmio9IJSApFaCD4jKqRw6pclBHB2NuKMriNMc9shPJhwmMJakma
 h7T7PQ8OymawLsPg1QSXI4jV8I7Zb1u9K/33V6+OzVzariV3akkDZvSU//CQQbQ15vHZ
 GuhQ==
X-Gm-Message-State: APjAAAUK+ak/+Y62y1gHCP83xqfnyR7L49xeYZfYq3oyMwm0INbab7zq
 1ah8J9tWvPxMYC7fov7ZlZR5iBky
X-Google-Smtp-Source: APXvYqyWvFHznLLZAKJYcWfcC8Mw2lOlwRgpCokpiyR1YDPRGyEJ1tL7Kq0aOnmIeJBSNK8fKiOsAQ==
X-Received: by 2002:a17:906:1303:: with SMTP id
 w3mr8731735ejb.196.1558379171104; 
 Mon, 20 May 2019 12:06:11 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id 11sm3201967ejv.64.2019.05.20.12.06.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 12:06:10 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2 2/2] mtd: nand: raw: brcmnand: fallback to detected
 ecc-strength, ecc-step-size
Date: Mon, 20 May 2019 15:05:12 -0400
Message-Id: <1558379144-28283-2-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
In-Reply-To: <1558379144-28283-1-git-send-email-kdasu.kdev@gmail.com>
References: <1558379144-28283-1-git-send-email-kdasu.kdev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_120613_308308_3A51E4DC 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This change supports nand-ecc-step-size and nand-ecc-strength fields in
brcmnand DT node to be optional.
see: Documentation/devicetree/bindings/mtd/brcm,brcmnand.txt

If both nand-ecc-strength and nand-ecc-step-size are not specified in
device tree node for NAND, raw NAND layer does detect ECC information by
reading ONFI extended parameter page for parts using ONFI >= 2.1.
In case of non-ONFI NAND parts there could be a nand_id table entry with
ECC information. If there is valid device tree entry for nand-ecc-strength
and nand-ecc-step-size fields it still shall override the detected values.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index ce0b8ff..a4d2057 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -2144,6 +2144,17 @@ static int brcmnand_setup_dev(struct brcmnand_host *host)
 		return -EINVAL;
 	}
 
+	if (chip->ecc.mode != NAND_ECC_NONE &&
+	    (!chip->ecc.size || !chip->ecc.strength)) {
+		if (chip->base.eccreq.step_size && chip->base.eccreq.strength) {
+			/* use detected ECC parameters */
+			chip->ecc.size = chip->base.eccreq.step_size;
+			chip->ecc.strength = chip->base.eccreq.strength;
+			pr_info("Using ECC step-size %d, strength %d\n",
+				chip->ecc.size, chip->ecc.strength);
+		}
+	}
+
 	switch (chip->ecc.size) {
 	case 512:
 		if (chip->ecc.algo == NAND_ECC_HAMMING)
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
