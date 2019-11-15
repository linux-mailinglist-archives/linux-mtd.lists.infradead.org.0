Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D7CFE867
	for <lists+linux-mtd@lfdr.de>; Sat, 16 Nov 2019 00:04:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEjpgRMyAvveXqywVbBOvJAnrDyqCvuZ/zNhGqoHgGU=; b=auc7ShTyoS7ZD6
	vpdE7mtPyQbNdG8qdrUEdpB9La2r8Jj+64jrc2y6CbvWDQ/Z7lplXYrnUUOEx0dGX60MZfgNGLTwx
	XokRCeNF4m/z+j93M70p5PikDn8PV8M9pXqF0aF6PKfrwVNYwiD54qjk7L/JvWgDxaD3SI+HSuSgT
	sv8Ev+rMt68Xod6cGakzyG7KiirSSRGJXQxmJcoxByQ/+JGZ9LHbRmBCxcAX94QMZZ6tN4VzLUrUB
	/WwhgKS6ZrULTNGgReiiWPsrkJhEFnGS9slPBWh+pfnWCfpm17EDXQ/oVWUs3gbhU+ado1wNTXt4f
	oyK9bJzl8ST98eRwUr/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkdz-0005MM-Ki; Fri, 15 Nov 2019 23:04:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkdp-0005LR-CF
 for linux-mtd@lists.infradead.org; Fri, 15 Nov 2019 23:04:38 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9D6BD206D6;
 Fri, 15 Nov 2019 23:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573859073;
 bh=nxGyncx9ocQNd0mwb5/JHfFenJwa+LxTO/zcASHHirU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UcmHWP96PV3X+9Z8lt/hRwUwOl1NvZ1sHgtSW8m35ozmeWnMRBMIR4qTYi7vl3nRG
 CcvfsfzewHxFXDROgORR2myIWoZySz7VrbqAAvv75gLUfc5HMkmqLw2snJ6hWwzP3c
 AGGdixiWm0BZjeY5KVrn+ndhBxOpU4+XC9y0rzz4=
Date: Fri, 15 Nov 2019 15:04:31 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Subject: Re: [PATCH] fscrypt: support passing a keyring key to
 FS_IOC_ADD_ENCRYPTION_KEY
Message-ID: <20191115230430.GA217050@gmail.com>
References: <20191107001259.115018-1-ebiggers@kernel.org>
 <20191115172832.GA21300@linux.intel.com>
 <20191115192227.GA150987@sol.localdomain>
 <20191115225319.GB29389@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115225319.GB29389@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_150437_438735_16BC0F10 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -4.6 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Sat, Nov 16, 2019 at 12:53:19AM +0200, Jarkko Sakkinen wrote:
> 
> > I'm working on an xfstest for this:
> > 
> > 	https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/xfstests-dev.git/commit/?h=fscrypt-provisioning&id=24ab6abb7cf6a80be44b7c72b73f0519ccaa5a97
> > 
> > It's not quite ready, though.  I'll post it for review when it is.
> > 
> > Someone is also planning to update Android userspace to use this.  So if there
> > are any issues from that, I'll hear about it.
> 
> Cool. Can you combine this patch and matching test (once it is done) to
> a patch set?
> 

xfstests is developed separately from the kernel (different git repo and
maintainer), so combining kernel and xfstests patches into the same patchset
doesn't make sense.  I can certainly send them out at the same time, though.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
