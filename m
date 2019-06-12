Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1AAC42CE1
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Jun 2019 19:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMJ4777G0Ab3fgMwxAtIM0CS8Ag0PujWI4FxWqWxW8s=; b=LwIKQJmsjKIb6I
	eucLO9bh4uSrxCJRbNvwfZjISfnHhbe7iaMV2LHNE4anDExiNVU+nPhPI02bjBNxCzT5cYT3bBGOv
	3gIHkPaoGxm7NRP6lby7YzJ3gHLrHOXgvwAfLqi61807JdFMJfbMV1pyV8eJPcSIZI6DxNKhDYTtL
	3GIXTFVP3/O5xtd/uiiMn9UuMD+J7qdNqEierreDS0MBIfs3JwPsuUoVAqlF2N8NzZw4xTIQC/KmD
	UKHI6Fu3jWEYVrhMV2w4OUmnATJTgyVlyBX1svzfNTrmMOrQo9m0e/RWBjHXnJ729BdnzmKmnLauF
	XxQKRK12dsqW8NlqfZJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb6cM-0003QI-FC; Wed, 12 Jun 2019 17:00:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb6cB-0003Pt-FU
 for linux-mtd@lists.infradead.org; Wed, 12 Jun 2019 17:00:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C361215EA;
 Wed, 12 Jun 2019 17:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560358847;
 bh=EkuavmikHiyBucV6P4R2teI18XS+pora3Gyaqz7oGus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pBWJ44hsD1QvfPy7YscJTNg1Ykxm1uMuV9iSDF7cp+DzaO20Pt/hRw9mha3flBDqz
 Q87zdpFQD/tL3p2G9CBidfZXWAlyADx0Lll4mNPLFG3MDWYojZ/Imwm3u6aj4s6tiu
 h/7vHm86em4YYBWwqyJws2A77YRG0QwGTbh/21aw=
Date: Wed, 12 Jun 2019 19:00:44 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mario Rugiero <mrugiero@gmail.com>
Subject: Re: [PATCH] ubifs: no need to check return value of debugfs_create
 functions
Message-ID: <20190612170044.GA3219@kroah.com>
References: <20190612152120.GA17450@kroah.com>
 <CAKKQwLSm5FchbBH43G=3hJJ3LdrcOxnEn10_cjES+MZotVCpng@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKKQwLSm5FchbBH43G=3hJJ3LdrcOxnEn10_cjES+MZotVCpng@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_100047_539621_5511B099 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org,
 Adrian Hunter <adrian.hunter@intel.com>,
 Artem Bityutskiy <dedekind1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

A: Top-posting.
Q: What is the most annoying thing in e-mail?

A: No.
Q: Should I include quotations after my reply?


http://daringfireball.net/2007/07/on_top


On Wed, Jun 12, 2019 at 01:52:23PM -0300, Mario Rugiero wrote:
> I think you should still abort if the directory fails to be created.

Why?

> If it's NULL, all later file creation will be attempted at root debugfs.

debugfs_create_dir() can not return NULL.

> Not only will they pollute the filesystem, but since they are not
> attached to the directory we remove on cleanup, they'll leak.

That can not happen, if the parent directory is an error pointer, the
file will just not be created.

> Also, since failure is no longer reported, it may be a good idea to
> log that failure.

Why?  To where?  For what?  debugfs should never matter if it works or
not as no no-debugging userspace code should ever depend on it, and the
kernel should not ever "fail" anything if it is not working properly.

thanks,

greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
