Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E9A954C0
	for <lists+linux-mtd@lfdr.de>; Tue, 20 Aug 2019 05:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M1GXWkn+CHUJPKio4Ao5lD/A+yNF/ZM3QXazVGBjj0I=; b=ubR
	hP8RUTbwZmGMTaf0QadYTrOB+J7DeVctMYakedmQajW1cOgf5/3SgqC3iSPdUd2RcYpJ4TqzVeRCp
	arN5b8jOMTf0vWSUAhSBh8R04ZhEq6B5Key0blUeri5xDE2fiI/BAM6X4m54tiTCARXog+Xgy3BX4
	BaZ1xDGj+FmUeo4omcmF3lmpbg1orYfBHJ87VAKYz/9SklwY0af2SJEYXrPYjf8dK15+HBL9wh5Gj
	GF7jqv0of+ewGdXvbdxyPreRaFf4a+D3y5kIXeWaBzVqyj+9xdgYlQdj+NC5MNetQe22rQuEu6LLp
	2jaMprHWu9H0Lck1ZPkMB5NagcvCJhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzuRJ-0001Cl-TF; Tue, 20 Aug 2019 03:04:05 +0000
Received: from mail-yb1-f194.google.com ([209.85.219.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuRA-0001C3-DA
 for linux-mtd@lists.infradead.org; Tue, 20 Aug 2019 03:03:57 +0000
Received: by mail-yb1-f194.google.com with SMTP id u32so1422628ybi.12
 for <linux-mtd@lists.infradead.org>; Mon, 19 Aug 2019 20:03:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=T/JaohmNZpvxoXfMBJgKQy6uqfXida8R0ifjCoHqJy4=;
 b=HFDv418xf/5KPJDC8xicZsWj1bRxzYwBHTzLO4a5r+jJD5lWNzOfUuTKuYiZby1XZZ
 QJ3DNMxGxtxDR1qd56+J3Y0W5H8+97c5VN2d8/0RgvCnbvdFkx6iVTdAdkXBiCVu3DRX
 +ZlUMnJIUdoPkT0eNROl/YLw0NZfSIFhl9lzU17llj6+k3ONbpnjyALSdxjxEhcjExXx
 zN3bFiptChsEl1kNPoOF8UXSEwx5teBVghurqaNgUQUIYiy0RkSv3PFP2KYL993O1v5b
 iFqQtoql6YzUPQYbqkEim7kf5FpKZynfyWG2h2TQ6oqhQsg82UjxcLVSZ9vjuxRypJ8h
 a6kw==
X-Gm-Message-State: APjAAAUF0JEXzkQq4nIwjz5CIh8Bb/dbSnJEdQ+/BrGFbdL8OHO4WhK6
 UMhgejtuIlVc8/yi5QlFhnE=
X-Google-Smtp-Source: APXvYqzj92UdY053NzsDDYyHqtOHbL0COKEx87/jaBUtYNVeYaHjYyT4RQ5O34XN5FvlCzo1AmUDug==
X-Received: by 2002:a5b:7c8:: with SMTP id t8mr18452781ybq.113.1566270233627; 
 Mon, 19 Aug 2019 20:03:53 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id z6sm3820879ywg.40.2019.08.19.20.03.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 20:03:52 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] ubifs: fix a memory leak bug
Date: Mon, 19 Aug 2019 22:03:46 -0500
Message-Id: <1566270227-8302-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_200356_446049_F7DCD9B0 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.194 listed in wl.mailspike.net]
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

In read_znode(), the indexing node 'idx' is allocated by kmalloc().
However, it is not deallocated in the following execution if
ubifs_node_check_hash() fails, leading to a memory leak bug. To fix this
issue, free 'idx' before returning the error.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 fs/ubifs/tnc_misc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/ubifs/tnc_misc.c b/fs/ubifs/tnc_misc.c
index 6f293f6..49cb34c 100644
--- a/fs/ubifs/tnc_misc.c
+++ b/fs/ubifs/tnc_misc.c
@@ -284,6 +284,7 @@ static int read_znode(struct ubifs_info *c, struct ubifs_zbranch *zzbr,
 	err = ubifs_node_check_hash(c, idx, zzbr->hash);
 	if (err) {
 		ubifs_bad_hash(c, idx, zzbr->hash, lnum, offs);
+		kfree(idx);
 		return err;
 	}
 
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
