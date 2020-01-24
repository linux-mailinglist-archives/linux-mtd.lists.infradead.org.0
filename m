Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E587148F32
	for <lists+linux-mtd@lfdr.de>; Fri, 24 Jan 2020 21:14:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZ6ASmsaqSYqvnLotYtfdgfOsnq5hYRxrysS406lvFw=; b=dz0j6mqZttO/ug
	QLXTHDanPVTJgJzHNvLRSDr72CVE/eDxa4NxzMACeCdC240eY0YMrFWDnSSHidjH5evm/ymWdO5Rr
	l99uIx1iW0KJgUhZMVaeDsHdg6ePBaegVI1vWqNRnCXZRCw/xXZo2p5RjWegDzM2/wHUA1w4duzhu
	v3hr6IMn36oIIXY4xGVgL+4ee09wQO3vimM8Qwsg4iU/9lR0lK/C4zh0SR8Wivvm3plJY9O9FiUpb
	YYott5ikx0CKWGNrci5ObgWCGaORFMjQ42LgfOpXJz1ue2Oy6yXCoUSzoIKOtk2h/y+w/ze4Q4hIw
	pQIe8wCn46A6RfN8rgrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv5LK-0008OQ-Ph; Fri, 24 Jan 2020 20:14:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv5LC-0008NP-KT
 for linux-mtd@lists.infradead.org; Fri, 24 Jan 2020 20:14:07 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F8CF2071E;
 Fri, 24 Jan 2020 20:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579896844;
 bh=BXwKT7PuUAxXdQBtcYCaPasA/6uX1OMir4E6yh0LA3k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1ag7/2DSoxG5KYU0EMVWB64o75K0btoF+qRMCO5k9cTMqUywqJBdCg/sUprpKIHv/
 9MepeQSjc6pe8xJdw8+LoNAgcQY5x8NUgXg6RHWOLoXD7dmmnthVG6ewye8WF1rbAv
 53XYtcyTT0ewAW3ULL2QSG0sBV/ytCRp6aZzLJeA=
Date: Fri, 24 Jan 2020 12:14:02 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Subject: Re: [PATCH v5 4/6] ubifs: don't trigger assertion on invalid no-key
 filename
Message-ID: <20200124201317.GC41762@gmail.com>
References: <20200120223201.241390-1-ebiggers@kernel.org>
 <20200120223201.241390-5-ebiggers@kernel.org>
 <20200122003014.GA180824@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200122003014.GA180824@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_121406_696075_92D8416F 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -3.4 (---)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Daniel Rosenberg <drosen@google.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fscrypt@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 04:30:15PM -0800, Eric Biggers wrote:
> On Mon, Jan 20, 2020 at 02:31:59PM -0800, Eric Biggers wrote:
> > From: Eric Biggers <ebiggers@google.com>
> > 
> > If userspace provides an invalid fscrypt no-key filename which encodes a
> > hash value with any of the UBIFS node type bits set (i.e. the high 3
> > bits), gracefully report ENOENT rather than triggering ubifs_assert().
> > 
> > Test case with kvm-xfstests shell:
> > 
> >     . fs/ubifs/config
> >     . ~/xfstests/common/encrypt
> >     dev=$(__blkdev_to_ubi_volume /dev/vdc)
> >     ubiupdatevol $dev -t
> >     mount $dev /mnt -t ubifs
> >     mkdir /mnt/edir
> >     xfs_io -c set_encpolicy /mnt/edir
> >     rm /mnt/edir/_,,,,,DAAAAAAAAAAAAAAAAAAAAAAAAAA
> > 
> > With the bug, the following assertion fails on the 'rm' command:
> > 
> >     [   19.066048] UBIFS error (ubi0:0 pid 379): ubifs_assert_failed: UBIFS assert failed: !(hash & ~UBIFS_S_KEY_HASH_MASK), in fs/ubifs/key.h:170
> > 
> > Fixes: f4f61d2cc6d8 ("ubifs: Implement encrypted filenames")
> > Cc: <stable@vger.kernel.org> # v4.10+
> > Signed-off-by: Eric Biggers <ebiggers@google.com>
> 
> Richard, can you review the two UBIFS patches in this series, and if you're okay
> with them, provide Acked-by's so that we can take them through the fscrypt tree?
> They don't conflict with anything currently in the UBIFS tree.
> 

Richard, any objection to us taking these patches through the fscrypt tree?

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
