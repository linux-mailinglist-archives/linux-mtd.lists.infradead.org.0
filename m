Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9611C2372
	for <lists+linux-mtd@lfdr.de>; Sat,  2 May 2020 08:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b9AZT1saPazNI7KNUB36ZGtgw3k2eQhIFZJR+DaTvq0=; b=KXjTrzgduFjeEp
	B/fsPBHxmuCdkiipg0gzOsyC5BZEwxQo/Cj9ub2X7BT2ADitAwWtOmlbM4iwgTlB6UHF2FB7us6Kx
	cbaVeaSlZjcZCYfgruYoXIo9ko9cJ1SuL4JpW4hgGCAuxGNYBy3j9iQemNASWsk0XYOZ+LseUovhA
	F1N4qygFr1NxC2c50yCvv1Q84arzQpekTJYC4GdRmjHhUdQNlIJX1wOKZrOZr9UDMe+f1nPF5S1d9
	iLi7liayfjf4xUe6o3bQptJ400UlsQkduFKOW4T1ANeTGkqPjTIwrQIgTjQDXnB/S+mYKhqOf4wY2
	MIJhVBsnBBmX2rP5kiAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUlCN-0008Ki-5K; Sat, 02 May 2020 06:00:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUlCF-0008K9-LC
 for linux-mtd@lists.infradead.org; Sat, 02 May 2020 06:00:20 +0000
Received: from sol.hsd1.ca.comcast.net (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 174842137B;
 Sat,  2 May 2020 06:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588399219;
 bh=2TZcArf1YUgKkcv3Pow2cc7A9wlRsm3LVNfkjMQvDIU=;
 h=From:To:Cc:Subject:Date:From;
 b=bpBNP+z008ubNPNLGe/0RCLG7aa5tXFBEaeDeae+BOeIyPxQXhlYoOExsrpJrAMdj
 8gLIYcsEn7tdNql0i07dnM5qJPf3DjDoG0pxAP/zOhW/Ank0Oaeydi0qZ0eoQXXN5H
 9j7lW3scMPF/mW9KsDJ93WP+zRzOCEAJc6N1j0v8=
From: Eric Biggers <ebiggers@kernel.org>
To: Richard Weinberger <richard@nod.at>,
	linux-mtd@lists.infradead.org
Subject: [PATCH] ubifs: fix wrong use of crypto_shash_descsize()
Date: Fri,  1 May 2020 22:59:45 -0700
Message-Id: <20200502055945.1008194-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_230019_712306_979F933B 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-crypto@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

crypto_shash_descsize() returns the size of the shash_desc context
needed to compute the hash, not the size of the hash itself.

crypto_shash_digestsize() would be correct, or alternatively using
c->hash_len and c->hmac_desc_len which already store the correct values.
But actually it's simpler to just use stack arrays, so do that instead.

Fixes: 49525e5eecca ("ubifs: Add helper functions for authentication support")
Fixes: da8ef65f9573 ("ubifs: Authenticate replayed journal")
Cc: <stable@vger.kernel.org> # v4.20+
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/ubifs/auth.c   | 17 ++++-------------
 fs/ubifs/replay.c | 13 ++-----------
 2 files changed, 6 insertions(+), 24 deletions(-)

diff --git a/fs/ubifs/auth.c b/fs/ubifs/auth.c
index 8cdbd53d780ca7..f985a3fbbb36a1 100644
--- a/fs/ubifs/auth.c
+++ b/fs/ubifs/auth.c
@@ -79,13 +79,9 @@ int ubifs_prepare_auth_node(struct ubifs_info *c, void *node,
 			     struct shash_desc *inhash)
 {
 	struct ubifs_auth_node *auth = node;
-	u8 *hash;
+	u8 hash[UBIFS_HASH_ARR_SZ];
 	int err;
 
-	hash = kmalloc(crypto_shash_descsize(c->hash_tfm), GFP_NOFS);
-	if (!hash)
-		return -ENOMEM;
-
 	{
 		SHASH_DESC_ON_STACK(hash_desc, c->hash_tfm);
 
@@ -94,21 +90,16 @@ int ubifs_prepare_auth_node(struct ubifs_info *c, void *node,
 
 		err = crypto_shash_final(hash_desc, hash);
 		if (err)
-			goto out;
+			return err;
 	}
 
 	err = ubifs_hash_calc_hmac(c, hash, auth->hmac);
 	if (err)
-		goto out;
+		return err;
 
 	auth->ch.node_type = UBIFS_AUTH_NODE;
 	ubifs_prepare_node(c, auth, ubifs_auth_node_sz(c), 0);
-
-	err = 0;
-out:
-	kfree(hash);
-
-	return err;
+	return 0;
 }
 
 static struct shash_desc *ubifs_get_desc(const struct ubifs_info *c,
diff --git a/fs/ubifs/replay.c b/fs/ubifs/replay.c
index b28ac4dfb4070a..01fcf79750472b 100644
--- a/fs/ubifs/replay.c
+++ b/fs/ubifs/replay.c
@@ -601,18 +601,12 @@ static int authenticate_sleb(struct ubifs_info *c, struct ubifs_scan_leb *sleb,
 	struct ubifs_scan_node *snod;
 	int n_nodes = 0;
 	int err;
-	u8 *hash, *hmac;
+	u8 hash[UBIFS_HASH_ARR_SZ];
+	u8 hmac[UBIFS_HMAC_ARR_SZ];
 
 	if (!ubifs_authenticated(c))
 		return sleb->nodes_cnt;
 
-	hash = kmalloc(crypto_shash_descsize(c->hash_tfm), GFP_NOFS);
-	hmac = kmalloc(c->hmac_desc_len, GFP_NOFS);
-	if (!hash || !hmac) {
-		err = -ENOMEM;
-		goto out;
-	}
-
 	list_for_each_entry(snod, &sleb->nodes, list) {
 
 		n_nodes++;
@@ -662,9 +656,6 @@ static int authenticate_sleb(struct ubifs_info *c, struct ubifs_scan_leb *sleb,
 		err = 0;
 	}
 out:
-	kfree(hash);
-	kfree(hmac);
-
 	return err ? err : n_nodes - n_not_auth;
 }
 
-- 
2.26.2


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
