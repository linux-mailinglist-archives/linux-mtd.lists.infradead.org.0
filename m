Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27606145EF1
	for <lists+linux-mtd@lfdr.de>; Thu, 23 Jan 2020 00:07:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H//3bL14IfmUmalsHoYTFk5SH+K+IQxINScRC33LaZ0=; b=cnAsHPfxjiB5u1
	vaIztiSZHmSoGzBS7Th2sTnoTIcJYz5rYa+anW5eKkL8Vp2IFG8ePRz9LzSstjEMa9yCY3TZ55IfT
	Ud9Qn+DAP++Etz4J5O2aau+3rP2mEFmEgJQ1QDxsghKwOygKzNL3utteLNjyHFsS1Ny2sYT/G3kHL
	dvxWcBmPdMohsIlG1j848cZsHjD4a1zwrznQQAuO4MphEKoannd0c1ogHjEtbR0kJJmNkcui3lrVi
	HhNhsTlEaG+b8/edkWEO2MZGepOeo2KHOmoEw/bXxC936zzGky8iLFCRf0Sm+POGnAXa3bv+wsr74
	fyPULHUkPiPapPq65lhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuP5T-0003ap-Hd; Wed, 22 Jan 2020 23:07:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuP5J-0003a4-74
 for linux-mtd@lists.infradead.org; Wed, 22 Jan 2020 23:06:54 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9A802465A;
 Wed, 22 Jan 2020 23:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579734412;
 bh=iDK9mhfatk0/hNugU/WPUPfmhu1Thz7bh75Z2DXYU/0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MdMedgKfSUinhQoW7EX8dAKvj1YwqwHzlbb1cbzLT6dOt2HZWykDyFD3k2cNyhQyK
 8GB5uINMlhWRPvQRr20QS8SxKPsazWkqZ9NELkASmhvpjUozkcfUA+LLJ+HQqgq/Lb
 YogycmIn0nDOqv8LkTPXOOSGVMsOMS5102vK6M3Q=
Date: Wed, 22 Jan 2020 15:06:50 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: Re: [PATCH v5 0/6] fscrypt preparations for encryption+casefolding
Message-ID: <20200122230649.GC182745@gmail.com>
References: <20200120223201.241390-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120223201.241390-1-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_150653_279486_79409479 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -3.4 (---)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Jan 20, 2020 at 02:31:55PM -0800, Eric Biggers wrote:
> This is a cleaned up and fixed version of the fscrypt patches to prepare
> for directories that are both encrypted and casefolded.
> 
> Patches 1-3 start deriving a SipHash key for the new dirhash method that
> will be used by encrypted+casefolded directories.  To avoid unnecessary
> overhead, we only do this if the directory is actually casefolded.
> 
> Patch 4 fixes a bug in UBIFS where it didn't gracefully handle invalid
> hash values in fscrypt no-key names.  This is an existing bug, but the
> new fscrypt no-key name format (patch 6) made it much easier to trigger;
> it started being hit by 'kvm-xfstests -c ubifs -g encrypt'.
> 
> Patch 5 updates UBIFS to make it ready for the new fscrypt no-key name
> format that always includes the dirhash.
> 
> Patch 6 modifies the fscrypt no-key names to always include the dirhash,
> since with the new dirhash method the dirhash will no longer be
> computable from the ciphertext filename without the key.  It also fixes
> a longstanding issue where there could be collisions in the no-key
> names, due to not using a proper cryptographic hash to abbreviate names.
> 
> For more information see the main patch series, which includes the
> filesystem-specific changes:
> https://lkml.kernel.org/linux-fscrypt/20200117214246.235591-1-drosen@google.com/T/#u
> 
> This applies to fscrypt.git#master.
> 
> Changed v4 => v5:
>   - Fixed UBIFS encryption to work with the new no-key name format.

I've applied this series to fscrypt.git#master; however I'd still like Acked-bys
from the UBIFS maintainers on the two UBIFS patches, as well as more
Reviewed-bys from anyone interested.  If I don't hear anything from anyone, I
might drop these to give more time, especially if there isn't an v5.5-rc8.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
