Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A6910D26
	for <lists+linux-mtd@lfdr.de>; Wed,  1 May 2019 21:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0zmg9haMsoT6NXVKHV3Dh71tiSYPfMnIzYP0BBfhok4=; b=AuD
	POvLuTSiVPT+V/S02/4i+VItH+Y3wsqj65XFd832SdQgOlGxsLHoi13ixOX7tuZJxWyuCSzxo0g/R
	gp8r4wyYI2/GTbYRmdV2YnXz18KzVJzJV7GBsZXYuFKC4Q1TJ1Ed2Nk8605utCT2irhYRncJG3vcE
	4hD5QjBWAZawb50qFwNi45Q61pRmhkf3R+YJOQicRubU9E/q61FLWu7wvMBHLPGYNSVoRPuhADe6b
	fXXDeE37efIPsgu8HwM3+Xr3w8D8aJbQ63YYWmgUULklNBc/hZH+WlCUL79fLa6G3m9WqP93ptFjy
	DzuSM5YWQ7sKlhJ7roTFGb+evdrstnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLuob-00031b-VE; Wed, 01 May 2019 19:22:49 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLuoU-00030j-Ax
 for linux-mtd@lists.infradead.org; Wed, 01 May 2019 19:22:43 +0000
Received: by mail-ed1-x542.google.com with SMTP id j20so114176edq.10
 for <linux-mtd@lists.infradead.org>; Wed, 01 May 2019 12:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=T7DidsTvqZaeVynddvHxxBbAAEvCO8/AfOY7nE2AqW8=;
 b=KHu23Ma6nMbPVzQb2iomiVuHbgOJlZeyOzYz7talegjesg/G2vqf5OjeHTAmg4eOE0
 IE+g5ARBtPYe/hV8jYk5sqOifHKJ7YWWHQnxK/XAy0C2Sb2pE90Itd2NzyV5MGGK8ABS
 Jv/HChG970YtLduHqoDISBOiwMWWrO+ixat8GlM2m/GPBxUOCx0C4Er3cAWpJXIIPPhT
 KP5SDDDpnH25A9ZbKiPQK+qkMvrElZA25R0kUqHKFtKO/TV2+THHICcn1NSRnANQpgmF
 RQA51mRYKhpOx1hTiy+JhPhNpsZYkqqDaBBxm/J3go71JPj6yd2BrgULUEhwvqDh7GAG
 45Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=T7DidsTvqZaeVynddvHxxBbAAEvCO8/AfOY7nE2AqW8=;
 b=NUhyEdKvj2Kd3Yv5S1PiSsKFuYHrj/Cz04/u1xS/1H5h6SbMBIcSfwHn3u7x09Jh3t
 xUf515+y5Dh1a5YWp87/tERKtbiJ46TgAHpHIDqdpWCzE6gbRWP27fOfFpCp16klAqpf
 vjl2YstjYS/koYBQNNjq9cKREA1qMoYSKaX3Fw3lviTibw4plY2uiwkCgt7Cl2hI1qMr
 C+OGFa79udNCGQhDjF35opxfixphEDhMjjh57L26/UYVS86w4EVP/h2wsVgtgtEmSj5o
 RFZx+JqaapnkMRTTnNt6l47KsTATrke/h2TRrPPMYgUZ7Lo0dffKq69jX9g3rQfQvqNI
 rUuQ==
X-Gm-Message-State: APjAAAUbYaZFGyMPafeetlAaonadGRpSWTNDWjYalqag8zHp/T35qwB7
 rtCnvwZ+vKptu3wuJXW6iRCbofxi
X-Google-Smtp-Source: APXvYqz4HSBDn3uHjHJ6HZyzyjEGVF0rgL9wjeexGQka8VXpbC0R4qEfbT9skPtWw3UlnrieJflsYw==
X-Received: by 2002:a50:e79c:: with SMTP id b28mr9954998edn.277.1556738558952; 
 Wed, 01 May 2019 12:22:38 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g6sm11144033edd.48.2019.05.01.12.22.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 May 2019 12:22:38 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: linux-mtd@lists.infradead.org
Subject: [PATCH v2] mtd: rawnand: brcmnand: fix bch ecc layout for large page
 nand
Date: Wed,  1 May 2019 15:22:14 -0400
Message-Id: <1556738544-29857-1-git-send-email-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 1.9.0.138.g2de3478
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_122242_401341_CA15B679 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kdasu.kdev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Boris Brezillon <bbrezillon@kernel.org>,
 Richard Weinberger <richard@nod.at>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

The oobregion->offset for large page nand parts was wrong, change
fixes this error in calculation.

Fixes: ef5eeea6e911 ("mtd: nand: brcm: switch to mtd_ooblayout_ops")
Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/nand/raw/brcmnand/brcmnand.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
index 482c6f0..3eefea7 100644
--- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
+++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
@@ -939,7 +939,7 @@ static int brcmnand_bch_ooblayout_ecc(struct mtd_info *mtd, int section,
 	if (section >= sectors)
 		return -ERANGE;
 
-	oobregion->offset = (section * (sas + 1)) - chip->ecc.bytes;
+	oobregion->offset = ((section + 1) * sas) - chip->ecc.bytes;
 	oobregion->length = chip->ecc.bytes;
 
 	return 0;
-- 
1.9.0.138.g2de3478


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
