Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A8C417CB0A
	for <lists+linux-mtd@lfdr.de>; Sat,  7 Mar 2020 03:36:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ffRTQ8omkRsK9hsQXlt9ypjMiZjRt+S+JKCC4iaa2bg=; b=NpmbiBjkL9J7jK
	YwNyRyfSXV8OYOjWWRKusIIj/Bf2AsRpOGZRYCMTm0rHglNTTnLU7MS6ngDvAJq9DURHYhIE8Zfl7
	LDn1QyJttW614Qb4l9Sx+ykr91AYO7k3koag9iG1Tbq8mj6XYvm8M2RDUi9kl0gEUDuV8fUk4MfIG
	/TZZ8nrfeBuEatEowoLOgZtWkE9cmKC92efJKFCWvS3vm6wB4l9DLE+8jSSOYVHoPxZ1KdLGKOLCT
	/s/Ls8EIaDZg2lahi0cmSO2HajAr1zJBCxi1tYXEVuFROzs04WgO+TuF4IePHZC4/awqWsZWeApNB
	t55yLOnJUBHSQhRGqySw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAPKS-0001KC-M2; Sat, 07 Mar 2020 02:36:40 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAPKM-0001JQ-Rh
 for linux-mtd@lists.infradead.org; Sat, 07 Mar 2020 02:36:36 +0000
Received: by mail-pg1-x54a.google.com with SMTP id v11so2513633pgs.10
 for <linux-mtd@lists.infradead.org>; Fri, 06 Mar 2020 18:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=hL4QYmipQbbtBF3hqX0FdDc0KzQVh/PklVg+OKiKB0c=;
 b=fH4KDebpx8sfR/ExNItOLzsNNZbzuWPMaFA6X0gtKuiYWaa3VS/gCqm9U3BgcKI1kG
 e7/FD5PABlXZvNRNPlaiyvNYxjH7MJXMmOpwXyefWgZjzeJtvh26HfJuAjFe7Yy9lOA1
 t2TLyoLjiSbm5QKizkXqoTTxJuK4yPWtNqNJRJK26GNzaWFtpT4tlAJTLhqIhRhPxHpU
 4WYWqBTcoH+Bl6qgJCQ7uHhzGnrfa3KaK30WACW8WGDTDkP8dSqvFw1QpLKEpoGjkE21
 A1Z2i6nYM+2DB8zOPZiduwEW9dh0TwsUMvd2rF/qkovCw+rOowod48n/BhxsW34sUgWH
 3qgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=hL4QYmipQbbtBF3hqX0FdDc0KzQVh/PklVg+OKiKB0c=;
 b=AY8Z5VSXPbPy4Ouce/Qh9xX2YTlH0zgrh3eACwFZ1KkAd63RzN7VPK7f0mqcIP/fS/
 OYKBe6kYyC0XWBLwdqrb6BOcZ7pqXbIdIoQkf9DVPJRZsVXFrCJ7UeTTYKznjNwiQNr4
 MFXpmqnvexv4STgXLjM/g5+GWob6UObjDa/Xh7vyVwFa1sDaOstK7SOqVSiwDgAyISai
 7wM9PKaZJQz+oVONlMCaY85at/GkN7qlXYsyCxaYUA8QgX5pa0qUpdBdy9N9EHmVY1D0
 DgLK4SjUCKsaa8NBpTOVwXqkxeLrsp8IIuDmniVdCUdgOg0Hc2dor1D8slSdsXrQhowa
 he9Q==
X-Gm-Message-State: ANhLgQ0fxJqEClepAjrydvY+HQRESl+oD9vkHmSIbl3nZRRmGpy3eCgz
 frx42fQTwY2iryKlQS7TDzYVY0sy3ho=
X-Google-Smtp-Source: ADFU+vvinrVh+l8QTv3HIUiABuCgsyoBanuoKAxU/xc+BcTv2eFzH5SpHBDbPai696SnQnmC+kbjhJ4IF6o=
X-Received: by 2002:a17:90b:3717:: with SMTP id
 mg23mr6425637pjb.89.1583548593063; 
 Fri, 06 Mar 2020 18:36:33 -0800 (PST)
Date: Fri,  6 Mar 2020 18:36:03 -0800
Message-Id: <20200307023611.204708-1-drosen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH v8 0/8] Support for Casefolding and Encryption
From: Daniel Rosenberg <drosen@google.com>
To: "Theodore Ts'o" <tytso@mit.edu>, linux-ext4@vger.kernel.org, 
 Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, 
 linux-f2fs-devel@lists.sourceforge.net, Eric Biggers <ebiggers@kernel.org>, 
 linux-fscrypt@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_183634_927816_ECA84B2D 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Daniel Rosenberg <drosen@google.com>, linux-doc@vger.kernel.org,
 kernel-team@android.com, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, Andreas Dilger <adilger.kernel@dilger.ca>,
 linux-fsdevel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

