Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EFB95637
	for <lists+linux-mtd@lfdr.de>; Tue, 20 Aug 2019 06:45:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9D1DDr8R/RuNJCZQMmoZbWqo7Nx6VS8D1tzVN/pW5Eo=; b=iBS
	k+1Almi4lkqX8scc1MNTBirq17nAqyLxiMauf0V7X3kwkqSrqOzD0+HV5fPVUNrRT02tNjFecrRVW
	Lbp7cOV155zr14whGEGyGns7JLLtMTUBbN3UK+ji8BEN5fPaEznHH261jTjFA5QponKiZZc20tobD
	79FY6N6YZRYFAAZLtSaLwrjRKZQ6afyhf/7y9o5Kpa1vgkTrEaqsEcPP9GVK+Bcd0b/GCw0x6bM15
	h7l7Soe1LAyQGXeZjfEBuMoLrc3WsqQCzNVh5YwcE5bBAs4MgPxonY2RHGzH6P0szIOmztIJJLqed
	32nXiNqbNBgXlJj2aEhpiiMEA7/gFeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzw0o-0000pQ-Cn; Tue, 20 Aug 2019 04:44:50 +0000
Received: from mail-yw1-f66.google.com ([209.85.161.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzw0W-0000p2-9w
 for linux-mtd@lists.infradead.org; Tue, 20 Aug 2019 04:44:33 +0000
Received: by mail-yw1-f66.google.com with SMTP id f187so1895685ywa.5
 for <linux-mtd@lists.infradead.org>; Mon, 19 Aug 2019 21:44:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=r71QpmjjYMneD14So1/FrWnFg6w/jYQUum7iTbCpFnc=;
 b=ZzMt+AhSfoXNdABGpDjQpQ77cNnY7Q7mPglv0S9CNmsxJQqBVyM20UFPTLTYGeXoOz
 Ll0y93Fgrt5V4FzqjOJC/AmOlbHxEm5F2PSSUW2jXK+Ja+DMTTKUCWnAeOnba6aSFr27
 tFnilDVtPrrMoPoTID/xtboNiOhUR65cHItKiDgLKyCZ0FVdwnheUtV+KAvdpT7dd5Ls
 AF8ue4tcBHiPplYeS2gDziecUXn6YQU3+2aNa5bBUbC3kFezP3QubFJAjtfEqKES1BYN
 9yK5nfWMP88qajy4QVbyTBXYw/qqQ3ntkhBZFdJe4pY+IlPCispTsAUjUHsvF+zmCGLU
 ppLQ==
X-Gm-Message-State: APjAAAUE5MhOiXPaCaW8rmJQtUC/Jlh12aihsnYDOP2fi8OoBDpe2V3h
 SWzdIgkWqtF1kCfGzeDap4U=
X-Google-Smtp-Source: APXvYqwVS1H+5xxxJ90R2buxUAwKN9DaBncdTrg8AcfL+d8c4s6q0FgRlA9whCBe0putdAnNreqcWQ==
X-Received: by 2002:a0d:d557:: with SMTP id x84mr17497695ywd.455.1566276270669; 
 Mon, 19 Aug 2019 21:44:30 -0700 (PDT)
Received: from localhost.localdomain (24-158-240-219.dhcp.smyr.ga.charter.com.
 [24.158.240.219])
 by smtp.gmail.com with ESMTPSA id z9sm3501119ywj.84.2019.08.19.21.44.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 19 Aug 2019 21:44:29 -0700 (PDT)
From: Wenwen Wang <wenwen@cs.uga.edu>
To: Wenwen Wang <wenwen@cs.uga.edu>
Subject: [PATCH] ubifs: fix a memory leak bug
Date: Mon, 19 Aug 2019 23:44:24 -0500
Message-Id: <1566276264-8942-1-git-send-email-wenwen@cs.uga.edu>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_214432_375614_E01AAF75 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wenwenict[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.66 listed in list.dnswl.org]
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

In ubifs_mount(), 'c' is allocated through kzalloc() in alloc_ubifs_info().
However, it is not deallocated in the following execution if
ubifs_fill_super() fails, leading to a memory leak bug. To fix this issue,
free 'c' before going to the 'out_deact' label.

Signed-off-by: Wenwen Wang <wenwen@cs.uga.edu>
---
 fs/ubifs/super.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/ubifs/super.c b/fs/ubifs/super.c
index 2c0803b..46e30e2 100644
--- a/fs/ubifs/super.c
+++ b/fs/ubifs/super.c
@@ -2252,8 +2252,10 @@ static struct dentry *ubifs_mount(struct file_system_type *fs_type, int flags,
 		}
 	} else {
 		err = ubifs_fill_super(sb, data, flags & SB_SILENT ? 1 : 0);
-		if (err)
+		if (err) {
+			kfree(c);
 			goto out_deact;
+		}
 		/* We do not support atime */
 		sb->s_flags |= SB_ACTIVE;
 		if (IS_ENABLED(CONFIG_UBIFS_ATIME_SUPPORT))
-- 
2.7.4


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
