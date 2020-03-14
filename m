Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F787185652
	for <lists+linux-mtd@lfdr.de>; Sat, 14 Mar 2020 21:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+auWz0KhqsOWjzg1LqiPDSi8oUf/gjRMv/WHppgLUc=; b=YrQdsAJRRWy8aT
	vcdJRiENwt5cRS+Z6C0UuDcXCIDvnv/GiT9iWwKCyPEeUZllDo2Ym7OIvUW1DM3nlE5xQXg3MOFPR
	6WCQXmVg0HIEFfcE+NonoVfcGXbW0MOvp+Dkxn//U0NSJul9pFCW7JyIJ5/pn+6lcxMlgmRYTTJ9d
	jfmn/wCaJKO1FaSKcwUPUjEcYDx/ein2oFCQ0+2pgVM542Q5NNXsn59PytPFUErNqv9pj5dNVdLYk
	2bU7C2qiVOW2LUmx3MM2/BP9kEV+ELOeF0/Lck/cWXV4SEbqSjj5Qn3xW3STik4U4bF94X2rodjEL
	XayJZl4w2R0V57YJnUOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDDnO-0003fH-6f; Sat, 14 Mar 2020 20:54:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDDmU-00034R-NF
 for linux-mtd@lists.infradead.org; Sat, 14 Mar 2020 20:53:17 +0000
Received: from sol.hsd1.ca.comcast.net (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EADF720791;
 Sat, 14 Mar 2020 20:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584219194;
 bh=ZzuiXJqO7xJuPiMyB/BPCRwhFr979eXQdYA1WeJwYWU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hAaAM7yRrqMusd/sK52UdwQpOzgF3eiT9ddaMqxp+st3LMnrNcXRPOBlYKENxE8q8
 en7uS4J+vpq0fp2GA3ZxV+CrJYXX6hBYwnhSbT0f+RARhtTLKPM9O3o5/80ffNQxxk
 nrdzx8iSktHeW2Jeb7tnkEWDGz5XJKI76gJnQZlk=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH 3/4] f2fs: wire up FS_IOC_GET_ENCRYPTION_NONCE
Date: Sat, 14 Mar 2020 13:50:51 -0700
Message-Id: <20200314205052.93294-4-ebiggers@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314205052.93294-1-ebiggers@kernel.org>
References: <20200314205052.93294-1-ebiggers@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_135314_775556_3B97B19A 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-fsdevel@vger.kernel.org, linux-api@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

This new ioctl retrieves a file's encryption nonce, which is useful for
testing.  See the corresponding fs/crypto/ patch for more details.

Signed-off-by: Eric Biggers <ebiggers@google.com>
---
 fs/f2fs/file.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/fs/f2fs/file.c b/fs/f2fs/file.c
index 0d4da644df3bc..351762f778405 100644
--- a/fs/f2fs/file.c
+++ b/fs/f2fs/file.c
@@ -2423,6 +2423,14 @@ static int f2fs_ioc_get_encryption_key_status(struct file *filp,
 	return fscrypt_ioctl_get_key_status(filp, (void __user *)arg);
 }
 
+static int f2fs_ioc_get_encryption_nonce(struct file *filp, unsigned long arg)
+{
+	if (!f2fs_sb_has_encrypt(F2FS_I_SB(file_inode(filp))))
+		return -EOPNOTSUPP;
+
+	return fscrypt_ioctl_get_nonce(filp, (void __user *)arg);
+}
+
 static int f2fs_ioc_gc(struct file *filp, unsigned long arg)
 {
 	struct inode *inode = file_inode(filp);
@@ -3437,6 +3445,8 @@ long f2fs_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
 		return f2fs_ioc_remove_encryption_key_all_users(filp, arg);
 	case FS_IOC_GET_ENCRYPTION_KEY_STATUS:
 		return f2fs_ioc_get_encryption_key_status(filp, arg);
+	case FS_IOC_GET_ENCRYPTION_NONCE:
+		return f2fs_ioc_get_encryption_nonce(filp, arg);
 	case F2FS_IOC_GARBAGE_COLLECT:
 		return f2fs_ioc_gc(filp, arg);
 	case F2FS_IOC_GARBAGE_COLLECT_RANGE:
@@ -3611,6 +3621,7 @@ long f2fs_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	case FS_IOC_REMOVE_ENCRYPTION_KEY:
 	case FS_IOC_REMOVE_ENCRYPTION_KEY_ALL_USERS:
 	case FS_IOC_GET_ENCRYPTION_KEY_STATUS:
+	case FS_IOC_GET_ENCRYPTION_NONCE:
 	case F2FS_IOC_GARBAGE_COLLECT:
 	case F2FS_IOC_GARBAGE_COLLECT_RANGE:
 	case F2FS_IOC_WRITE_CHECKPOINT:
-- 
2.25.1


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
