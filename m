Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E5A10D029
	for <lists+linux-mtd@lfdr.de>; Fri, 29 Nov 2019 01:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AwMpU18BXxCP10i57J7x4qIOZLoxD1eX2Y5ON90ReA4=; b=L3jQal00y+cueB
	EPuE1KKyDdmLdcRHb0zkWoO3NwiVkx76yYK0TcLpiEclDJwLkwHl35Pz25k9hViZ5+g8j8GtdYeRR
	GK+AvBlMjyQPYfS9Fyx27RULU02x0XzKGvuZlpQBc6+oRPed5rxW5+UC6eNTC3H9YGLPh9bNPMRvb
	Xjfe2cRuvrItndZbiTw5QPH2KgxXWpcFTvfM3a0yE2p1FkntciPQmeVOYYo99sE8h6kyxuSAUo5hK
	wxWsANQne08cn4wQumLa0ttnMaG0ZtVY5SrMeuWbYbNEVFfs4JbSWAxz9itmt2nlASeeOUsx82UOS
	Ka7H/Ccja1i0YkGqIfaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaU13-0005Se-1d; Fri, 29 Nov 2019 00:20:09 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaU0m-0005SG-Qk
 for linux-mtd@lists.infradead.org; Fri, 29 Nov 2019 00:19:54 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ep1so12503576pjb.7
 for <linux-mtd@lists.infradead.org>; Thu, 28 Nov 2019 16:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h53cQjZSibuH3tAJSYGep55eMe8Vd0lhXfafS/71YMc=;
 b=Bv85t85R3UvENEoNM1z9LUb+cWEgsm9+BUi6Z6TY45q7P4tPHrTkzmbq19ZyKt3gaY
 4Y7b1GC07f6G3J9lhtrt1nyCJUz91Vr1W2Zz7WfhKYP89Y1e+CepLYa/Fd3ILNkgJBYm
 HXkFZ33yEKBBype4wxBkYrsItVCCwAL4ez8pa2iagti25qmNm1/7arPwnqs0LjBvPk/a
 HcOWyYq2ZMG0wlTN87SrVWqCrlFKwRYxUDQ1pE9TplPwkhzvnEg5teYfGGf3zSega9/A
 2n83v1OcpOZr1pKNmtVs5LQQ3sLA7oD9FUEar9wbLLo7EXJLaDtOv+EpKnCuO6o92m7i
 Udsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=h53cQjZSibuH3tAJSYGep55eMe8Vd0lhXfafS/71YMc=;
 b=Zh8XDoMGJZYKULAWj8HSaEXp4GY9UelFqKeKY6ivLnLa0yQXxrQhQm3xs+gQfojARg
 DzMXad+XlCN3rI6SpDgqt7qm8h3CBpKsAB4067x9kCgtMRO3U4oMrX4QW1atCjzriSir
 ALyooCM99ujILS3THdz+16F4Ymy9+pDxf0FPg+WvSkVd0PRKrOza4BA6uxipyy7mQCQT
 D6k+SsTYrMXv4kOZO6rri9KfLQ5fay/wmnRhZolsQ82HyjObY0MrEJSBg72qaha7lBz4
 G5sEryEVCkl+gF/b5cOrDw/aOcOUYArvWQnkWQFWDj5XRO7UqAMk0kBWg5778AKxBalu
 Z2Tg==
X-Gm-Message-State: APjAAAWD0rUpVqVJPHT88CYt+PUw6UKZKPZdYhZCYhSVWXfLx8gKhNxd
 oN5+3c9uW54bsh7evBYDeXQ=
X-Google-Smtp-Source: APXvYqydSlcywgyu28ko3Or1LMj946GqVhi84pXtfb+mGorPFT5tefwcV+ieBvVCZA+weqO0Y7JsjQ==
X-Received: by 2002:a17:902:a408:: with SMTP id
 p8mr12227465plq.266.1574986791930; 
 Thu, 28 Nov 2019 16:19:51 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.14])
 by smtp.gmail.com with ESMTPSA id c2sm21717929pfn.55.2019.11.28.16.19.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 16:19:50 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: David Woodhouse <dwmw2@infradead.org>, Richard Weinberger <richard@nod.at>,
 Jia-Ju Bai <baijiaju1990@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>,
 openbmc@lists.ozlabs.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Revert "jffs2: Fix possible null-pointer dereferences in
 jffs2_add_frag_to_fragtree()"
Date: Fri, 29 Nov 2019 10:49:30 +1030
Message-Id: <20191129001930.651128-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_161952_867125_4C323E7E 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stable@vger.kernel.org, Hou Tao <houtao1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This reverts commit f2538f999345405f7d2e1194c0c8efa4e11f7b3a. The patch
stopped JFFS2 from being able to mount an existing filesystem with the
following errors:

 jffs2: error: (77) jffs2_build_inode_fragtree: Add node to tree failed -22
 jffs2: error: (77) jffs2_do_read_inode_internal: Failed to build final fragtree for inode #5377: error -22

Fixes: f2538f999345 ("jffs2: Fix possible null-pointer dereferences...")
Cc: stable@vger.kernel.org
Suggested-by: Hou Tao <houtao1@huawei.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
5.4 cannot mount (some?) jffs2 filesystems without this fix. Hou pointed
this out[1] a while back but the fix didn't make it in. It's still
broken in -next.

[1] https://lore.kernel.org/lkml/2758feea-8d6e-c690-5cac-d42213f2024b@huawei.com/

 fs/jffs2/nodelist.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jffs2/nodelist.c b/fs/jffs2/nodelist.c
index 021a4a2190ee..b86c78d178c6 100644
--- a/fs/jffs2/nodelist.c
+++ b/fs/jffs2/nodelist.c
@@ -226,7 +226,7 @@ static int jffs2_add_frag_to_fragtree(struct jffs2_sb_info *c, struct rb_root *r
 		lastend = this->ofs + this->size;
 	} else {
 		dbg_fragtree2("lookup gave no frag\n");
-		return -EINVAL;
+		lastend = 0;
 	}
 
 	/* See if we ran off the end of the fragtree */
-- 
2.24.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
