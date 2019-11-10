Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFF1F6981
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 15:45:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOvk3bhexvzBoNVwazojpUIR5PaG4iSujdZ+g6umDFg=; b=QLkIPmiguKszIQ
	03jUeyiyXQlJI3XUgq6ZRGDVL3QWM6wDtsOUTwLxN92GaiKVYKmlmKVQlTsBnsIatrZrdcCdrnOQM
	X9hGzGEptIOq9vHmaVh7PwddBFsACxKZnTNow/irLocJeMEZB7Q27ioC91kxM6RJ5gho4UIrFhaKO
	rHycPrhmcc9q928zod0xHYQjGyXyfljopKFXyaGoqPQ66UffMYKE1NvwCaSz436zN+1XKc/SSToLZ
	oXJYUfm+soXE6Vr7vEmDjYJw8hHRpN39A5lBVmip0TffCXvWb2ESLxINuVxhwIGEaVrNXZMEW7H0X
	8j1xxcDuZInJ4nPYrRkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iToTM-0006lW-2E; Sun, 10 Nov 2019 14:45:48 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iToT3-0006cM-7F
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 14:45:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 50A52181099F2;
 Sun, 10 Nov 2019 15:45:24 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id oZ-OHfw5vEHR; Sun, 10 Nov 2019 15:45:23 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id kuIh8-GgSRyh; Sun, 10 Nov 2019 15:45:23 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 1/2] mkfs.ubifs: fscrypt: bail from encrypt_block if
 gen_essiv_salt fails
Date: Sun, 10 Nov 2019 15:44:41 +0100
Message-Id: <20191110144442.26680-2-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110144442.26680-1-david.oberhollenzer@sigma-star.at>
References: <20191110144442.26680-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_064529_410694_D9BDBD96 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: richard@nod.at, David Oberhollenzer <david.oberhollenzer@sigma-star.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

What originally cought my attention was that gen_essiv_salt has a
size_t return type and error paths that return -1 on failure.
Further investigation revealed that the error value is never checked
for. The encrypt_block function doesn't use the return value in any
way and simply continues onward.

Furthermore, the gen_essiv_salt function has an error case that emits
an error message but returns success state.

This patch modifes gen_essiv_salt to return an error status in all
error branches, changes the return type to ssize_t and adds a check
to encrypt_block if gen_essiv_salt fails.

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 ubifs-utils/mkfs.ubifs/crypto.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/ubifs-utils/mkfs.ubifs/crypto.c b/ubifs-utils/mkfs.ubifs/crypto.c
index cd68e37..d31bd2a 100644
--- a/ubifs-utils/mkfs.ubifs/crypto.c
+++ b/ubifs-utils/mkfs.ubifs/crypto.c
@@ -109,7 +109,7 @@ fail:
 	return -1;
 }
 
-static size_t gen_essiv_salt(const void *iv, size_t iv_len, const void *key, size_t key_len, void *salt)
+static ssize_t gen_essiv_salt(const void *iv, size_t iv_len, const void *key, size_t key_len, void *salt)
 {
 	size_t ret;
 	const EVP_CIPHER *cipher;
@@ -127,8 +127,10 @@ static size_t gen_essiv_salt(const void *iv, size_t iv_len, const void *key, siz
 	}
 
 	ret = do_encrypt(cipher, iv, iv_len, sha256, EVP_MD_size(EVP_sha256()), NULL, 0, salt);
-	if (ret != iv_len)
+	if (ret != iv_len) {
 		errmsg("Unable to compute ESSIV salt, return value %zi instead of %zi", ret, iv_len);
+		return -1;
+	}
 
 	free(sha256);
 
@@ -154,7 +156,8 @@ static ssize_t encrypt_block(const void *plaintext, size_t size,
 
 	if (cipher == EVP_aes_128_cbc()) {
 		tweak = alloca(ivsize);
-		gen_essiv_salt(&iv, FS_IV_SIZE, key, key_len, tweak);
+		if (gen_essiv_salt(&iv, FS_IV_SIZE, key, key_len, tweak) < 0)
+			return -1;
 	} else {
 		tweak = &iv;
 	}
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
