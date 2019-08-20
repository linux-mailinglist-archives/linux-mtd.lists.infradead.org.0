Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 179E295529
	for <lists+linux-mtd@lfdr.de>; Tue, 20 Aug 2019 05:26:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=c+BiYkoZiM8RkMVtxr28cees0Kxy2OqYTaCpyPIoeF8=; b=HCY
	WVzNQZW15ZImEp8G4Z0BTMyGwuf9ryfBVzI5VAmtr5gPPs2Rttf71DQHgc6wQjA59nXYKi+HSmRnc
	PSM8M1HuPUpTVxIEyF+imppYyN7c1xjzPeXgpIdS84/gQYYxnvyrHPHw4mAZbXWt9e7pbQSPPE3KM
	9kATzdj30usbfCij6N3+HJVpgm6HmilmRKvDXaRQm8T4lpigSI8WYpWnnAwve2DFizauerbUN/0ID
	pDfN8tzU3q3My/+kcKlM5Z2AKDOXD3Zl8GB+gSpcoSS8a1MYpLCiPAvurJ7Y+2edDnE7DgZDMqhHE
	HmzKq2ITSgbWurCnfj9B3p9f5tQ/A9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzunB-00070J-3D; Tue, 20 Aug 2019 03:26:41 +0000
Received: from mail-yb1-f196.google.com ([209.85.219.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzulV-0004VM-Ht
 for linux-mtd@lists.infradead.org; Tue, 20 Aug 2019 03:24:59 +0000
Received: by mail-yb1-f196.google.com with SMTP id y21so1447321ybi.11
 for <linux-mtd@lists.infradead.org>; Mon, 19 Aug 2019 20:24:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4PBL1bXvyffgnqpG9faUgGd+kgjbdB5K1WLVO2WjDew=;
 b=gjIXOn/MT19aMrXQkn7MEZsDxcM7dymLzk+EqyMsuGA3vJ3vVeu2ZVQ2ELEcvZdhEg
 NrQ8bFjNi4IDbdsMsKwGBP+4WdE/UVw6xMIUS96F5WMfPIeD/WpAC5BoJH1xpvSp9Ud0
 nXeT6l2hT7QQydc6VWfnSyxkZTJ0/JsROU4hZgt8I4uySEfRSgI0bKIB/XlhqJaeqDGH
 grldnsQ9B9Oe1Y8PwMIybpZoD2CZZjx9I73jMiFckXFiZGcmecRe2JpGnBvfxS7qDBU0
 WeMY8Brk6m26p+0mgsruIjnmza7NYoexvwfTg0k0j5mYk/HTp7ztoDDuhrjMM2rJrrSu
 Xgiw==
X-Gm-Message-State: APjAAAVJMe3qGBNHqq23H1pfhVzZeBsijw3pOgJbcDPTcjDLaYnfpiFV
 FqbgwHXNAnVD8SHopVhxQ9s=
X-Google-Smtp-Source: APXvYqwjd36M+vpwT56jVjRWh+3YbgE5fUREcpEx9vjB6p47mzp7sGfFmYw2dqsktm+c0GUqDzehjA==
X-Received: by 2002:a25:324b:: with SMTP id y72mr6698233yby.361.1566271496511; 
 Mon, 19 Aug 2019 20:24:56 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id t63sm3433010ywe.103.2019.08.19.20.24.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 20:24:55 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] ubifs: fix a memory leak bug
Date: Mon, 19 Aug 2019 22:24:50 -0500
Message-Id: <1566271490-8533-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202457_821656_AB9E2A13 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>,
 "open list:UBI FILE SYSTEM UBIFS" <linux-mtd@lists.infradead.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 open list <linux-kernel@vger.kernel.org>,
 Artem Bityutskiy <dedekind1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In __ubifs_node_verify_hmac(), 'hmac' is allocated through kmalloc().
However, it is not deallocated in the following execution if
ubifs_node_calc_hmac() fails, leading to a memory leak bug. To fix this
issue, free 'hmac' before returning the error.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 fs/ubifs/auth.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/auth.c b/fs/ubifs/auth.c
index d9af2de..8cdbd53 100644
--- a/fs/ubifs/auth.c
+++ b/fs/ubifs/auth.c
@@ -479,8 +479,10 @@ int __ubifs_node_verify_hmac(const struct ubifs_info *c, const void *node,
 		return -ENOMEM;
 
 	err = ubifs_node_calc_hmac(c, node, len, ofs_hmac, hmac);
-	if (err)
+	if (err) {
+		kfree(hmac);
 		return err;
+	}
 
 	err = crypto_memneq(hmac, node + ofs_hmac, hmac_len);
 
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
