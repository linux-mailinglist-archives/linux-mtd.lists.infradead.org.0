Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D549FE850
	for <lists+linux-mtd@lfdr.de>; Fri, 15 Nov 2019 23:53:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ym+0A/Tg+SMBwU7ACnHmkK1odPpesNBnTnjLn3E+pU=; b=kO2nGsDbtVW2DO
	D13pTCtls+Bg6R+rHozFndr6/xGemb7UGa4ltzRGBHF5wfG5+lCfgc9WR7uyJaTnr6vadAYy3whkS
	7q1xhq5uEcPX5jD54370oGaUqPwz/aMb1DHoOiegV67Vh+o6Z6zNKNLtLCYQ1SuPJ84poQvfPW6Tt
	NjwLYqiA0SYLjOM8CqOTjef4//Wi/G92GDfMok6Z9ZlCaEVrZXffFwDM8caK1fsT5ZDphBl71IMol
	nksLa/kC1V8Bq/H2/PbIQYi+Xbts8GTvMVPyiCtPOySgU9bzEbu6SBKUg4yu8UVEyq1st9IxYRXLL
	QvlqoInsTryz5rrKNKtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkT7-00020X-Us; Fri, 15 Nov 2019 22:53:33 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkT0-0001zO-8e
 for linux-mtd@lists.infradead.org; Fri, 15 Nov 2019 22:53:27 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Nov 2019 14:53:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,309,1569308400"; d="scan'208";a="230598878"
Received: from bpgilles-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.95.141])
 by fmsmga004.fm.intel.com with ESMTP; 15 Nov 2019 14:53:20 -0800
Date: Sat, 16 Nov 2019 00:53:19 +0200
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH] fscrypt: support passing a keyring key to
 FS_IOC_ADD_ENCRYPTION_KEY
Message-ID: <20191115225319.GB29389@linux.intel.com>
References: <20191107001259.115018-1-ebiggers@kernel.org>
 <20191115172832.GA21300@linux.intel.com>
 <20191115192227.GA150987@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115192227.GA150987@sol.localdomain>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_145326_346435_60CB0164 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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

On Fri, Nov 15, 2019 at 11:22:27AM -0800, Eric Biggers wrote:
> On Fri, Nov 15, 2019 at 07:28:53PM +0200, Jarkko Sakkinen wrote:
> > 
> > I don't see anything obviously wrong. Just would reformat it a bit.
> > How you tested it?
> > 
> 
> I'm not sure all the blank lines you're suggesting would be an improvement.
> The ones in fscrypt_provisioning_key_preparse() might make sense though.

OK. Some of this aesthics comes from the feedback that I've received
during Intel SGX patch set review process (of course subsystem is
different i.e. x86). I tend to agree at least that before a new
conditional statement it is more readable if there is a blank line
before it.

> I'm working on an xfstest for this:
> 
> 	https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/xfstests-dev.git/commit/?h=fscrypt-provisioning&id=24ab6abb7cf6a80be44b7c72b73f0519ccaa5a97
> 
> It's not quite ready, though.  I'll post it for review when it is.
> 
> Someone is also planning to update Android userspace to use this.  So if there
> are any issues from that, I'll hear about it.

Cool. Can you combine this patch and matching test (once it is done) to
a patch set?

/Jarkko

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