These patches are all on top of torvalds/master

Ext4 and F2FS currently both support casefolding and encryption, but not at
the same time. These patches aim to rectify that.

I've left off the Ext4 patches that enable casefolding and ecryption from
this revision since they still need some fixups, and I haven't gotten around
to the fsck changes yet.

I moved the identical casefolding dcache operations for ext4 and f2fs into
fs/libfs.c, as all filesystems using casefolded names will want them.

I've also adjust fscrypt to not set it's d_revalidate operation during it's
prepare lookup, instead having the calling filesystem set it up. This is
done to that the filesystem may have it's own dentry_operations. Also added
a helper function in libfs.c that will work for filesystems supporting both
casefolding and fscrypt.

For Ext4, since the hash for encrypted casefolded directory names cannot be
computed without the key, we need to store the hash on disk. We only do so
for encrypted and casefolded directories to avoid on disk format changes.
Previously encryption and casefolding could not be on the same filesystem,
and we're relaxing that requirement. F2fs is a bit more straightforward
since it already stores hashes on disk.

I've updated the related tools with just enough to enable the feature. I
still need to adjust ext4's fsck's, although without access to the keys,
neither fsck will be able to verify the hashes of casefolded and encrypted
names.

v8 changes:
Fixed issue with non-strict_mode fallback for hashing dentry op
Fixed potential RCU/unicode issue in casefolding dentry_ops.
Split "fscrypt: Have filesystems handle their d_ops" into a few smaller patches
Switched ubifs change to also use the dentry op function added in libfs.c
Added hash function in fs/unicode
changed super_block s_encoding_flags to u16. Didn't make unsigned int since
both filesystems using them use them as 16 bits, and want to avoid possible
confusion. Wouldn't really be opposed to that change though
Added kernel doc comments
misc other small adjustments
TODO:
 Investigate moving to a dentry flag to check for casefolding, or otherwise
 conditionally setting the casefolding dentry ops as needed, like fscrypt.
 Currently not done due to some issues with cached negative dentries and
 toggling casefolding on an empty directory.

 Ext4 fsck changes/debugging ext4 patches


v7 changes:
Moved dentry operations from unicode to libfs, added new iterator function
to unicode to allow this.
Added libfs function for setting dentries to remove code duplication between
ext4 and f2fs.

v6 changes:
Went back to using dentry_operations for casefolding. Provided standard
implementations in fs/unicode, avoiding extra allocation in d_hash op.
Moved fscrypt d_ops setting to be filesystem's responsibility to maintain
compatibility with casefolding and overlayfs if casefolding is not used
fixes some f2fs error handling

v4-5: patches submitted on fscrypt

v3 changes:
fscrypt patch only creates hash key if it will be needed.
Rebased on top of fscrypt branch, reconstified match functions in ext4/f2fs

v2 changes:
fscrypt moved to separate thread to rebase on fscrypt dev branch
addressed feedback, plus some minor fixes

Daniel Rosenberg (8):
  unicode: Add utf8_casefold_hash
  fs: Add standard casefolding support
  f2fs: Use generic casefolding support
  ext4: Use generic casefolding support
  fscrypt: Export fscrypt_d_revalidate
  libfs: Add generic function for setting dentry_ops
  fscrypt: Have filesystems handle their d_ops
  f2fs: Handle casefolding with Encryption

 fs/crypto/fname.c           |   7 +-
 fs/crypto/fscrypt_private.h |   1 -
 fs/crypto/hooks.c           |   1 -
 fs/ext4/dir.c               |  51 -----------
 fs/ext4/ext4.h              |  16 ----
 fs/ext4/hash.c              |   2 +-
 fs/ext4/namei.c             |  21 ++---
 fs/ext4/super.c             |  15 ++--
 fs/f2fs/dir.c               | 127 +++++++++++-----------------
 fs/f2fs/f2fs.h              |  18 +---
 fs/f2fs/hash.c              |  27 ++++--
 fs/f2fs/inline.c            |   9 +-
 fs/f2fs/namei.c             |   1 +
 fs/f2fs/super.c             |  17 ++--
 fs/f2fs/sysfs.c             |  10 ++-
 fs/libfs.c                  | 164 ++++++++++++++++++++++++++++++++++++
 fs/ubifs/dir.c              |   1 +
 fs/unicode/utf8-core.c      |  23 ++++-
 include/linux/f2fs_fs.h     |   3 -
 include/linux/fs.h          |  24 ++++++
 include/linux/fscrypt.h     |   6 +-
 include/linux/unicode.h     |   3 +
 22 files changed, 321 insertions(+), 226 deletions(-)

-- 
2.25.1.481.gfbce0eb801-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
