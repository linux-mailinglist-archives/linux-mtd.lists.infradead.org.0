Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EED122D76
	for <lists+linux-mtd@lfdr.de>; Tue, 17 Dec 2019 14:52:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DxaGJflJFfXsyFr5vvRR1XDS31zTEDA+JMrEGrFe6Tw=; b=EaE
	ZJ26uNqqzB/y/M81Frvos1YeqMqFxx5BERIJLJNj7jmFGSit170Zw7ugNkLUaY84oBsYkrlK6Ubfi
	1mePIGlne/N8A0LUNZvWWnXI8eTAzh19Y/6B5lspKOPlAeIRDY4v2AX5em7GfjQXEEWeIppiyTCGk
	89C40w2Lhw58gqgCG5WRlSS0mvhb7oM1jCISi08b9QJ5SI3or2OgRuc2NWRyV9jfHPfBvsUU6RXsI
	5JD79eF1Cxxs5TDgW7jX4EVn/eqUHvxX947nQV+FGmXye997RZ/hJQpUlJJnSCSVi/PuGykww2pEP
	AWYN9eMgAZiEUyKI5KfpCF8DYFGplyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDHG-0007TY-Ew; Tue, 17 Dec 2019 13:52:42 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDHA-0007TD-MO
 for linux-mtd@lists.infradead.org; Tue, 17 Dec 2019 13:52:37 +0000
Received: by mail-pl1-x642.google.com with SMTP id d15so6149750pll.3
 for <linux-mtd@lists.infradead.org>; Tue, 17 Dec 2019 05:52:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4Ab3Q/X4ZX5gMws9nUNXBeFR4zcomqzcsyRHhrq8jyw=;
 b=bjOyv4WFNA4Oiymym030hvCTlXDF88KMh8GhOROZW1CBvNWjeEu7md9vnE2vrZU2DH
 eijW5Zxcylr10kqvF7gxoPPnxI/oNVp3NDQ9QDAOT/hlaKFBKCwEqMnS/lAHvFfI9+Tf
 5uiFyBRmQI6dcgpafCAxYmxoK6OGOU5pD6m7aiirOkUDVXkNqHlEexV6RXhMa7IuMH29
 omWFCSFF6Sqnui+mmfa6bbchqDIVjg3vr86PyR9DHuNEvyPMtebB4EMHyUnd7ONy/ZmU
 sqL7MJzUEMUga2WjtTjUqIUEjklL510v4ADYm/+0jXnczO4vsOzQWDPwdQ1ZywAZ4RB0
 qZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4Ab3Q/X4ZX5gMws9nUNXBeFR4zcomqzcsyRHhrq8jyw=;
 b=qTCu42ACtTZzmQbAOHeT7LpDH5AtMn4C0pJlkxAj6t3GM4pkvn0ZC5Js5s3aQo0WFF
 Bvm1zNPdAn+km/kkOZZxZ01Fpi14YVpMokqbDxJXZrTpBbr24n/ZPir+W5dREqGG28fS
 cy18UxhMJjOZoqE5JdllOYohVfkWPZl247tjGRVam7qKCgrhlKaq+o43g+GNCrj45jNB
 dwUKkqb6kcmXPReylkyRhF9TYpljB+OaHZlVUvL7Zrf2aDi/FfIK0oGvj7yoOi45cr9j
 K02grNPL66bsTvlHZl8/Q5DUlzm6cDHVFKXZ+agDjfBTedS0UgB35W7kJXX3YhM9g5LF
 9vGw==
X-Gm-Message-State: APjAAAWZPE+fE7KcI9C0uSlLaa2E5BqMma/u+6AEFHQkNTL7NlRc1J3f
 zk8HwPd4tEP3kC0aQbygXGg=
X-Google-Smtp-Source: APXvYqwg7iJqE7pkEx8c34mv/h5j38/Pvrmvpcu6TQkHXieFxOzdarytJCM8d0HbKBYvVOBk6zJV2w==
X-Received: by 2002:a17:902:bf0b:: with SMTP id
 bi11mr2085843plb.282.1576590755583; 
 Tue, 17 Dec 2019 05:52:35 -0800 (PST)
Received: from oslab.tsinghua.edu.cn ([166.111.139.172])
 by smtp.gmail.com with ESMTPSA id k1sm18091229pgq.70.2019.12.17.05.52.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 05:52:35 -0800 (PST)
From: Jia-Ju Bai <baijiaju1990@gmail.com>
To: dwmw2@infradead.org,
	richard@nod.at
Subject: [PATCH] fs: jffs2: fix possible sleep-in-atomic-context bugs
Date: Tue, 17 Dec 2019 21:51:43 +0800
Message-Id: <20191217135143.12875-1-baijiaju1990@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_055236_756060_F6BFF360 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baijiaju1990[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baijiaju1990[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The filesystem may sleep while holding a spinlock.
The function call path (from bottom to top) in Linux 4.19 is:

fs/jffs2/malloc.c, 188: 
	kmem_cache_alloc(GFP_KERNEL) in jffs2_alloc_refblock
fs/jffs2/malloc.c, 221: 
	jffs2_alloc_refblock in jffs2_prealloc_raw_node_refs
fs/jffs2/wbuf.c, 164: 
	jffs2_prealloc_raw_node_refs in jffs2_block_refile
fs/jffs2/wbuf.c, 291: 
	jffs2_block_refile in jffs2_wbuf_recover
fs/jffs2/wbuf.c, 287: 
	spin_lock in jffs2_wbuf_recover

fs/jffs2/malloc.c, 188: 
    kmem_cache_alloc(GFP_KERNEL) in jffs2_alloc_refblock
fs/jffs2/malloc.c, 221: 
    jffs2_alloc_refblock in jffs2_prealloc_raw_node_refs
fs/jffs2/wbuf.c, 164: 
    jffs2_prealloc_raw_node_refs in jffs2_block_refile
fs/jffs2/wbuf.c, 927: 
	jffs2_block_refile in jffs2_flash_writev
fs/jffs2/wbuf.c, 924: 
	spin_lock in jffs2_flash_writev

kmem_cache_alloc(GFP_KERNEL) can sleep at runtime.

To fix these possible bugs, GFP_KERNEL is replaced with GFP_ATOMIC for
kmem_cache_alloc().

These bugs are found by a static analysis tool STCheck written by myself.

Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
---
 fs/jffs2/malloc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jffs2/malloc.c b/fs/jffs2/malloc.c
index ce1189793288..66496ef09716 100644
--- a/fs/jffs2/malloc.c
+++ b/fs/jffs2/malloc.c
@@ -185,7 +185,7 @@ static struct jffs2_raw_node_ref *jffs2_alloc_refblock(void)
 {
 	struct jffs2_raw_node_ref *ret;
 
-	ret = kmem_cache_alloc(raw_node_ref_slab, GFP_KERNEL);
+	ret = kmem_cache_alloc(raw_node_ref_slab, GFP_ATOMIC);
 	if (ret) {
 		int i = 0;
 		for (i=0; i < REFS_PER_BLOCK; i++) {
-- 
2.17.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
