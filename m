Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9FB13B4FE
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 23:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cIAVoudUD92PlKPp+KbtYLahD8m+t52RizrGqvAcY8=; b=Ey4I8RS2T+tPRO
	6YYaWE6kPXKzIa4pRpwRBbndiLm8R6yAjWP469OR0jZoXjo9ZYgPjIZL0RIds3nHXJYCJH/4IgelU
	ESEcLk1RO7xTiEXtOyJxjMEcD+sP5tH5UxC1ILYyYHgN1wHCrHdHGVSLEEaZ7P85jYABt9A824VML
	kYNA8Y2CYWBs0pLbUEI3g/GiY4JqedZYEu+vGvNqait8zv72QIh5K6U52+S2ffHEUrbRdhn5Ooe+i
	EWZU+BIraKBo8WPSPIBKORuZbgepOS1ph3Ckph+Uh2iH3FMiwolPH+cYGrasbBagJwz2fZBSs2PL1
	vPf7w1itOSR1vC+Elyeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irUEm-0004vt-WB; Tue, 14 Jan 2020 22:00:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irUEV-0004uX-JK
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 22:00:27 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C103824658;
 Tue, 14 Jan 2020 22:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579039218;
 bh=myv1tZujatarOxhWpe/ZDoVHrCY2/KGzo+86dr3TQf4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mY5ghWc3WrHee+LAlkopBFawq4UUIwj9d8PLPhe10NkZZbmGxUnmycyP+VhlCjVNy
 ZnfDP+GBNlUWp5B8rLyHLpyevvZS8V9LIZuY+ZpKzn4ccAE6Xy8LuXTjcOPMrxlomE
 j0W+k3yzIGYzJD58KTjLs3Wza0el1kKf+3V5QjSg=
Date: Tue, 14 Jan 2020 14:00:17 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Richard Weinberger <richard@nod.at>
Subject: Re: [PATCH 0/2] ubifs: fixes for FS_IOC_GETFLAGS and FS_IOC_SETFLAGS
Message-ID: <20200114220016.GL41220@gmail.com>
References: <20191209222325.95656-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209222325.95656-1-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_140019_657641_E724D332 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-fsdevel@vger.kernel.org, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org
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

Richard, have you had a chance to review these?  I'm intending that these be
taken through the UBIFS tree too.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
