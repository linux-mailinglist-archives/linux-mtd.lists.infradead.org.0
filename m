Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E562A588D4
	for <lists+linux-mtd@lfdr.de>; Thu, 27 Jun 2019 19:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S56AAOmv+NUxFOAvlFjW1g928RtlD7zqWBEeSh0cbtU=; b=unJ
	dVOMO9NxDTXQ6xEKRnBTczawnl3Kkpca/of4TBGsKe3teiviOlbXgI16rgSCZ6OEIatYvK3MhqP2i
	kygiEarYjkjCS2dgSPEyKSHrdkf7LsMURBCXd02NhWIZJP55Xt280cgIUJ9SmvWvCSZz7isNdiiUx
	n6Xtiun/Y9UBf0FX/nZPqdaIvlhMAWsVlfTcPLnYL1cVtud8d7S4cSCXGYXBoHcaX7Y/jC6jU5LPs
	v20ZnrHufb4HA0fGfevDreOLuLZ1A/iOnXXg8nNlzFJ5De5XkGr+GURCCASCY2Ij7r1D4YGSvPw65
	//Kn1BWzghXFqPnYG6sX+hF+DJ68rlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgYOd-0005qV-SG; Thu, 27 Jun 2019 17:41:19 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgYOS-0005pm-NV
 for linux-mtd@lists.infradead.org; Thu, 27 Jun 2019 17:41:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so1673579pls.6
 for <linux-mtd@lists.infradead.org>; Thu, 27 Jun 2019 10:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=68Sx2VJWJZyxqxxlYRI+Ma3rhm5eQfyCtxzhaZFU+Dc=;
 b=d7D8QcdgRoYgc0tN0G4Fku9kw65FYsH/JmBJwJZsciYyz2xu3iuMx/0IFSMK9DzhHC
 YxNH/SgAikOoE+OUuDT/8YVM9NULi++YiWOGjKku+wibg42dmN20IgbRIBOpRTlcieQN
 DDyZ7J51bVbgnlmBYhquALXYsHMz1O32wCTc1RW5EoHws1Zbh9a5MutEf1F5SvaNGIRf
 9iJM4NQNM2sSaSCGNSYsugr/4GC7ollQtVQ1qAG0/PzqOrQ6rupoWxA25zLa9W8dm1vy
 OeLYIo4r5LoGkFADOdF2zGAljHjeNRatQccUGqlYc4ZYW5vkwjIG3lwrZqwNPa3yeypY
 Zn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=68Sx2VJWJZyxqxxlYRI+Ma3rhm5eQfyCtxzhaZFU+Dc=;
 b=SK2hJZa4TtngrkHzlwY/FmXErh5nnhWzDut+3ezK0KJRPvyuJ3nakr03ityvpDBolO
 2uxkxCvWlErPqCnfGcmRP1rK9nFF90N/DTYKL+4bu/R045NonLSY8Pzi28ygPYNmZQtY
 5QyvhzeC57zmryd4ngGiHywilYTpyISH13O/UB8GUvgALOZfIYnVx8utI316xIR2aWjl
 0+OgWk7Gf7PNMKSovBn4Ktjx565YXFSz3d7yLfRsdHPg6vEXcOFJ5f8iXvovt4mx17wQ
 BbPXeo1TnOjOnkfDOScJmszduVusyMof96WAOGwskNA81SKDL3jfKkbZm6V+1tIZSmdz
 EGiQ==
X-Gm-Message-State: APjAAAXzljVk1EfuM94O3wDrR3/Mo77kUvdAy9ftAHQQbjhZdtqp/X1x
 GoZDyqRTLsGrEd2sfq8wkB5KUAhe/rnRKA==
X-Google-Smtp-Source: APXvYqyQ3BRpaofxHGGPmEe5BWvSbpUwsNSCEzGOIMOz8jvllwSuhOM/2XHjuZi3Y/55eGtIfQUYUg==
X-Received: by 2002:a17:902:2884:: with SMTP id
 f4mr5899596plb.286.1561657268332; 
 Thu, 27 Jun 2019 10:41:08 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id s43sm6322406pjb.10.2019.06.27.10.41.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 10:41:08 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH 44/87] fs: jffs2: replace kmalloc and memset with kzalloc
Date: Fri, 28 Jun 2019 01:41:00 +0800
Message-Id: <20190627174101.4291-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_104108_786686_1AC9A847 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Fuqian Huang <huangfq.daxian@gmail.com>,
 Richard Weinberger <richard@nod.at>, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

kmalloc + memset(0) -> kzalloc

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 fs/jffs2/erase.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/jffs2/erase.c b/fs/jffs2/erase.c
index 83b8f06b4a64..30c4385c6545 100644
--- a/fs/jffs2/erase.c
+++ b/fs/jffs2/erase.c
@@ -43,7 +43,7 @@ static void jffs2_erase_block(struct jffs2_sb_info *c,
 	jffs2_dbg(1, "%s(): erase block %#08x (range %#08x-%#08x)\n",
 		  __func__,
 		  jeb->offset, jeb->offset, jeb->offset + c->sector_size);
-	instr = kmalloc(sizeof(struct erase_info), GFP_KERNEL);
+	instr = kzalloc(sizeof(struct erase_info), GFP_KERNEL);
 	if (!instr) {
 		pr_warn("kmalloc for struct erase_info in jffs2_erase_block failed. Refiling block for later\n");
 		mutex_lock(&c->erase_free_sem);
@@ -57,8 +57,6 @@ static void jffs2_erase_block(struct jffs2_sb_info *c,
 		return;
 	}
 
-	memset(instr, 0, sizeof(*instr));
-
 	instr->addr = jeb->offset;
 	instr->len = c->sector_size;
 
-- 
2.11.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
