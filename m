Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D459115A0FD
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Feb 2020 06:59:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZfVQEJI6v8V6z+yuSw3T9rxFciVMboXONpTqvoELF8=; b=pBY1WMuMO5r2Xs
	ub2+xUd9JqWDelvPImVZJ390CVuRzH/Zu4I4hEusdF4Xw5a4yFmlolxlrRS2aVOtSJfJKgGFKAroK
	0Pc409TKmVDcdjTiLC/nPQP8y4BKUBylYxvOi3T5kCY4AB5x4W0ux4eZrxBt1YFN/l5gSSR1tdCLo
	FF2yc/ESHzpJQlCmT8g935WUSUf03oXnimk7QVZTh1UxbTEpPapT6vwHHegkYT0bo33km1dEPTdIT
	Iq/qi2v35DteNFsKGgoGLA1KXkz1aBjqyQu0LrAqqauuiA3uMWrRWW3AOG648VAqm1HJlhwII0sW8
	5u5QJnB1CEHbFcXlIBaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1l3P-0004g9-PM; Wed, 12 Feb 2020 05:59:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1l3H-0004fb-Qh
 for linux-mtd@lists.infradead.org; Wed, 12 Feb 2020 05:59:13 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DEDE12073C;
 Wed, 12 Feb 2020 05:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581487151;
 bh=xQFnOudKqb/kbsLlYNKBDsIDCJCWea6054v8vCNp2FQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EsE7XRDFHHOJfmDnCHM815qhGLMokCKAMN0ADFh7v0kZYkXrKVyCmg3ov9QmVtxw8
 yU3nMgZ5d6TS7d8e5dmazqBXjtQqTTJgUxJkjAKkGUCuNYVAgrkKkuG4uNoWXxC9u9
 l1eeoPbZjmyRuFtYZGF48Bp8fihJgKHWSZUymX7w=
Date: Tue, 11 Feb 2020 21:59:09 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Daniel Rosenberg <drosen@google.com>
Subject: Re: [PATCH v7 7/8] ext4: Hande casefolding with encryption
Message-ID: <20200212055909.GI870@sol.localdomain>
References: <20200208013552.241832-1-drosen@google.com>
 <20200208013552.241832-8-drosen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208013552.241832-8-drosen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_215911_884989_233B1076 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-team@android.com, Theodore Ts'o <tytso@mit.edu>,
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Chao Yu <chao@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 05:35:51PM -0800, Daniel Rosenberg wrote:
> This adds support for encryption with casefolding.
> 
> Since the name on disk is case preserving, and also encrypted, we can no
> longer just recompute the hash on the fly. Additionally, to avoid
> leaking extra information from the hash of the unencrypted name, we use
> siphash via an fscrypt v2 policy.
> 
> The hash is stored at the end of the directory entry for all entries
> inside of an encrypted and casefolded directory apart from those that
> deal with '.' and '..'. This way, the change is backwards compatible
> with existing ext4 filesystems.
> 
> Signed-off-by: Daniel Rosenberg <drosen@google.com>
> ---
>  Documentation/filesystems/ext4/directory.rst |  27 ++
>  fs/ext4/dir.c                                |  27 +-
>  fs/ext4/ext4.h                               |  64 +++-
>  fs/ext4/hash.c                               |  24 +-
>  fs/ext4/ialloc.c                             |   5 +-
>  fs/ext4/inline.c                             |  41 +--
>  fs/ext4/namei.c                              | 291 +++++++++++++------
>  fs/ext4/super.c                              |   6 -
>  8 files changed, 343 insertions(+), 142 deletions(-)

How was this tested?  I tried it (using a patched version of 'mke2fs' that
allows the encrypt and encoding options to be combined), and I immediately got
an ext4 error about a bad directory entry:

~/e2fsprogs/misc/mke2fs -F -t ext4 -O encrypt -E encoding=utf8 /dev/vdb
mount /dev/vdb /mnt
fscrypt setup /mnt
mkdir /mnt/dir
# (assumes /etc/fscrypt.conf contains policy_version 2)
echo hunter2 | fscrypt encrypt /mnt/dir --quiet --source=custom_passphrase --name=dir
chattr +F /mnt/dir
echo contents > /mnt/dir/file
umount /mnt
mount /dev/vdb /mnt
ls /mnt/dir/
[  391.292067] EXT4-fs error (device vdb): htree_dirblock_to_tree:1038: inode #8193: block 4251: comm ls: bad entry in directory: directory entry too close to block end - offset=80, inode=18, rec_len=4004, lblk=0, size=4096

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
