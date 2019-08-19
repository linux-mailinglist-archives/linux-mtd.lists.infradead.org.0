Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54D89503B
	for <lists+linux-mtd@lfdr.de>; Mon, 19 Aug 2019 23:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GVvLqbViBYZ1CYvCp61jYt9/aQJ3ksQ5hk9BuLGiQX0=; b=RCU
	/H+XqlJmiLbXy8cufrqdRpxaPjyvXfKQT6B+BUg50gqkAhTrqx1x8a29rTkWoVJYaTRMy2gsg+oot
	Fx2nTkCe9yZjWPU0cmPx+XgBIzmykxOtIvpEDxmFn2Zs0kvPlaQ55KOwxqBZzod4T12lYqmCF54la
	oN50ttqNxx6EBGSs+M+b2wUnJSrJZAMUGkVrsMQSIhwSM1F8plyaolOaDq38CO/QXQGAEK36H6V5L
	JyTrFUuJ35C7BYS+uso0pO7NYDSZ51q+P2UpBCdIXSAEZdTVTBKD/sdF/5YEF2lKVElm6Yr7wnmfW
	34PkJvuKzPkGg43UmQ8jfU2IM+/18JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzpci-0001To-3x; Mon, 19 Aug 2019 21:55:32 +0000
Received: from mail-yw1-f65.google.com ([209.85.161.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzpcQ-0001T7-R5
 for linux-mtd@lists.infradead.org; Mon, 19 Aug 2019 21:55:16 +0000
Received: by mail-yw1-f65.google.com with SMTP id x74so1454730ywx.6
 for <linux-mtd@lists.infradead.org>; Mon, 19 Aug 2019 14:55:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=j8ArHqoH8hRKY32uSG2n9B6xxahAFt/eVeW0eXi2ctw=;
 b=eXmr7KKivelP7qfOuQlRdiRW0Ihq2d5aOIXby52bTgatSj028+A02X4U5ZKYAkzlUN
 rhJvWxnw7uiw4vQaMDsUQqIORerW9dPL5mwRGH1lsK7e/XPi0L8XMnUGdjpLpE2a8xGr
 jgHV/O+enJP/W3upmHRvHNfuTpUF5lNLMfVEl3euK7KQjWviUcuB6hHm8pViTXWbEx6R
 9ak8iAeB0qIH9QUXtwV9FXrzRB45FBGjlJ6U6BG3PybAhWMqZLWvr73qOWV6gX7ONpNy
 jDke4YyxMZyz6ISgM8mjXUnzRM0CpFLTLzGHZCqDat8fUzWlHsl97BQGxmKrwHJlVCsF
 gv3A==
X-Gm-Message-State: APjAAAWO60TetHxHDEAdTysx6mhM8Wtvw3x+k0QZMaQu8vfgzeLwva51
 55H8aTSD8bFQMu7BWk0D+m0=
X-Google-Smtp-Source: APXvYqySihgswsPdsn5yT2rV1y9hK5Ju/ANr2ecCzBrhFmjclQf/vl/w/di3HiumNmRyWIEBt434dA==
X-Received: by 2002:a81:f81:: with SMTP id 123mr14292554ywp.469.1566251713421; 
 Mon, 19 Aug 2019 14:55:13 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id x10sm3491960ywl.16.2019.08.19.14.55.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 14:55:12 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] jffs2: fix a memory leak bug
Date: Mon, 19 Aug 2019 16:55:04 -0500
Message-Id: <1566251705-7133-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_145514_879266_57BDBC90 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.65 listed in list.dnswl.org]
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
Cc: Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:JOURNALLING FLASH FILE SYSTEM V2 JFFS2"
 <linux-mtd@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In jffs2_scan_eraseblock(), 'sumptr' is allocated through kmalloc() if
'sumlen' is larger than 'buf_size'. However, it is not deallocated in the
following execution if jffs2_fill_scan_buf() fails, leading to a memory
leak bug. To fix this issue, free 'sumptr' before returning the error.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 fs/jffs2/scan.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jffs2/scan.c b/fs/jffs2/scan.c
index 90431dd..5f7e284 100644
--- a/fs/jffs2/scan.c
+++ b/fs/jffs2/scan.c
@@ -527,8 +527,11 @@ static int jffs2_scan_eraseblock (struct jffs2_sb_info *c, struct jffs2_eraseblo
 					err = jffs2_fill_scan_buf(c, sumptr, 
 								  jeb->offset + c->sector_size - sumlen,
 								  sumlen - buf_len);				
-					if (err)
+					if (err) {
+						if (sumlen > buf_size)
+							kfree(sumptr);
 						return err;
+					}
 				}
 			}
 
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
