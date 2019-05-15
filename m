Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDD21FC92
	for <lists+linux-mtd@lfdr.de>; Thu, 16 May 2019 00:30:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vbGZlgZKdcT1MYham/685vagnBZpylMNM5nuhTQ1MY8=; b=KCYTbLOti1yvyd
	HloDXw7/MEOy96/bxbKjyplsT3YUCiVQj/b4j0CND5rj5nywTyMUEhzHMMjbwia+loILSWoXVrXBQ
	pv8Nw4QiwhZLCdxzefllXPh4+oGunQx9CG39C2UgYw2qB4l6t8rz2iTCeMdioD0FKjf6cFN70MPrV
	iqJhAW75+q5tmAAZnLK5SVteCII7UNN+EE+d+uIGH7C6Fhabv9hby72EpuwdUPmv5lhXcqvFK6hLh
	fKnBEKubuhKsRpwZfd5ylD9u6aCIX0GHYJLFsR994vNVPLlz5CsEyTlSUl4cCA9KalaZDr5q1+GoB
	ehkHVrswH7HUUVlrKRiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR2Pc-0000Aq-Lq; Wed, 15 May 2019 22:30:12 +0000
Received: from smtprelay0060.hostedemail.com ([216.40.44.60]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR2PT-00083X-DC
 for linux-mtd@lists.infradead.org; Wed, 15 May 2019 22:30:05 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay03.hostedemail.com (Postfix) with ESMTP id 992CE837F24C;
 Wed, 15 May 2019 22:29:50 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::,
 RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1540:1593:1594:1711:1714:1730:1747:1777:1792:2393:2525:2559:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3000:3022:3138:3139:3140:3141:3142:3351:3622:3865:3867:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6117:6119:7514:8599:9025:9388:10004:10049:10400:10848:11232:11658:11914:12043:12555:12740:12760:12776:12895:13069:13311:13357:13439:14096:14097:14181:14651:14659:14721:14764:21080:21451:21627:30025:30054:30064:30070:30091,
 0, RBL:error, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0,
 LFtime:28, LUA_SUMMARY:none
X-HE-Tag: lace66_38b74b7a2e71a
X-Filterd-Recvd-Size: 1692
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
 (Authenticated sender: joe@perches.com)
 by omf18.hostedemail.com (Postfix) with ESMTPA;
 Wed, 15 May 2019 22:29:49 +0000 (UTC)
Message-ID: <391f21cf5f04c61b75e739f67c8a308864b4e68c.camel@perches.com>
Subject: Re: [PATCH] MAINTAINERS: Update UBI/UBIFS git tree location
From: Joe Perches <joe@perches.com>
To: Richard Weinberger <richard@nod.at>, linux-mtd@lists.infradead.org
Date: Wed, 15 May 2019 15:29:48 -0700
In-Reply-To: <20190515200423.17809-1-richard@nod.at>
References: <20190515200423.17809-1-richard@nod.at>
User-Agent: Evolution 3.30.1-1build1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_153003_530538_72750F5F 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.60 listed in list.dnswl.org]
X-BeenThere: linux-mtd@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux MTD discussion mailing list <linux-mtd.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mtd/>
List-Post: <mailto:linux-mtd@lists.infradead.org>
List-Help: <mailto:linux-mtd-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mtd>,
 <mailto:linux-mtd-request@lists.infradead.org?subject=subscribe>
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 2019-05-15 at 22:04 +0200, Richard Weinberger wrote:
> Linus asked to use kernel.org.
> 
> Signed-off-by: Richard Weinberger <richard@nod.at>
> ---
>  MAINTAINERS | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5c38f21aee78..ba428cd613b8 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15879,7 +15879,7 @@ M:	Richard Weinberger <richard@nod.at>
>  M:	Artem Bityutskiy <dedekind1@gmail.com>
>  M:	Adrian Hunter <adrian.hunter@intel.com>
>  L:	linux-mtd@lists.infradead.org
> -T:	git git://git.infradead.org/ubifs-2.6.git
> +T:	git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git

Please keep the initial separate git

T:	git git://git.kernel.org/pub/scm/linux/kernel/git/rw/ubifs.git

>  W:	http://www.linux-mtd.infradead.org/doc/ubifs.html
>  S:	Supported
>  F:	Documentation/filesystems/ubifs.txt


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
