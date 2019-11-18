Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153AA100B02
	for <lists+linux-mtd@lfdr.de>; Mon, 18 Nov 2019 19:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVCx5p/Ucm7mw4ZGnD5zt3/MmMb9+ePB0WPHUJTBhJU=; b=sa0YuZ9M6rAqbx
	MEeqsMX6PYKtR98ls7/ot07jPtGvW4HCGR4vxNgqeqgbyXRv2bzdKvWLhCkT4+y94SshBUhwkP++K
	mJP7xs1j1Vj0iMR3DublapvjP1FNCksV54H3ORFm4zSZuuc5QOjlw0zBlsYTJYaBvMY5Ap4HQNJft
	hg3/qSC3b3CIBlxv32sKQhPypnlLqDZQoOPjzI8tXsJhf0lLwNVjJaHHZuvmqf+btf2Lmer2oEwvp
	j/lD3RJF4xxUAMD/xJozw4Q0VvMx2zSWdN5+0lXTbWm8gftwD64h9rZwYjo84jsHVSN30cI8sjeGg
	3asiUNRngqwgLxPsfQGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlKx-00088I-Mt; Mon, 18 Nov 2019 18:01:19 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlKn-00087Y-7k
 for linux-mtd@lists.infradead.org; Mon, 18 Nov 2019 18:01:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 10:01:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,321,1569308400"; d="scan'208";a="380732548"
Received: from cooperwu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.3.195])
 by orsmga005.jf.intel.com with ESMTP; 18 Nov 2019 10:01:03 -0800
Date: Mon, 18 Nov 2019 20:01:02 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] fscrypt: support passing a keyring key to
 FS_IOC_ADD_ENCRYPTION_KEY
Message-ID: <20191118180102.GB5984@linux.intel.com>
References: <20191107001259.115018-1-ebiggers@kernel.org>
 <20191115172832.GA21300@linux.intel.com>
 <20191115192227.GA150987@sol.localdomain>
 <20191115225319.GB29389@linux.intel.com>
 <20191115230430.GA217050@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115230430.GA217050@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_100109_322164_A5379A83 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: David Howells <dhowells@redhat.com>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 Ondrej Mosnacek <omosnace@redhat.com>, linux-f2fs-devel@lists.sourceforge.net,
 Paul Lawrence <paullawrence@google.com>, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 Ondrej Kozina <okozina@redhat.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Nov 15, 2019 at 03:04:31PM -0800, Eric Biggers wrote:
> On Sat, Nov 16, 2019 at 12:53:19AM +0200, Jarkko Sakkinen wrote:
> > 
> > > I'm working on an xfstest for this:
> > > 
> > > 	https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/xfstests-dev.git/commit/?h=fscrypt-provisioning&id=24ab6abb7cf6a80be44b7c72b73f0519ccaa5a97
> > > 
> > > It's not quite ready, though.  I'll post it for review when it is.
> > > 
> > > Someone is also planning to update Android userspace to use this.  So if there
> > > are any issues from that, I'll hear about it.
> > 
> > Cool. Can you combine this patch and matching test (once it is done) to
> > a patch set?
> > 
> 
> xfstests is developed separately from the kernel (different git repo and
> maintainer), so combining kernel and xfstests patches into the same patchset
> doesn't make sense.  I can certainly send them out at the same time, though.

Is there instructions somewhere how to build and run these tests?

For me it is sufficient if you point a branch and have some kind
of instructions somewhere.

/Jarkko

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
