Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC53D794EC
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 21:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eykV0enObO4mAInu8jWvRBngFgDhrrsp+35dz7+AKhw=; b=H7BV45zoQdUeR3
	KjPa4BSxtSSycPpsGN5BBlYEBSTEknRIu7N8qvdN1OozJYrSH8Ziju/ysGiX19VUXYz6tHOlp3i6I
	YfQ0+3bzu2djRcrK9sEzSTb6v3mN9i3LO3/ImFMe0qGnYTxdSj/FoCg5S8HPTi2DmbAUPGFrYM/+R
	0VUyIZuaMs6Cvgz72+YcndyX3PWSXV2hdvsYxV978SXbMTz5Q4lGyGl0WATop3/fPcijuVy3JI8Ue
	8FV0CVN0g69pbImw6AvyyR/qXD80QSFqljrpan1gO+P4dw1wVoFecAIQWRnJyjzxQACIhAU+gM3jV
	mKdheseCZXqGyzbFm89g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsBT1-00043H-Tm; Mon, 29 Jul 2019 19:37:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsBSq-000427-Bu
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 19:37:46 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E126206DD;
 Mon, 29 Jul 2019 19:37:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564429063;
 bh=35ZwmfXjVkjcTD49ueQekrtcYmxgdRwDGATcxQouXLg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QgTCz2CWqZ9GLFMzgaQtbnyPki0Oxg8qrvTR97l00Gc8CQzx+zc2oXmp7EWb24DL7
 lqI1c/qw8hCySTW9XZjhkJGofi5da7NFa4tbNNzKq3SlAVuvZteu0lZkG1ZnucaL4j
 QUyqoTdTCGY36VS+Fv9/JDNLvuGsN+DnFosM0q6c=
Date: Mon, 29 Jul 2019 12:37:42 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCH v7 05/16] fscrypt: refactor v1 policy key setup into
 keysetup_legacy.c
Message-ID: <20190729193740.GD169027@gmail.com>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 linux-fscrypt@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, linux-api@vger.kernel.org,
 linux-crypto@vger.kernel.org, keyrings@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>,
 Satya Tangirala <satyat@google.com>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-6-ebiggers@kernel.org>
 <20190728154032.GE6088@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728154032.GE6088@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_123744_419794_37B06D02 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.5 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Satya Tangirala <satyat@google.com>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Ted, thanks for the review!

On Sun, Jul 28, 2019 at 11:40:32AM -0400, Theodore Y. Ts'o wrote:
> On Fri, Jul 26, 2019 at 03:41:30PM -0700, Eric Biggers wrote:
> > From: Eric Biggers <ebiggers@google.com>
> > 
> > In preparation for introducing v2 encryption policies which will find
> > and derive encryption keys differently from the current v1 encryption
> > policies, refactor the v1 policy-specific key setup code from keyinfo.c
> > into keysetup_legacy.c.  Then rename keyinfo.c to keysetup.c.
> 
> I'd use keysetup_v1.c, myself.  We can hope that we've gotten it right
> with v2 and we'll never need to do another version, but *something* is
> going to come up eventually which will require a v3 keysetup , whether
> it's post-quantuum cryptography or something else we can't anticipate
> right now.
> 
> For an example of the confusion that can result, one good example is
> in the fs/quota subsystem, where QFMT_VFS_OLD, QFMT_VFS_V0, and
> QFMT_VFS_V1 maps to quota_v1 and quota_v2 in an amusing and
> non-obvious way.  (Go ahead, try to guess before you go look at the
> code.  :-)
> 
> Other than that, looks good.  We can always move code around or rename
> files in the future, so I'm not going to insist on doing it now (but
> it would be my preference).
> 
> Reviewed-by: Theodore Ts'o <tytso@mit.edu>
> 

Agreed, I'll call it keysetup_v1.c instead.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
