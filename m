Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC73314340B
	for <lists+linux-mtd@lfdr.de>; Mon, 20 Jan 2020 23:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xVRgY4WQPzlJN/wBo+TaaRU4I0DRzTIV0Rbx3Dy+qEc=; b=Ld1Wf8wR4VVR1v
	7RVYODkJTt33J8eiK2GmmUB66IImzNUn+NFKuzHeOjiavSpmZaTq07T2T0OBBEvBYt51kEeE7mfVv
	i7WshKzgrkySp5Pt6h+nQreYCdgHdKKduZMzzMyl25JSWm6v1AxMQ7/Lf78VxZodXTs3DHp4p5MP8
	kt9iiCddy3MMdbXMHedfbt2okHBhccbqwl50TR2yyB63Jz+lplD6/q+CyMtJ+8znYIJkAh6r6umuX
	NrEMBUXp1lSCGo6e30WQM8Y21uoB06+V9+zhAUPor4r1kMpriFRk32BCh2kpCO6Q9U+ZfNiXVqFbb
	7qaIBPHRCNTCGGBqU4tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itfcs-0006rV-VM; Mon, 20 Jan 2020 22:34:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itfcf-0006pe-Kn
 for linux-mtd@lists.infradead.org; Mon, 20 Jan 2020 22:34:19 +0000
Received: from sol.hsd1.ca.comcast.net (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A5FBF217F4;
 Mon, 20 Jan 2020 22:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579559657;
 bh=xm885UhKFUwKfgBkYWfnG/AC3Rw6vyxcGdpz/w5UOxs=;
 h=From:To:Cc:Subject:Date:From;
 b=n9BG408GF/aokCw8EG9MBQ9hJw9mAgpR6LRC5KJXhFvrUD8dUEMcz1fPCmgxfOxnK
 FYltkiqo8UTJrZL597rrakuG7LCaY6g0rVjw3rHQFWyQaaJluloPm74WLLPuT+6kjF
 HwzLBOeRmONd/Z5cEVB5lRpaCnrKE0dDiJHJ32rU=
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: [PATCH v5 0/6] fscrypt preparations for encryption+casefolding
Date: Mon, 20 Jan 2020 14:31:55 -0800
Message-Id: <20200120223201.241390-1-ebiggers@kernel.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_143417_706353_28E6F4D8 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Rosenberg <drosen@google.com>,
 Gabriel Krisman Bertazi <krisman@collabora.com>, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-mtd@lists.infradead.org,
 Richard Weinberger <richard@nod.at>, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

This is a cleaned up and fixed version of the fscrypt patches to prepare
for directories that are both encrypted and casefolded.

Patches 1-3 start deriving a SipHash key for the new dirhash method that
will be used by encrypted+casefolded directories.  To avoid unnecessary
overhead, we only do this if the directory is actually casefolded.

Patch 4 fixes a bug in UBIFS where it didn't gracefully handle invalid
hash values in fscrypt no-key names.  This is an existing bug, but the
new fscrypt no-key name format (patch 6) made it much easier to trigger;
it started being hit by 'kvm-xfstests -c ubifs -g encrypt'.

Patch 5 updates UBIFS to make it ready for the new fscrypt no-key name
format that always includes the dirhash.

Patch 6 modifies the fscrypt no-key names to always include the dirhash,
since with the new dirhash method the dirhash will no longer be
computable from the ciphertext filename without the key.  It also fixes
a longstanding issue where there could be collisions in the no-key
names, due to not using a proper cryptographic hash to abbreviate names.

For more information see the main patch series, which includes the
filesystem-specific changes:
https://lkml.kernel.org/linux-fscrypt/20200117214246.235591-1-drosen@google.com/T/#u

This applies to fscrypt.git#master.

Changed v4 => v5:
  - Fixed UBIFS encryption to work with the new no-key name format.

Daniel Rosenberg (3):
  fscrypt: don't allow v1 policies with casefolding
  fscrypt: derive dirhash key for casefolded directories
  fscrypt: improve format of no-key names

Eric Biggers (3):
  fscrypt: clarify what is meant by a per-file key
  ubifs: don't trigger assertion on invalid no-key filename
  ubifs: allow both hash and disk name to be provided in no-key names

 Documentation/filesystems/fscrypt.rst |  40 +++--
 fs/crypto/Kconfig                     |   1 +
 fs/crypto/fname.c                     | 239 ++++++++++++++++++++------
 fs/crypto/fscrypt_private.h           |  19 +-
 fs/crypto/hooks.c                     |  44 +++++
 fs/crypto/keysetup.c                  |  81 ++++++---
 fs/crypto/keysetup_v1.c               |   4 +-
 fs/crypto/policy.c                    |   7 +
 fs/inode.c                            |   3 +-
 fs/ubifs/dir.c                        |   6 +-
 fs/ubifs/journal.c                    |   4 +-
 fs/ubifs/key.h                        |   1 -
 include/linux/fscrypt.h               |  94 +++-------
 13 files changed, 365 insertions(+), 178 deletions(-)

-- 
2.25.0


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
