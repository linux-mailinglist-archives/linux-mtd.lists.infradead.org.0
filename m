Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBD215624C
	for <lists+linux-mtd@lfdr.de>; Sat,  8 Feb 2020 02:35:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q65SPIKDiaYhr5O4d7td6k4/+MJSMVClchCyFvr0uGI=; b=EEZheTEyBbZWZC
	zXc0XFYaUaRwWu9yt0ushct79+jHSAJnAuZzjavnwQYEo7Xp0aZQRqL24iQSjdxfGEPxq5cpCU+O/
	rdNNDFPgID17YJ7wSH6BfeEEnc7tzgyBTERG73SMYaN9BdwqhIjkTJ6+lnDSe6vwOU4ig13jc4ofm
	IwZZWFTJ4fUIDK+Nm0YPCVCCyG8z1BJfri7crGKLi8De1yoe8GBSHAcFx5KjZBKnrBOQZRtXd5Fd5
	HkiCrQB/c8RiHmgRnN7flYS5kVdJNcHqJngI9GMD+77RBtiJbt2CNcBvZfCe68VSlgz1IW0gp60eU
	sFF7f2hNHhP3jjwUhDvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0F1N-0004ap-Gm; Sat, 08 Feb 2020 01:34:57 +0000
Received: from mail-pj1-x1049.google.com ([2607:f8b0:4864:20::1049])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0F1C-0004Zf-Ja
 for linux-mtd@lists.infradead.org; Sat, 08 Feb 2020 01:34:48 +0000
Received: by mail-pj1-x1049.google.com with SMTP id c31so2327477pje.9
 for <linux-mtd@lists.infradead.org>; Fri, 07 Feb 2020 17:34:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=GmdJt27134kNRYXiKp4wrB+O4TXMZQXM52BZBGOfEtM=;
 b=ZzptqxUsermKYJMyiUDjvBiGxUIdwqTzJfy+wNJraQ/fqxPgGbS6BGRKrTpYZT99NP
 LQVDbxgl6rqVunRCW0ICPGiKpNThIj+TdvQ5TjjeSLkpDlJtuWqpEnxBlBrS2HEtG+RW
 9z2HN6g50wLJeFY9fmYqHHVVeKmyWOB0q7ii4xnMViegdwpFM70+FfqSZe7YAxDz9qPz
 rQI68XvesZcSELHJhYuD8Anx5KlcByOodivzB6VfODhyuo8qsoR7iOlqkI0zS2IW8J1A
 G74nrd0ARErEc3uP+liYKFfxifqkv4AUuLVaYmPTGE7ECQxADA+maD2kLEzIxEDZMkLy
 HKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=GmdJt27134kNRYXiKp4wrB+O4TXMZQXM52BZBGOfEtM=;
 b=Hl/Vg5FIb/bbY2Vk6HavP/8OAIXsYP+QUj4txLP1AQvV/D8lSDOH7drEOJCi79fsGQ
 NlzkG48HW8s7KnbRYG630uA69nF7YMQXyUxHn6ETE7rgrAG5a6UHpualkZPW4UbXEnqe
 YVbMHoN/N5cSc7Vk1bhZYX8WNeLd1yVgHzgOZqaBycmkZZRVd0Cu/o92bXSHXiYry6t6
 tbFC50u+sZp8F7mEjazXcMv9EvGrT7Pr55llEK58EjtUipSWiehKk7z/KUgiXaYDdZVb
 0ip9W6BbrWAVaKRTmmrEyxXDZeEPn7kWgUFjHTkpwtUcI0E6S+F2wyjKbYXQCfjJi+7t
 EZvw==
X-Gm-Message-State: APjAAAWejAsHzKUV9cqtsHyiTz8DxG10GsAJZa79ve1FFGA7B6xlMVbu
 +esF9Z0X/H6N4lQ5c6M08S+iNAxOUn4=
X-Google-Smtp-Source: APXvYqxT2SICJR0/scVLMtmD7Drj2JGcZpB0cicjSWB5iCPIziOWFDKhaM/J3laVncF61b47rtO91OtcfaA=
X-Received: by 2002:a63:1c1d:: with SMTP id c29mr2121466pgc.14.1581125684457; 
 Fri, 07 Feb 2020 17:34:44 -0800 (PST)
Date: Fri,  7 Feb 2020 17:34:30 -0800
Message-Id: <20200208013438.240137-1-drosen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 0/8] Support fof Casefolding and Encryption
From: Daniel Rosenberg <drosen@google.com>
To: "Theodore Ts'o" <tytso@mit.edu>, linux-ext4@vger.kernel.org, 
 Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, 
 linux-f2fs-devel@lists.sourceforge.net, Eric Biggers <ebiggers@kernel.org>, 
 linux-fscrypt@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
 Richard Weinberger <richard@nod.at>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_173446_672351_FCD618B9 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

v7 chances:
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
  unicode: Add utf8_casefold_iter
  fs: Add standard casefolding support
  f2fs: Use generic casefolding support
  ext4: Use generic casefolding support
  fscrypt: Have filesystems handle their d_ops
  f2fs: Handle casefolding with Encryption
  ext4: Hande casefolding with encryption
  ext4: Optimize match for casefolded encrypted dirs

 Documentation/filesystems/ext4/directory.rst |  27 ++
 fs/crypto/fname.c                            |   7 +-
 fs/crypto/fscrypt_private.h                  |   1 -
 fs/crypto/hooks.c                            |   1 -
 fs/ext4/dir.c                                |  78 +----
 fs/ext4/ext4.h                               |  93 ++++--
 fs/ext4/hash.c                               |  26 +-
 fs/ext4/ialloc.c                             |   5 +-
 fs/ext4/inline.c                             |  41 ++-
 fs/ext4/namei.c                              | 325 ++++++++++++-------
 fs/ext4/super.c                              |  21 +-
 fs/f2fs/dir.c                                | 127 +++-----
 fs/f2fs/f2fs.h                               |  15 +-
 fs/f2fs/hash.c                               |  25 +-
 fs/f2fs/inline.c                             |   9 +-
 fs/f2fs/namei.c                              |   1 +
 fs/f2fs/super.c                              |  17 +-
 fs/f2fs/sysfs.c                              |  10 +-
 fs/libfs.c                                   | 127 ++++++++
 fs/ubifs/dir.c                               |  18 +
 fs/unicode/utf8-core.c                       |  25 +-
 include/linux/f2fs_fs.h                      |   3 -
 include/linux/fs.h                           |  24 ++
 include/linux/fscrypt.h                      |   6 +-
 include/linux/unicode.h                      |  10 +
 25 files changed, 671 insertions(+), 371 deletions(-)

-- 
2.25.0.341.g760bfbb309-goog


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
