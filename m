Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0D2C9852
	for <lists+linux-mtd@lfdr.de>; Thu,  3 Oct 2019 08:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6dx9AJFuu5opIgc029JQL/ZYlpzkqVyn/O6VthWt0g=; b=rcro96Ew+2RJyy
	aoZOZhrHKTOam/t/UnQi31KIVxDgGlMtnVJXY7GnJ3B7Ln/LNKcHT4jA2ZR/7IxLwWUzUG5XqIkLS
	fUuuobxHnzt9cEMM/d9ybxDQWnw1NLL81NlhJhcBNtxf2wkwSAs1eYboFtFyQ7CDfuNIHMlhCkKNY
	BX+u42klH3HhX5QYp5xiZdlWqWl/JIARIfysH92b0Z9KOcdBoqt3b0pFf0zKRtUD2ySHUuIkc/PJc
	TRZqNKP4D91y2Sio9y95hi1M/v07X+71SjJp3Xvqs/Lh23vtwv1qnkNdSu8GdUhHIxdG6eZvI2Vh4
	gOHDzek6DNifk3Lz/HaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFuiV-0008VZ-Ug; Thu, 03 Oct 2019 06:35:59 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFuiD-0008MR-QX
 for linux-mtd@lists.infradead.org; Thu, 03 Oct 2019 06:35:43 +0000
Received: from methusalix.home.lespocky.de ([92.117.58.69]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N9Md2-1i1YgE3eQW-015G2O; Thu, 03 Oct 2019 08:35:26 +0200
Received: from lemmy.home.lespocky.de ([192.168.243.176])
 by methusalix.home.lespocky.de with esmtpsa
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <alex@home.lespocky.de>)
 id 1iFuhw-0002oM-NC; Thu, 03 Oct 2019 08:35:25 +0200
Received: (nullmailer pid 18480 invoked by uid 2001);
 Thu, 03 Oct 2019 06:35:20 -0000
From: Alexander Dahl <post@lespocky.de>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 1/2] ubihealthd: Add missing sentinel in options array
Date: Thu,  3 Oct 2019 08:35:00 +0200
Message-Id: <20191003063501.18421-2-post@lespocky.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003063501.18421-1-post@lespocky.de>
References: <20191003063501.18421-1-post@lespocky.de>
MIME-Version: 1.0
X-Scan-Signature: c4845d2fc86daf6cf7a6b32707e363c4
X-Spam-Score: -1.7 (-)
X-Provags-ID: V03:K1:j7zFgeVNlagvlg6AaH/ycjSmQEtp8CmD4lXoqooH0q3UPC3BO8I
 o2UdfTh7w690x0KVUR4l1TS+Isz+pYBGytNGFXDK/Y79FwkBGGjGkHpLwfZGMSg0AVQYkq4
 q50Dy5w/ddzcEvA1dtFaZDcP7/dyqDP3qSWJngV6MmZlS11sPJtFyh/P9khMqSautQlNELn
 Kvv5yKguMnfcUNVVn9wlA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lq7j58aRd+8=:HWr76Ypcv6MHz0pqA+2Pny
 AdcXC65V1bojWl7bKcQQVmk1RH4rWz9vsK4Dnt49pE1PL/Omfoip5hsAQtXeZR2GvLSd/DlqI
 EfEcvz9YUO6pEey/9lhP37oE7wz7OnZHqaPhU5mOBuVNtpUyWLzoEiyS2FJzrV8zqGXkgBP1O
 Th4p+3Jv4m+3TYNp8pcvplW4JCreAu9udy+U6AvkawXsYzFwBmL36cx7JG8JQbiyyyQFOk7Z2
 cMAl6FWZES7j6Kx4Cf4mhkMeCCDWMpI9/8R7zNtrgv1HtIBV5hySHGGHdwKcTOATSK4LdPdmQ
 yRWoooM3gLBJLdk2kGKXeqvPzVagYLxaNw2bvWWC9Z/UXscCkGTCRUfGKyXvFrhav6QuoVYq0
 exqMG1T6R4abQFn7vhqmkabGt/Ceuq/8mtUUqhhymKXwxpt5kMvOwrr+sWvH/QP7YcqFKd0Io
 Z285hcEikMmTnFpUbHdxLuXrg2K12HtfuOgs3KanOWEKGtiJztk7ekMuVNc/FSg5BKcFMecH5
 MOhUNPYasJ4uVUUxVn46c9TedM+8cvXQ3JYwOhqn1i8yg2UCZR29T9/t3E47Ydxoty0N9ZkAZ
 yDlzcNOZHcP3iexFaSgp7X3QynNTBZWBe97aNwZgAyrrBOGGG6kiwZSJGEqdaXqcYJc7iWTYc
 yZCbPO5+mL+Hh3UHrXS/UzWKfxpbT0HMKNPEoN54w4kkjk3grHfYYJ07dvzv7vMlB9m4+uexU
 HipCbNilSeqYZp1cZCF9pwg5PLonjoblpBcjctmAbu7KujGgn4oKz8N1fkrVGJKKWavqfyRZ1
 7jy+1SLws+WUsD3Vj3iPv4kjzjZzTf+z8a+WpDoTMScx/jNKEpgjRgm9sqx5xGd+wfNoz3S3d
 o4m8lXgJpSdbUehJHDOXimdoZh3T2J9kmr6cY46Pc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_233542_147500_5B219CFC 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexander Dahl <post@lespocky.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

`getopt_long()` requires a null terminated array, otherwise we get
segfaults when passing invalid options.

Fixes: 7f0e2dc21fb2 ("ubi-utils: Implement a ubihealthd")
Signed-off-by: Alexander Dahl <post@lespocky.de>
---
 ubi-utils/ubihealthd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/ubi-utils/ubihealthd.c b/ubi-utils/ubihealthd.c
index 3e665be..f38235b 100644
--- a/ubi-utils/ubihealthd.c
+++ b/ubi-utils/ubihealthd.c
@@ -56,6 +56,7 @@ static const struct option options[] = {
                 .flag = NULL,
                 .val = 'i'
         },
+	{ /* sentinel */ }
 };
 
 static void dolog(const char *fmt, ...)
-- 
2.20.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
