Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF74724E2
	for <lists+linux-mtd@lfdr.de>; Wed, 24 Jul 2019 04:47:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gGKAiGqrJkwqgwvIjSPEJmJEHHLF/2CoQppsKfhXeo4=; b=TXw
	FIz3SQUrNkiI05NWuqIuNDs5drsvof3L1bz4SpmJqJVw0f2FTFasky6ReI1HkD5qr1VbLodEJ1XZm
	VC4zEfUP0+IAz028YGDTOOUrFGJzsOAiO1U+rVgQIaI06BJ/2zx5woYe0DbQKMqq6EQ7J7DGghvyd
	uTgVjQgpuCeARJNhVzb4gfCZhCA/rYxMxKphrr+ZjI76C45KdRsJJ2QLDueVFPZBTbfisM/UgYsWF
	XDIwBBep7mBCNRu7uuvjqDR4Oy13IK0979CUgIAaEcDDoHAYDlMx3Kwdug9PIF7D3XJWhMsaI0TU/
	ehWlFggbzPsNk9w4yzIqRbfkFLmgN1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq7JN-0005Db-Ef; Wed, 24 Jul 2019 02:47:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq7J5-0005Cr-58
 for linux-mtd@lists.infradead.org; Wed, 24 Jul 2019 02:47:08 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so20116650pfg.10
 for <linux-mtd@lists.infradead.org>; Tue, 23 Jul 2019 19:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jBTk1hrNk+mwNzaYgR/1ZCf8cY2MU3CovpAv/pz3LXk=;
 b=EQMb5ADmcEHu05TNX6WPacxDeLfNc5iFh75wjjsxdhpxpLV0GetY9P2xNAjtYBGax7
 YxNhm277uugFSVCl2Pase2oKI4ZkxzFtYP1IDgctmJwFkfq5uFfyDKDt2wmi9br/YP9g
 HjURdQ5wwRjQeIIDC+oJrruD0y3rI1CaTQTIIcZbJR+fP+7Ybnx0XfymzMXti7S+w6By
 VMTx3sOoA3urPyhXz+hezoXDhSZLfEXehWnnRSf1taoRy5AR0KZ4XcxwMZ4Gwug1uzJQ
 pDoSiGv/gpXLxy/S1hxZpxT2RK/xyst4TyGPQRJmiOjSfae3YDYBhQrm02z9M8/BbEvD
 S+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jBTk1hrNk+mwNzaYgR/1ZCf8cY2MU3CovpAv/pz3LXk=;
 b=MRdMfcpornYuG7Ybsd95CQYs/gmELYEt8r/cK+GGicECc0nB6pwhUvhoDnyi3qPzP6
 fqxYNl0RWlBjCkMLMZTMF0NjN0HVWHB/ShHJ3dBkefRHq4Lnz59TbDKrJkGb3WSjvyb9
 OTr8Iqsr5fdELbG3RM/OYOC8Il+juwZifvpAtj0ePtrQr68nGrsP5YVstWuvy+UNIFke
 c+NiYtyDpKmPOhiZh579WUPYjQ7a8iHnrjlGf9DSlMtUrhN9sXhA9yeYHlfw6UxPq4g+
 9NWrf0xNPcYZwr/f+NqE5e5kaGAad7/+0PMgK+smAIvrxHkBck+MPCGYjb+YcHm6vNIx
 HBSA==
X-Gm-Message-State: APjAAAVsI3GxXe/NCHFZtJBYfsI+9xaGg3/Dvod5NRCz+ecvPKIfSdcS
 f7EOpnJM9ECBJIB2HCyKYjGyngWC
X-Google-Smtp-Source: APXvYqzljyqxqRrlCFHMqxEOclzeWh/TVTapUPxvESWXNFbY9TNSova2LH7dpR2YRyCCgWuaerqfxA==
X-Received: by 2002:a62:ce07:: with SMTP id y7mr8559601pfg.12.1563936424998;
 Tue, 23 Jul 2019 19:47:04 -0700 (PDT)
Received: from oslab.tsinghua.edu.cn ([2402:f000:4:72:808::3ca])
 by smtp.gmail.com with ESMTPSA id l124sm45063616pgl.54.2019.07.23.19.47.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 19:47:04 -0700 (PDT)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: dwmw2@infradead.org,
	richard@nod.at
Subject: [PATCH] fs: jffs2: Fix possible null-pointer dereferences in
 jffs2_add_frag_to_fragtree()
Date: Wed, 24 Jul 2019 10:46:58 +0800
Message-Id: <20190724024658.27623-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_194707_224166_7C837EE0 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baijiaju1990[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baijiaju1990[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jia-Ju Bai <baijiaju1990@gmail.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

In jffs2_add_frag_to_fragtree(), there is an if statement on line 223 to
check whether "this" is NULL:
    if (this)

When "this" is NULL, it is used at several places, such as on line 249:
    if (this->node)
and on line 260:
    if (newfrag->ofs > this->ofs)

Thus possible null-pointer dereferences may occur.

To fix these bugs, -EINVAL is returned when "this" is NULL.

These bugs are found by a static analysis tool STCheck written by us.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 fs/jffs2/nodelist.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jffs2/nodelist.c b/fs/jffs2/nodelist.c
index b86c78d178c6..021a4a2190ee 100644
--- a/fs/jffs2/nodelist.c
+++ b/fs/jffs2/nodelist.c
@@ -226,7 +226,7 @@ static int jffs2_add_frag_to_fragtree(struct jffs2_sb_info *c, struct rb_root *r
 		lastend = this->ofs + this->size;
 	} else {
 		dbg_fragtree2("lookup gave no frag\n");
-		lastend = 0;
+		return -EINVAL;
 	}
 
 	/* See if we ran off the end of the fragtree */
-- 
2.17.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
