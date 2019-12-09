Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE52D11785E
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 22:24:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UEW//bTzlimDe46kEVcLttlhQMb7u2k77QrUsRoNoxY=; b=lE94eVcc9zNQgZ
	5M6rWZkde6gJAJC1yABTske+uv244Putjplm2kBgcHzpd/70PY0VCEOXQGjVGP+S9YMgKWrf7vWG3
	aXDWeqRLZ0Y1kMFjhNkanQN24T/xFz/eDKQ3BT4JClpxrM0Hu74mV0IbsSaSZGBMWCjvfyE7Ja3TG
	9b18WehwEwkLKvvMqO8VBO7guqz2DbMvHbEyhO3uICrZtQqjjMVWKKMxN1yLvEhqFonA4f1D1dEXQ
	lpRzj+UhGiwkRGwqbNc1YkCJ/QZOeAPjKEf7SWK04Zea/RnUBufkMAPOki7YFLCTEyUnhsNheAm2n
	PvTx+yPdM5ZSnpHxcWMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQW7-0006KK-5H; Mon, 09 Dec 2019 21:24:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQVy-0006JY-IG
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 21:24:23 +0000
Received: from ebiggers-linuxstation.mtv.corp.google.com (unknown
 [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C3EC206E0;
 Mon,  9 Dec 2019 21:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575926661;
 bh=AuIH2TuNaKEm6dBcgepjEUobcygYmoPNcrv739g/VaE=;
 h=From:To:Cc:Subject:Date:From;
 b=J7m6m+s8RzaSoJKCdliMpJXYf99LrPNVjrWWU2WJDaJ5oXTnD7gq/qxP7Nnkl7bvY
 9PNeNoBVhuNoLzJNODdkdHgY3KTved7XvffkkEBncbYyJ+pfRxQYH9P6RSnEtkLUng
 YE4h6d65aZU+lFiYDvliDOzoPEfYiBHfVmDGLMdk=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH] fscrypt: don't check for ENOKEY from
 fscrypt_get_encryption_info()
Date: Mon,  9 Dec 2019 13:23:48 -0800
Message-Id: <20191209212348.243331-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_132422_626322_C0A74BD7 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-ext4@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

fscrypt_get_encryption_info() returns 0 if the encryption key is
unavailable; it never returns ENOKEY.  So remove checks for ENOKEY.

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/ext4/dir.c  | 2 +-
 fs/f2fs/dir.c  | 2 +-
 fs/ubifs/dir.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/ext4/dir.c b/fs/ext4/dir.c
index 9fdd2b269d617..4c9d3ff394a5d 100644
--- a/fs/ext4/dir.c
+++ b/fs/ext4/dir.c
@@ -116,7 +116,7 @@ static int ext4_readdir(struct file *file, struct dir_context *ctx)
 
 	if (IS_ENCRYPTED(inode)) {
 		err = fscrypt_get_encryption_info(inode);
-		if (err && err != -ENOKEY)
+		if (err)
 			return err;
 	}
 
diff --git a/fs/f2fs/dir.c b/fs/f2fs/dir.c
index c967cacf979ef..d9ad842945df5 100644
--- a/fs/f2fs/dir.c
+++ b/fs/f2fs/dir.c
@@ -987,7 +987,7 @@ static int f2fs_readdir(struct file *file, struct dir_context *ctx)
 
 	if (IS_ENCRYPTED(inode)) {
 		err = fscrypt_get_encryption_info(inode);
-		if (err && err != -ENOKEY)
+		if (err)
 			goto out;
 
 		err = fscrypt_fname_alloc_buffer(inode, F2FS_NAME_LEN, &fstr);
diff --git a/fs/ubifs/dir.c b/fs/ubifs/dir.c
index 0b98e3c8b461d..acc4f942d25b6 100644
--- a/fs/ubifs/dir.c
+++ b/fs/ubifs/dir.c
@@ -512,7 +512,7 @@ static int ubifs_readdir(struct file *file, struct dir_context *ctx)
 
 	if (encrypted) {
 		err = fscrypt_get_encryption_info(dir);
-		if (err && err != -ENOKEY)
+		if (err)
 			return err;
 
 		err = fscrypt_fname_alloc_buffer(dir, UBIFS_MAX_NLEN, &fstr);
-- 
2.24.0.393.g34dc348eaf-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
