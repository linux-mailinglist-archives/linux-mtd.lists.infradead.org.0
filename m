Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D311D59CE
	for <lists+linux-mtd@lfdr.de>; Fri, 15 May 2020 21:17:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEQXR/WuG0XbLBw18YvRBLK7IxKJ7DVdsYHI1OYwMC0=; b=CN8+s3vzCWMtyG
	0btJu0K65fHlAJe9c8vD+mojcZkLSs/PMES9yXTwclJumP5EaHaE5xyO6QiP9u54WWZ0/GcGncHc0
	ezYi8BDei8kOyOxDB5Wujwm7qYDG4b+lzBavaixeYbGW/b1ARqZru19cqzhRBYcAOP1Y8SiPs2Uq1
	hS6IQZ/xhXcSDrFkIe+ZVGcM92DmMfB8bAExF7YKq/DhKFDvfP0CqPqtFnzUxAkGRlkhkvuK1zVT4
	JBEIXeKFdpYTkj1ED6GSIN9efnL4IDgDzB+Po2b9PM0V9qMuM11ouTLOW9bS8euOScv6OfOV8zCng
	BIplZgad0hwxcdGjfcgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZfpZ-0007aa-4G; Fri, 15 May 2020 19:17:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZfpS-0007a1-QX
 for linux-mtd@lists.infradead.org; Fri, 15 May 2020 19:17:08 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D9E7E20727;
 Fri, 15 May 2020 19:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589570226;
 bh=XBx66mGVJ7Tbb+phuQ5uMEEIItH+a9pVZe/h/WYga1s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1UWKkNNKCuIzrl5u6+/k8AYmsz01h1u+HcEBJ/L4lKNuC3iBVSz/ZOmmaLj2uBfL7
 ccDTssausF1EHjwGCk5y0XHUwHVwYRWaSsoGGmaIz2XUhlgAYJXiRdhDUn4GSKxFP9
 4VHfJV9HpwUW4vcJPE890Gi8KFTgoAPCFWyG//Xw=
Date: Fri, 15 May 2020 12:17:04 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>, Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH] ubifs: fix wrong use of crypto_shash_descsize()
Message-ID: <20200515191704.GE1009@sol.localdomain>
References: <20200502055945.1008194-1-ebiggers@kernel.org>
 <20200504071644.GS5877@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504071644.GS5877@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_121706_881962_7237E419 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mtd@lists.infradead.org, linux-crypto@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 09:16:44AM +0200, Sascha Hauer wrote:
> On Fri, May 01, 2020 at 10:59:45PM -0700, Eric Biggers wrote:
> > From: Eric Biggers <ebiggers@google.com>
> > 
> > crypto_shash_descsize() returns the size of the shash_desc context
> > needed to compute the hash, not the size of the hash itself.
> > 
> > crypto_shash_digestsize() would be correct, or alternatively using
> > c->hash_len and c->hmac_desc_len which already store the correct values.
> > But actually it's simpler to just use stack arrays, so do that instead.
> > 
> > Fixes: 49525e5eecca ("ubifs: Add helper functions for authentication support")
> > Fixes: da8ef65f9573 ("ubifs: Authenticate replayed journal")
> > Cc: <stable@vger.kernel.org> # v4.20+
> > Cc: Sascha Hauer <s.hauer@pengutronix.de>
> > Signed-off-by: Eric Biggers <ebiggers@google.com>
> 
> Looks better that way, thanks.
> 
> Acked-by: Sascha Hauer <s.hauer@pengutronix.de>
> 

Richard, could you take this through the ubifs tree for 5.8?

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
