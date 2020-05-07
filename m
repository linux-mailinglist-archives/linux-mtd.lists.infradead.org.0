Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D1AA1C86A9
	for <lists+linux-mtd@lfdr.de>; Thu,  7 May 2020 12:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZe2V8YwGPMeNXVWOFNNeBqOQMJcKtWkIFPiJpEX6vE=; b=jHj26jTmiMSCJs
	xGHbKC85K0BuNNceLZ8eR1yWS9t83hHntcvejs+6N7FL9N1aJ9ZbZhFvDuXORG4ZZFPFj4iIWE4OJ
	ezoYmppa51TZAkV+pSXhSSAxshWGQRrYLEnBVJN9SbrIcebpm/y2qzc01ah7DMStOqbaB5mEegJHP
	BeF4yySHKn5tTip6mptPHrKoUaeQL+65EtGl8+qn1d9d9x9Qp7cQCvKVZeRmUT8H+aMXepGqkYC3T
	uGLnTxQ1ozczUXKhnd9TTwK8E2uQvlMynFMpWQS4m/jwSCLImULIk9hNFdEPjSGoU7ijCuAp1M7yu
	fd6qo98lGcagBS9AOfAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdjM-0002y3-WD; Thu, 07 May 2020 10:26:17 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdiH-000067-OK
 for linux-mtd@lists.infradead.org; Thu, 07 May 2020 10:25:14 +0000
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 831E6240014;
 Thu,  7 May 2020 10:21:11 +0000 (UTC)
Date: Thu, 7 May 2020 12:21:10 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] mtd: lpddr: fix excessive stack usage with clang
Message-ID: <20200507122110.50ccce48@xps13>
In-Reply-To: <20200506023828.GA415100@ubuntu-s3-xlarge-x86>
References: <20200505140136.263461-1-arnd@arndb.de>
 <20200506023828.GA415100@ubuntu-s3-xlarge-x86>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_032511_666717_0EEF6BA9 
X-CRM114-Status: GOOD (  21.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.230 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux@googlegroups.com, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-mtd@lists.infradead.org, Vincenzo Aliberti <vincenzo.aliberti@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Nathan Chancellor <natechancellor@gmail.com> wrote on Tue, 5 May 2020
19:38:28 -0700:

> On Tue, May 05, 2020 at 04:01:16PM +0200, Arnd Bergmann wrote:
> > Building lpddr2_nvm with clang can result in a giant stack usage
> > in one function:
> > 
> > drivers/mtd/lpddr/lpddr2_nvm.c:399:12: error: stack frame size of 1144 bytes in function 'lpddr2_nvm_probe' [-Werror,-Wframe-larger-than=]
> > 
> > The problem is that clang decides to build a copy of the mtd_info
> > structure on the stack and then do a memcpy() into the actual version. It
> > shouldn't really do it that way, but it's not strictly a bug either.
> > 
> > As a workaround, use a static const version of the structure to assign
> > most of the members upfront and then only set the few members that
> > require runtime knowledge at probe time.
> > 
> > Fixes: 96ba9dd65788 ("mtd: lpddr: add driver for LPDDR2-NVM PCM memories")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>  
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

Acked-by: Miquel Raynal <miquel.raynal@bootlin.com>

> 
> > ---
> >  drivers/mtd/lpddr/lpddr2_nvm.c | 35 ++++++++++++++++++----------------
> >  1 file changed, 19 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/mtd/lpddr/lpddr2_nvm.c b/drivers/mtd/lpddr/lpddr2_nvm.c
> > index 0f1547f09d08..72f5c7b30079 100644
> > --- a/drivers/mtd/lpddr/lpddr2_nvm.c
> > +++ b/drivers/mtd/lpddr/lpddr2_nvm.c
> > @@ -393,6 +393,17 @@ static int lpddr2_nvm_lock(struct mtd_info *mtd, loff_t start_add,
> >  	return lpddr2_nvm_do_block_op(mtd, start_add, len, LPDDR2_NVM_LOCK);
> >  }
> >  
> > +static const struct mtd_info lpddr2_nvm_mtd_info = {
> > +	.type		= MTD_RAM,
> > +	.writesize	= 1,
> > +	.flags		= (MTD_CAP_NVRAM | MTD_POWERUP_LOCK),
> > +	._read		= lpddr2_nvm_read,
> > +	._write		= lpddr2_nvm_write,
> > +	._erase		= lpddr2_nvm_erase,
> > +	._unlock	= lpddr2_nvm_unlock,
> > +	._lock		= lpddr2_nvm_lock,
> > +};
> > +
> >  /*
> >   * lpddr2_nvm driver probe method
> >   */
> > @@ -433,6 +444,7 @@ static int lpddr2_nvm_probe(struct platform_device *pdev)
> >  		.pfow_base	= OW_BASE_ADDRESS,
> >  		.fldrv_priv	= pcm_data,
> >  	};
> > +
> >  	if (IS_ERR(map->virt))
> >  		return PTR_ERR(map->virt);
> >  
> > @@ -444,22 +456,13 @@ static int lpddr2_nvm_probe(struct platform_device *pdev)
> >  		return PTR_ERR(pcm_data->ctl_regs);
> >  
> >  	/* Populate mtd_info data structure */
> > -	*mtd = (struct mtd_info) {
> > -		.dev		= { .parent = &pdev->dev },
> > -		.name		= pdev->dev.init_name,
> > -		.type		= MTD_RAM,
> > -		.priv		= map,
> > -		.size		= resource_size(add_range),
> > -		.erasesize	= ERASE_BLOCKSIZE * pcm_data->bus_width,
> > -		.writesize	= 1,
> > -		.writebufsize	= WRITE_BUFFSIZE * pcm_data->bus_width,
> > -		.flags		= (MTD_CAP_NVRAM | MTD_POWERUP_LOCK),
> > -		._read		= lpddr2_nvm_read,
> > -		._write		= lpddr2_nvm_write,
> > -		._erase		= lpddr2_nvm_erase,
> > -		._unlock	= lpddr2_nvm_unlock,
> > -		._lock		= lpddr2_nvm_lock,
> > -	};
> > +	*mtd = lpddr2_nvm_mtd_info;
> > +	mtd->dev.parent		= &pdev->dev;
> > +	mtd->name		= pdev->dev.init_name;
> > +	mtd->priv		= map;
> > +	mtd->size		= resource_size(add_range);
> > +	mtd->erasesize		= ERASE_BLOCKSIZE * pcm_data->bus_width;
> > +	mtd->writebufsize	= WRITE_BUFFSIZE * pcm_data->bus_width;
> >  
> >  	/* Verify the presence of the device looking for PFOW string */
> >  	if (!lpddr2_nvm_pfow_present(map)) {
> > -- 
> > 2.26.0
> >   

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
