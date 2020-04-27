Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ACC1BAD76
	for <lists+linux-mtd@lfdr.de>; Mon, 27 Apr 2020 21:01:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lo0gLjtWUTaSAuRB/c+9b5NOlFcddRy1LZ4P+x/yCv0=; b=ioMhQL6PxTwkR9
	yOA0EzlC+ophivI7KURU9kYy8a96KyfGOHiULAbERttNbSC+rlx47xpDknkk2KxZyN2zjzKmqMsju
	LHrTNxuvxs1EG+Drk8bFRnkvGgGT/4ndgLAvTHdfCbEBulJDbomcIDWGyt/RWiWJyr80h5xznBBKK
	yQ1Ng/jejiBlb6M4R9bF5suf4RloHngxhWM/KhjRpd54iT6Y8GLw4xjIE4bGKUvWyU+ieEUiiroJK
	gNFYK1fEm/XpqpWsitbrvAzgZVRKuCt3FvkHpXCjP2SRAUTNqWZS+nNofbQ3slE8cw5xPoPwKwnbG
	3ez0UE12AvH5Yi1awzCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT90b-0004pK-Sb; Mon, 27 Apr 2020 19:01:37 +0000
Received: from smtprelay0125.hostedemail.com ([216.40.44.125]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT908-0004eG-8T
 for linux-mtd@lists.infradead.org; Mon, 27 Apr 2020 19:01:11 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay01.hostedemail.com (Postfix) with ESMTP id D83A6100E7B48;
 Mon, 27 Apr 2020 19:01:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3867:3871:4321:5007:6119:9036:10004:10400:10481:10848:11026:11658:11914:12296:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:14819:19900:21080:21627:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: coat03_96cc627aaf08
X-Filterd-Recvd-Size: 1807
Received: from XPS-9350.home (unknown [47.151.136.130])
 (Authenticated sender: joe@perches.com)
 by omf14.hostedemail.com (Postfix) with ESMTPA;
 Mon, 27 Apr 2020 19:01:04 +0000 (UTC)
Message-ID: <d036dbad02241fdeb0a6400896f73ff11e98e53b.camel@perches.com>
Subject: Re: [PATCH 2/3] mtd: lpddr: Replace printk with pr_notice
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, 
 linux-kernel@vger.kernel.org
Date: Mon, 27 Apr 2020 12:01:03 -0700
In-Reply-To: <c9684a22b661fdeff9efcd5b18be01653911fc89.1588013366.git.gustavo@embeddedor.com>
References: <cover.1588013366.git.gustavo@embeddedor.com>
 <c9684a22b661fdeff9efcd5b18be01653911fc89.1588013366.git.gustavo@embeddedor.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_120108_374435_8F9217D0 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.125 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.125 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 2020-04-27 at 14:03 -0500, Gustavo A. R. Silva wrote:
> pr_notice is preferred over printk.

So is coalescing formats

? diff --git a/include/linux/mtd/pfow.h b/include/linux/mtd/pfow.h
[]
> @@ -127,31 +127,31 @@ static inline void print_drs_error(unsigned dsr)
>  	int prog_status = (dsr & DSR_RPS) >> 8;
>  
>  	if (!(dsr & DSR_AVAILABLE))
> -		printk(KERN_NOTICE"DSR.15: (0) Device not Available\n");
> +		pr_notice("DSR.15: (0) Device not Available\n");
>  	if ((prog_status & 0x03) == 0x03)
> -		printk(KERN_NOTICE"DSR.9,8: (11) Attempt to program invalid "
> +		pr_notice("DSR.9,8: (11) Attempt to program invalid "
>  						"half with 41h command\n");

		pr_notice("DSR.9,8: (11) Attempt to program invalid half with 41h command\n");

etc...



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
