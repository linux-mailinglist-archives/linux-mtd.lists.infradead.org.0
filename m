Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C13D12FB1F
	for <lists+linux-mtd@lfdr.de>; Fri,  3 Jan 2020 18:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7LGoIGT+q+RyHFMTO85sVRDQWu8dPAmOz7iVs0rZ3A=; b=qYFIPK+ODPcmc/
	3oFfKRtGn3dsn0rpaJUChmmXoaCo+7aAErN5NdvXP1QBBsLlkeKnvvKLxOjA/0w1NNGLlQ9xZdLme
	bHdn8DgSzf++aEtntIOAwMIWRUkIfvvCbKEoiGZ907qJClUNTZ74hpkWNc8tRHWP8oZto7YOX7BnJ
	5ZfU9PZnOhPWmO/gJvQb9NLsF0nfcNTdAhJonUVj+2yLfpVOm/+BfzmeihHvjxEgV5K0vOFfBNGrw
	BYy8P149IlK92W2AoYKKAS0HD4f9SyysV2rzvBs4xO3M8+GuTbKJzvBhj1CkooEDmzKcWUTp+QvGR
	bFyl+VWP5v+j1+H1WT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inQRN-00071G-8k; Fri, 03 Jan 2020 17:08:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inQRD-00070C-W3
 for linux-mtd@lists.infradead.org; Fri, 03 Jan 2020 17:08:41 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67A7520866;
 Fri,  3 Jan 2020 17:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578071319;
 bh=LRI0fj+VA2I4+uKI4FIhQqiYK3mZfwRLgeKo7n8eJQU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gYhwY5A5asqoJvfgyTKNS2fl83jrU1n44A3+2bqqDGF1oPbLjlCiJzuQjnEsMDlvr
 YoBqjpp2V0MQHiMlC3y6igAb2GOd1dONSFaQqTpTB0j3+BK+oebKW9jbT0uicQIMk6
 stxTya8Mw+Fcw5y/JaUWWBalvg11gLqyiAWLfrwI=
Date: Fri, 3 Jan 2020 09:08:37 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Subject: Re: [PATCH 0/2] ubifs: fixes for FS_IOC_GETFLAGS and FS_IOC_SETFLAGS
Message-ID: <20200103170837.GN19521@gmail.com>
References: <20191209222325.95656-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209222325.95656-1-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_090840_051818_9B20DAAB 
X-CRM114-Status: GOOD (  10.46  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fsdevel@vger.kernel.org, linux-fscrypt@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 02:23:23PM -0800, Eric Biggers wrote:
> On ubifs, fix FS_IOC_SETFLAGS to not clear the encrypt flag, and update
> FS_IOC_GETFLAGS to return the encrypt flag like ext4 and f2fs do.
> 
> Eric Biggers (2):
>   ubifs: fix FS_IOC_SETFLAGS unexpectedly clearing encrypt flag
>   ubifs: add support for FS_ENCRYPT_FL
> 
>  fs/ubifs/ioctl.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 

Richard, can you consider applying this series to the UBIFS tree for 5.6?

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
