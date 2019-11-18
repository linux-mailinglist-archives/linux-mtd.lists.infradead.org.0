Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EDB100B75
	for <lists+linux-mtd@lfdr.de>; Mon, 18 Nov 2019 19:28:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F2hc9twmdefZP0smKtWTyD+d+ybFOgJbveS1NGeNC1g=; b=swtJ0kZiu9AzMj
	Wn75bVgoudPvYbCVferGMItySwTfiTQyR3cVJF9KtJnxAuQUZeSRvGIeH5p8yRsgR4BpGsJ6urEz1
	5AO+FKe5p/hM6Lmn3Ii6/bK+43+vGYXiYPXakBJ2Y5ApyPchabOQ4oVF4XGC4dvkhAE1/hclPbAGM
	84hNB3BLEqIhBHNpkY1USi/gDFIQLnAanC2s9W3ztrQ6wmQ5/d7e9ymh41syEZHDn0HwfuqkySUdF
	k2/4TgBM8ir1enlgPplL6qwkBYwuhP2gHzRbXubWnFP4iJMtQ7BgZI8YpUnVmKMnM482Mdat5HLoH
	ah6W5R9yRSdBFeOD2cag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWlkq-00013j-K1; Mon, 18 Nov 2019 18:28:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWlki-00012j-52
 for linux-mtd@lists.infradead.org; Mon, 18 Nov 2019 18:27:57 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 523B1222BF;
 Mon, 18 Nov 2019 18:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574101675;
 bh=hgVt0ngLY4LQROiy5izRjuCjb237dxfSwA55PVeCtzM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l114SmjFfMiCK5ArBiu50w/LTL4XSqt3bVoIVKzINA/oG9Eh2EGM4xiS+QA/Fgv+J
 mNypcXQpHUUYB5tY0Rr45k0ckpA44+9bEcKlJjm9DuvrhibzFR2abrr8mhumozpFnk
 s8EdB/fhR/Pqz8BjKwXm8lcS9QbxbklPvJUw0TD0=
Date: Mon, 18 Nov 2019 10:27:53 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Subject: Re: [PATCH] fscrypt: support passing a keyring key to
 FS_IOC_ADD_ENCRYPTION_KEY
Message-ID: <20191118182752.GB184560@gmail.com>
References: <20191107001259.115018-1-ebiggers@kernel.org>
 <20191115172832.GA21300@linux.intel.com>
 <20191115192227.GA150987@sol.localdomain>
 <20191115225319.GB29389@linux.intel.com>
 <20191116000139.GB18146@mit.edu>
 <20191118180222.GC5984@linux.intel.com>
 <20191118180516.GD5984@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118180516.GD5984@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_102756_215746_ADCE15EC 
X-CRM114-Status: GOOD (  17.99  )
X-Spam-Score: -3.4 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Howells <dhowells@redhat.com>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Ondrej Mosnacek <omosnace@redhat.com>, linux-f2fs-devel@lists.sourceforge.net,
 Paul Lawrence <paullawrence@google.com>, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org, g@linux.intel.com,
 Ondrej Kozina <okozina@redhat.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 08:05:16PM +0200, Jarkko Sakkinen wrote:
> On Mon, Nov 18, 2019 at 08:02:22PM +0200, Jarkko Sakkinen wrote:
> > On Fri, Nov 15, 2019 at 07:01:39PM -0500, Theodore Y. Ts'o wrote:
> > > On Sat, Nov 16, 2019 at 12:53:19AM +0200, Jarkko Sakkinen wrote:
> > > > > I'm working on an xfstest for this:
> > > > > 
> > > > > 	https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/xfstests-dev.git/commit/?h=fscrypt-provisioning&id=24ab6abb7cf6a80be44b7c72b73f0519ccaa5a97
> > > > > 
> > > > > It's not quite ready, though.  I'll post it for review when it is.
> > > > > 
> > > > > Someone is also planning to update Android userspace to use this.  So if there
> > > > > are any issues from that, I'll hear about it.
> > > > 
> > > > Cool. Can you combine this patch and matching test (once it is done) to
> > > > a patch set?
> > > 
> > > That's generally not done since the test goes to a different repo
> > > (xfstests.git) which has a different review process from the kernel
> > > change.
> > 
> > OK, sorry, both fscrypt and xfstests are both somewhat alien to me. That
> > is why I'm looking into setting up test environment so that I can review
> > these patches with a sane judgement.
> 
> And also since I've just barely started to help David on co-maintaining
> keyring it is better to put extra emphasis on testing even for the most
> trivial patches. That is fastest way to learn different interactions.
> 

I gave some tips about kvm-xfstests in my other reply:
https://lkml.kernel.org/linux-fscrypt/20191118181359.GA184560@gmail.com/

However, please note that xfstests is really about filesystem testing (including
fscrypt), not about testing the keyrings subsystem itself.  So while you're
certainly welcome to run the fscrypt tests, for most patches you'll encounter as
a keyrings maintainer the keyutils testsuite will be more useful.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
