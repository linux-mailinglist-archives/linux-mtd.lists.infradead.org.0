Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C709100B1D
	for <lists+linux-mtd@lfdr.de>; Mon, 18 Nov 2019 19:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tRxcbKA/8XJQTy3wrELU+T39V167ZKJZCGNvdPdwQ0o=; b=Q8h7A4QSmtU/4U
	MyeYvSV+QvGKgbIQCvvEgopnv33wMRAXZuP0mWbzYEcv9FKF8TWO5n2JNx+xNFpu88A2Tzi8qcu71
	XHb05eJBOA6BgCCx2FaXiUzfb6bIumS7WQSwQ16QEDgfRfpyq739KAXmReQi2wEVOqYRFjCLPecLM
	hTIZNGHTp2BgDqqpV7pTsCuQp3d7olAXgAEBWYCbAHvzJKsKjQZ1eA1LyD5rypIXVYedkIHxITA26
	neVIiD9ZWCfsEmSTCG8hMPGl6nqlVDNeyqSE+FqHtkFJMtFNhJ+f5q1Gt1pTYOuVq5PZUwr6vrnu5
	W4gFp7FB3FsczFtibgwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlP5-0001sY-J3; Mon, 18 Nov 2019 18:05:35 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlOx-0001s6-Dl
 for linux-mtd@lists.infradead.org; Mon, 18 Nov 2019 18:05:28 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 10:05:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,321,1569308400"; d="scan'208";a="380734916"
Received: from cooperwu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.3.195])
 by orsmga005.jf.intel.com with ESMTP; 18 Nov 2019 10:05:18 -0800
Date: Mon, 18 Nov 2019 20:05:16 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>, g@linux.intel.com
Subject: Re: [PATCH] fscrypt: support passing a keyring key to
 FS_IOC_ADD_ENCRYPTION_KEY
Message-ID: <20191118180516.GD5984@linux.intel.com>
References: <20191107001259.115018-1-ebiggers@kernel.org>
 <20191115172832.GA21300@linux.intel.com>
 <20191115192227.GA150987@sol.localdomain>
 <20191115225319.GB29389@linux.intel.com>
 <20191116000139.GB18146@mit.edu>
 <20191118180222.GC5984@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118180222.GC5984@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_100527_474520_0F67C797 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Paul Lawrence <paullawrence@google.com>,
 David Howells <dhowells@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-f2fs-devel@lists.sourceforge.net, Eric Biggers <ebiggers@kernel.org>,
 linux-fscrypt@vger.kernel.org, keyrings@vger.kernel.org,
 linux-mtd@lists.infradead.org, Ondrej Kozina <okozina@redhat.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 08:02:22PM +0200, Jarkko Sakkinen wrote:
> On Fri, Nov 15, 2019 at 07:01:39PM -0500, Theodore Y. Ts'o wrote:
> > On Sat, Nov 16, 2019 at 12:53:19AM +0200, Jarkko Sakkinen wrote:
> > > > I'm working on an xfstest for this:
> > > > 
> > > > 	https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/xfstests-dev.git/commit/?h=fscrypt-provisioning&id=24ab6abb7cf6a80be44b7c72b73f0519ccaa5a97
> > > > 
> > > > It's not quite ready, though.  I'll post it for review when it is.
> > > > 
> > > > Someone is also planning to update Android userspace to use this.  So if there
> > > > are any issues from that, I'll hear about it.
> > > 
> > > Cool. Can you combine this patch and matching test (once it is done) to
> > > a patch set?
> > 
> > That's generally not done since the test goes to a different repo
> > (xfstests.git) which has a different review process from the kernel
> > change.
> 
> OK, sorry, both fscrypt and xfstests are both somewhat alien to me. That
> is why I'm looking into setting up test environment so that I can review
> these patches with a sane judgement.

And also since I've just barely started to help David on co-maintaining
keyring it is better to put extra emphasis on testing even for the most
trivial patches. That is fastest way to learn different interactions.

/Jarkko

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
