Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CBDF69C0
	for <lists+linux-mtd@lfdr.de>; Sun, 10 Nov 2019 16:34:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zxlonvh57hr4lvOOk09BpddidAeDM1kaFzD0BdzE7FQ=; b=Etey+16g+MJUut
	t0EVJZGPgZ7BGOC0FbyYVZVrUiG7CW3NAM6oKQMkK84jS3u2I/OELgotkt2SdTa4F24xbg+J8maeJ
	RxFbs1MSKs+cWiTIrf4ILrFjfehMjoKtvEkpMV7cQliaChWQ6E1avE5QpRrGW5fibAPuyr1oYgKPC
	uPxS6zGThxtn/DlLJz7wU+1KM2uoH6/uGIZ0AcFaSIZWV8kcBldy6dA4zGkG2RSFljVO4isYrdHSx
	TJsnh+j2Xobkz+zPRdQuzgmT+A/dq3qq7PQ0m7ia3aFWPbjEZ8Avwt5mTg0N7ZHlg/k10kXPVRMYk
	B6tr5sa07iNdw8kN6YrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTpEO-0007VG-51; Sun, 10 Nov 2019 15:34:24 +0000
Received: from lilium.sigma-star.at ([109.75.188.150])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTpCG-0005a5-GS
 for linux-mtd@lists.infradead.org; Sun, 10 Nov 2019 15:32:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by lilium.sigma-star.at (Postfix) with ESMTP id 0472E18109A02;
 Sun, 10 Nov 2019 16:32:11 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 8M9ldtQF4Rcv; Sun, 10 Nov 2019 16:32:07 +0100 (CET)
Received: from lilium.sigma-star.at ([127.0.0.1])
 by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id H8tj9POS8P4O; Sun, 10 Nov 2019 16:32:06 +0100 (CET)
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
To: linux-mtd@lists.infradead.org
Subject: [PATCH 05/15] mkfs.ubifs: don't leak temporary buffers
Date: Sun, 10 Nov 2019 16:30:49 +0100
Message-Id: <20191110153059.28878-6-david.oberhollenzer@sigma-star.at>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
References: <20191110153059.28878-1-david.oberhollenzer@sigma-star.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_073212_711051_429664D7 
X-CRM114-Status: GOOD (  10.44  )
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

Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
---
 ubifs-utils/mkfs.ubifs/crypto.c  |  9 ++++++---
 ubifs-utils/mkfs.ubifs/fscrypt.c | 18 +++++++++++++++---
 2 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/ubifs-utils/mkfs.ubifs/crypto.c b/ubifs-utils/mkfs.ubifs/crypto.c
index d31bd2a..19c445e 100644
--- a/ubifs-utils/mkfs.ubifs/crypto.c
+++ b/ubifs-utils/mkfs.ubifs/crypto.c
@@ -118,23 +118,26 @@ static ssize_t gen_essiv_salt(const void *iv, size_t iv_len, const void *key, si
 	cipher = EVP_aes_256_ecb();
 	if (!cipher) {
 		errmsg("OpenSSL: Cipher AES-256-ECB is not supported");
-		return -1;
+		goto fail;
 	}
 
 	if (do_hash(EVP_sha256(), key, key_len, sha256) != 0) {
 		errmsg("sha256 failed");
-		return -1;
+		goto fail;
 	}
 
 	ret = do_encrypt(cipher, iv, iv_len, sha256, EVP_MD_size(EVP_sha256()), NULL, 0, salt);
 	if (ret != iv_len) {
 		errmsg("Unable to compute ESSIV salt, return value %zi instead of %zi", ret, iv_len);
-		return -1;
+		goto fail;
 	}
 
 	free(sha256);
 
 	return ret;
+fail:
+	free(sha256);
+	return -1;
 }
 
 static ssize_t encrypt_block(const void *plaintext, size_t size,
diff --git a/ubifs-utils/mkfs.ubifs/fscrypt.c b/ubifs-utils/mkfs.ubifs/fscrypt.c
index 118c11c..b75bdf7 100644
--- a/ubifs-utils/mkfs.ubifs/fscrypt.c
+++ b/ubifs-utils/mkfs.ubifs/fscrypt.c
@@ -106,13 +106,19 @@ int encrypt_path(void **outbuf, void *data, unsigned int data_len,
 	memcpy(inbuf, data, data_len);
 
 	crypt_key = calc_fscrypt_subkey(fctx);
-	if (!crypt_key)
+	if (!crypt_key) {
+		free(inbuf);
+		free(*outbuf);
 		return err_msg("could not compute subkey");
+	}
 
 	ret = fscrypt_cipher->encrypt_fname(inbuf, cryptlen,
 					    crypt_key, *outbuf);
-	if (ret < 0)
+	if (ret < 0) {
+		free(inbuf);
+		free(*outbuf);
 		return err_msg("could not encrypt filename");
+	}
 
 	free(crypt_key);
 	free(inbuf);
@@ -133,13 +139,19 @@ int encrypt_data_node(struct fscrypt_context *fctx, unsigned int block_no,
 	memcpy(inbuf, &dn->data, length);
 
 	crypt_key = calc_fscrypt_subkey(fctx);
-	if (!crypt_key)
+	if (!crypt_key) {
+		free(inbuf);
+		free(outbuf);
 		return err_msg("could not compute subkey");
+	}
 
 	ret = fscrypt_cipher->encrypt_block(inbuf, pad_len,
 					    crypt_key, block_no,
 					    outbuf);
 	if (ret != pad_len) {
+		free(inbuf);
+		free(outbuf);
+		free(crypt_key);
 		return err_msg("encrypt_block returned %zi "
 				"instead of %zi", ret, pad_len);
 	}
-- 
2.21.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
