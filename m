Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D158FE586
	for <lists+linux-mtd@lfdr.de>; Fri, 15 Nov 2019 20:22:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/jfFsPdGUiAfajs1aZvfvFQKbIt0y/6xzPyLTMZfes=; b=LjBUSks/m9aTmO
	Wa04qNg+NVjdlfmyMulLoGVRnltziJ7y4BsmOQ8rYQ6hq5EeHAzuhhhwjwPNXMSkVbNvHa/OObvJ2
	ZhhsHGlEmfVGbP6cUqcYGgUilWwan9O2TZwBdP6Zd/xwj5qDp1VPgB1iSLRYdDwgQ+Ci2JCtd4SFa
	iO6rSVsLlyCn8GCffLCjQx7Wj0nKrqjP8ADX+I2Q1k6T8xMhb6viHaICB1/X6mVkpusj8faHVmESB
	LeHSkt2zr3gEAndaZNsJIHV971ltIL7HLAyTLAayThTpN2B5qCaGmxi6qtGKxhQ3Q+wfifMavAr9a
	ZMzXNOEOTKUyk15u+MWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVhB3-0002lw-Ok; Fri, 15 Nov 2019 19:22:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVhAs-0002lK-Ue
 for linux-mtd@lists.infradead.org; Fri, 15 Nov 2019 19:22:32 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36094206D9;
 Fri, 15 Nov 2019 19:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573845749;
 bh=upuiRVOg48zBrOcDo8mSF+x02Zd4aynU2rKOYkmP0Ug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bjZdfDwhBnWRxGaakLSBtRR3lNyx9RSw1w8Q+az70jtKCUxDBYcteMj6kM7uw1+BJ
 mT5QmqPPX5h41lBPcVfK/APGOyYDw5helVm2UUL7TRYd0VcOKDXrzEOKHmiyfg5EGU
 WfIiJ5bxXeb0nzFxv6xnpeSLrmHLYQl8Nq/0zAJ4=
Date: Fri, 15 Nov 2019 11:22:27 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Subject: Re: [PATCH] fscrypt: support passing a keyring key to
 FS_IOC_ADD_ENCRYPTION_KEY
Message-ID: <20191115192227.GA150987@sol.localdomain>
References: <20191107001259.115018-1-ebiggers@kernel.org>
 <20191115172832.GA21300@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115172832.GA21300@linux.intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_112231_008337_2C4F4741 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

On Fri, Nov 15, 2019 at 07:28:53PM +0200, Jarkko Sakkinen wrote:
> 
> I don't see anything obviously wrong. Just would reformat it a bit.
> How you tested it?
> 

I'm not sure all the blank lines you're suggesting would be an improvement.
The ones in fscrypt_provisioning_key_preparse() might make sense though.

I'm working on an xfstest for this:

	https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/xfstests-dev.git/commit/?h=fscrypt-provisioning&id=24ab6abb7cf6a80be44b7c72b73f0519ccaa5a97

It's not quite ready, though.  I'll post it for review when it is.

Someone is also planning to update Android userspace to use this.  So if there
are any issues from that, I'll hear about it.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
