Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0C01BE467
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 18:55:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CF0UUY3RDG0M5qU+mfiBE8dRdkkZqIp/GZ5CvyGRW7s=; b=uIrAz2KQeqzfh9
	qZgWdcNcCTaKL2hINVJ1KnQgwV0IgKTevxIqTY3B7meHckYIuIGQWOoqJUggOzaD2MbHZjlZtoqMf
	GDZ8L1sR78dqyW1vsSG916z1QAHSNfJFtfjatseqcmW3qztF1rUH53fkcOXc0USexBpfF0Pz5jRz9
	BjqOF3wmo81U4hrWYF19p6rE4Ow9SAYZxJ0tDfnGsJr9x9Xha8NQ2LMOcVBRPkHzBT1z/Z6DLv+EG
	e0PZ8yRx3xrSL5+w4VFEeKM47volm5+2NmckybSJkVpjWXlz16/IopIGkWfm3X5wBBlTSTTyH+uDX
	2FJrywNrbEU3UadlfB4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpzS-0003Sa-1W; Wed, 29 Apr 2020 16:55:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTpz7-0003Rl-3l
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 16:54:58 +0000
Received: by mail-pl1-x641.google.com with SMTP id t7so1056505plr.0
 for <linux-mtd@lists.infradead.org>; Wed, 29 Apr 2020 09:54:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QhnNbFgMhb8TBL2bWNur+1czIzeYIF+WjxZSErS6Dcc=;
 b=qOfV4LMX6mF2hlEyT6Ogcm2d3yi4foFoOnhf4ENAMAlj6jYw/geKkSo/9zFDah6dgo
 lN38/MlTvX+q7K6JgPfr3frx3PRHek//4TAKZUCjbBjQWdNjgSP27OjWn89ETA38ZPEU
 KacFwviDxIG0dxQkIRsSkj82umdS2DHFToJyKKDrBM1R5OR4Q3IuzWiOQ1COtbvmu78e
 IffnZ4LDpBYxBKZ0IVXvoefLt+JsWVzHdXXLRDiXuDIEnJEJnZdHm7GMJLB2aZzKQuPg
 nKgStBBd2Ujf/sX2TL3ncD2Os3NfnXLPhdHug+6Bhqa7034rVl5KymN0ymTzTHwFki/N
 pY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QhnNbFgMhb8TBL2bWNur+1czIzeYIF+WjxZSErS6Dcc=;
 b=uiM34ER0wzDBqjixjrN+qg8P7QWIVD+IOKCyIE3u6ttfAoWyAAtGL1V0pO4yv4QQTC
 dACe/+k019EctB9dyDLhtQZgUYO97UslrIsZl7YK3+UmmAIjlkWvVTKDNWQhB18q7MmA
 ZSOcxP7miwmYE3dDIAoSkCLiALK8tZMxV+wJJYD7NGFJQXkIJGfbriZsxAZeVVzG9uuq
 ulnbxcYuQGexbx/SS7R+M2HjLB1qWJVTaz7plOQkuAjfQKmveiL8EFWLck7hBQGiz5ID
 6l9EEgoTcCqru4n70yLloJcuLtLL+urQseczRErgtaxi8Pc4wM04mK/TWRM7PJKfEtAs
 ioFA==
X-Gm-Message-State: AGi0PubtEWsXpj4WpT2h1BxQydoz2v4DP6i45DO/0rCmBeMoAgqBLana
 sIFE6wy65pHE6/UntuYAbhU=
X-Google-Smtp-Source: APiQypKFEAoRkT8LAdt+0d5hSTQ3oN+x+oBQoMG8Z2kEdSdlM/AMBT9p/t5tL+IKtDAoeCktjyaHOA==
X-Received: by 2002:a17:90a:d14d:: with SMTP id
 t13mr4259685pjw.175.1588179295674; 
 Wed, 29 Apr 2020 09:54:55 -0700 (PDT)
Received: from minnich.svl.corp.google.com
 ([2620:15c:2c5:3:65f9:fd8e:a0b8:2917])
 by smtp.googlemail.com with ESMTPSA id w3sm1460190pfn.115.2020.04.29.09.54.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 09:54:55 -0700 (PDT)
From: "Ronald G. Minnich" <rminnich@gmail.com>
X-Google-Original-From: "Ronald G. Minnich" <rminnich@google.com>
To: 
Subject: [PATCH] mtd: parser: cmdline: Support MTD names containing one or
 more colons
Date: Wed, 29 Apr 2020 09:53:47 -0700
Message-Id: <20200429165347.48909-1-rminnich@google.com>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_095457_178246_D6E77025 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Boris Brezillon <boris.brezillon@free-electrons.com>,
 Richard Weinberger <richard@nod.at>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>, linux-kernel@vger.kernel.org,
 Marek Vasut <marek.vasut@gmail.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, linux-mtd@lists.infradead.org,
 Ron Minnich <rminnich@google.com>, Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Boris Brezillon <boris.brezillon@collabora.com>

Looks like some drivers define MTD names with a colon in it, thus
making mtdpart= parsing impossible. Let's fix the parser to gracefully
handle that case: the last ':' in a partition definition sequence is
considered instead of the first one.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Ron Minnich <rminnich@google.com>
Tested-by: Ron Minnich <rminnich@google.com>
---
 drivers/mtd/parsers/cmdlinepart.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/parsers/cmdlinepart.c b/drivers/mtd/parsers/cmdlinepart.c
index c86f2db8c882..0625b25620ca 100644
--- a/drivers/mtd/parsers/cmdlinepart.c
+++ b/drivers/mtd/parsers/cmdlinepart.c
@@ -218,12 +218,29 @@ static int mtdpart_setup_real(char *s)
		struct cmdline_mtd_partition *this_mtd;
		struct mtd_partition *parts;
		int mtd_id_len, num_parts;
-		char *p, *mtd_id;
+		char *p, *mtd_id, *semicol;
+
+		/*
+		 * Replace the first ';' by a NULL char so strrchr can work
+		 * properly.
+		 */
+		semicol = strchr(s, ';');
+		if (semicol)
+			*semicol = '\0';

		mtd_id = s;

-		/* fetch <mtd-id> */
-		p = strchr(s, ':');
+		/*
+		 * fetch <mtd-id>. We use strrchr to ignore all ':' that could
+		 * be present in the MTD name, only the last one is interpreted
+		 * as an <mtd-id>/<part-definition> separator.
+		 */
+		p = strrchr(s, ':');
+
+		/* Restore the ';' now. */
+		if (semicol)
+			*semicol = ';';
+
		if (!p) {
			pr_err("no mtd-id\n");
			return -EINVAL;

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
