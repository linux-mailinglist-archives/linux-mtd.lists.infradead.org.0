Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 511511C4AB0
	for <lists+linux-mtd@lfdr.de>; Tue,  5 May 2020 01:54:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tA34gSJnqVjHII2piDFFibnfT+H5lWn9lSlOH4xFiAQ=; b=tDX
	68EdFjaQbIyIQkZ68zCbaROfncUFPZj3WXv2GV0n2W86KQf7l33vsEwS4PcVdgIjtuINKeLwZ+nfe
	vNAweWibl+o4PdSG6AHEX6gZJlY1A+QbMJ8sz3QzpxueO6okMCcbZEpwKrOtF0VGqu4bVXMN8MDgW
	LEWyky1H/9x5OMLSXiazON5R9A2jI2HlxvNxrKOaOTA6NzzSqlxts5lVoLBQZyHCeuZbQE52VgOYx
	mqJG0y7ux2d1IGlb0cQe8vX+sRaWTUhR3/GEeE4UN7QSjxASbGGSu8yhkW9SjOxKCymm6LcJDtndh
	AInJbNHfsznPnXjgMEICyuVN7BloZcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVkvD-00030C-3J; Mon, 04 May 2020 23:54:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVkv6-0002zJ-V1
 for linux-mtd@lists.infradead.org; Mon, 04 May 2020 23:54:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id y24so199688wma.4
 for <linux-mtd@lists.infradead.org>; Mon, 04 May 2020 16:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yKobP0d+YE9fqWTVBjM8NgVHDYkeVvv/+2LiM8akl8E=;
 b=DtEOiAVzsjODFUCGMGNHWkkg/QB4j93j1k2stANRhYoqqIoQBMZMqL7bff/n6FT6QK
 pAViJwcRNhbVy65QoP7lOh9l8MF+HpA4aSpPTuuQ1jmYBjCGe7TWrI6wHoKGamHyOjei
 3RQEVmMLGQm8H/67MBzWQ+4IVzMVaKElov6EZ8P8c94zefhFxgpmTHsHdbQ+VIfukRE9
 JzLOQOjzTzCUWIQEyUIwvYPxKpTx/9NxOJm2V9ZRubScsB1UEifEDKJoMWJG2sCgTqjo
 ZyLvaQBZQ5+KFWoxSXBlo1/64VItECbYeqi6wyMWeOipcEnIn/qEfGgyGu5bT35gFsyI
 Ghjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yKobP0d+YE9fqWTVBjM8NgVHDYkeVvv/+2LiM8akl8E=;
 b=YHe14B41D9JSnfvSirkbZRObhs87YbKXQd6Z2mWqBmAm+HsxdnrejkF6t300Ui4NTb
 bpVMhDRqhT2gGkBxaEfZF9D4JQjbBNJsMs1fUM+aknEZs6TByjMPwT2Xovgusiria60x
 tcHwjQPKnw2vod58PwyE+He4xq3IvyN5hTSka+ysI/QqwD7S4O1r8YIpOgkjh9RYLRhx
 zjWRbJP5V6Ehi6OBcQ5wfFmcq3PwMI4sSes29sIbh5dgHs3J7hzNDjfW+GCfz/9e4LOb
 UOP4nexvrsMCxQOcl5Eu6PYWWltgFMn7wi7MAYz24+x1b/UOS9W9/qXKSdl6JDZSzbIs
 hyzQ==
X-Gm-Message-State: AGi0PuZ5ISbPBvuTC9i4eDDR65ZDsybD7ZAH7t59NIHvJDJDoECNLVTY
 a5dmfgvWIJEh8LLZ2TP5Kx4=
X-Google-Smtp-Source: APiQypJs/O9zhA/4dyvRB2eoRAkmSEA7TW79fXqp1fel21Z13TuUNgqNw8DA2casKCFpX3jHbZBKsA==
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr207981wmg.143.1588636481538; 
 Mon, 04 May 2020 16:54:41 -0700 (PDT)
Received: from mail.broadcom.com ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id a125sm972385wme.3.2020.05.04.16.54.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 May 2020 16:54:40 -0700 (PDT)
From: Kamal Dasu <kdasu.kdev@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>
Subject: [Patch] mtd: set master partition panic write flag
Date: Mon,  4 May 2020 19:54:02 -0400
Message-Id: <20200504235403.13504-1-kdasu.kdev@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_165445_020799_F305E1BA 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kdasu.kdev[at]gmail.com]
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
Cc: linux-mtd@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, Kamal Dasu <kdasu.kdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Check and set master panic write flag so that low level drivers
can use it to take required action to ensure oops data gets written
to assigned mtdoops device partition.

Signed-off-by: Kamal Dasu <kdasu.kdev@gmail.com>
---
 drivers/mtd/mtdcore.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
index 2916674208b3..7e37ed2f38ea 100644
--- a/drivers/mtd/mtdcore.c
+++ b/drivers/mtd/mtdcore.c
@@ -1235,8 +1235,8 @@ int mtd_panic_write(struct mtd_info *mtd, loff_t to, size_t len, size_t *retlen,
 		return -EROFS;
 	if (!len)
 		return 0;
-	if (!mtd->oops_panic_write)
-		mtd->oops_panic_write = true;
+	if (!master->oops_panic_write)
+		master->oops_panic_write = true;
 
 	return master->_panic_write(master, mtd_get_master_ofs(mtd, to), len,
 				    retlen, buf);
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
