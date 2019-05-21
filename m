Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 928C924529
	for <lists+linux-mtd@lfdr.de>; Tue, 21 May 2019 02:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRJfAYXCDvEZltvCM7bE17Z/mV33mycRkt5XnJTbTRE=; b=R0/Ny2t5TndevI
	aexisl6oIu6CzUfgQt3bRegvop1pXafaayp4OHqdNkHoRIfNbKFLEY/DY69EK33hf3LFSAbh2Xl5m
	dA+28D2R4t/kq6onTbHEvDLZLE31i49UJI9/BoZVD2lnJIUMgkjO+pbTPj8RGHGyBbn4Ob8ybAzPp
	VaIfKCEnex9OkpmU8NlmxceqqVpaUAs9KUz9E2csNudIUSybOptFRNhWpxjwpUxaM2v8+K23f1FMI
	UyOsaL0oOq1joPEqR5+AIF6ED+byoPaeNegrBjEZn1WNcnEl/cWSETE1hWCqWtvHPb9GMa+jgblzS
	vmywyw83jwE1SWEdnliw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSsqd-0003D7-GE; Tue, 21 May 2019 00:41:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSsqV-0003Ck-QI
 for linux-mtd@lists.infradead.org; Tue, 21 May 2019 00:41:37 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 97DB021479;
 Tue, 21 May 2019 00:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558399294;
 bh=Hi8CWUPvFqYNtSGug59owSA1L/4doZZYflpgAHOx/NI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SECxqMXFQ/j6wyvpLukk+PEqZbVg3UD8pzGWfEB3cDMvHu7ylmQsOOz+L2OIaPY+D
 hock02mJ8MMM//K9xtaAOin90wDonftuTQm6rUigo4kdalTLksNy4ZCBJeAtgCGNI8
 8BGZwn9rAJ/QyQATo7LHfoVj4ym06Nin3tTSnEes=
Date: Mon, 20 May 2019 17:41:20 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Theodore Ts'o <tytso@mit.edu>
Subject: Re: [PATCH v6 00/16] fscrypt: key management improvements
Message-ID: <20190521004119.GA647@sol.localdomain>
References: <20190520172552.217253-1-ebiggers@kernel.org>
 <20190521001636.GA2369@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521001636.GA2369@mit.edu>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_174135_869243_5FFEEB41 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-ext4@vger.kernel.org, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Satya Tangirala <satyat@google.com>, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 08:16:36PM -0400, Theodore Ts'o wrote:
> On Mon, May 20, 2019 at 10:25:36AM -0700, Eric Biggers wrote:
> > 
> > This patchset makes major improvements to how keys are added, removed,
> > and derived in fscrypt, aka ext4/f2fs/ubifs encryption.  It does this by
> > adding new ioctls that add and remove encryption keys directly to/from
> > the filesystem, and by adding a new encryption policy version ("v2")
> > where the user-provided keys are only used as input to HKDF-SHA512 and
> > are identified by their cryptographic hash.
> 
> Do you have userspace programs which use these new ioctl's?  What's
> are testing strategy for these new ioctls?
> 
> Thanks,
> 
> 						- Ted

This was answered in the cover letter, quoted below:

I've written xfstests for the new APIs.  They test the APIs themselves
as well as verify the correctness of the ciphertext stored on-disk for
v2 encryption policies.  The tests can be found at:

	Repository:   https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/xfstests-dev.git
	Branch:       fscrypt-key-mgmt-improvements

The xfstests depend on new xfs_io commands which can be found at:

	Repository:   https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/xfsprogs-dev.git
	Branch:       fscrypt-key-mgmt-improvements

I've also made proof-of-concept changes to the 'fscrypt' userspace
program (https://github.com/google/fscrypt) to make it support v2
encryption policies.  You can find these changes in git at:

	Repository:   https://github.com/ebiggers/fscrypt.git
	Branch:       fscrypt-key-mgmt-improvements

To make the 'fscrypt' userspace program experimentally use v2 encryption
policies on new encrypted directories, add the following to
/etc/fscrypt.conf within the "options" section:

	"policy_version": "2"

Finally, it's also planned for Android and Chromium OS to switch to the
new ioctls and eventually to v2 encryption policies.  Work-in-progress,
proof-of-concept changes by Satya Tangirala for AOSP can be found at
https://android-review.googlesource.com/q/topic:fscrypt-key-mgmt-improvements

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
