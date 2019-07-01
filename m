Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B57515216C
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 05:54:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+J7SI5KebtU+nDYpPBW90O+pxQHiRjSr6BJ1A0RrMPI=; b=OdiNwUXRyJbLXi
	Z+lhGCFQhRtynFK6Dn4TnTepNEt8fS/Sp3/3Gms5olDIGn4gZBIRGagf7cXQ9fjrzEM54Ua+15TXk
	Nyre+2NGAWtID1htNx5T7XT3Oq/OKft7pKBDtUR8iqPSmtir6VJ+hoi8/SUOQXS25KxEELw3K05XP
	6pYz8QCYbCbkkThHK8INRkC9du6QUb1jeb7MA5g3aHVKLATvG4VBMT0SRhocwfrpK+6MV3YHTSrYB
	ySgI/+Z8C4roR2gbzsvFL0oAQn0yoWHtsTF9ZPf8ln76z/iPYypheIWQxS1vU613mHuemcgmqP3XT
	PeRHi3qO5xfiqDrwawnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfcWs-0004qR-7S; Tue, 25 Jun 2019 03:53:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfcWY-0004ps-NV
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 03:53:40 +0000
Received: from localhost (unknown [116.226.249.212])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 993EB20863;
 Tue, 25 Jun 2019 03:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561434818;
 bh=LiKh1y/cVsCqNr8ux7WO7aEmLV31ud+AQ1bb0n+nvNg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zy0hx9p/4crxzYjV1lRLmNA6srJEKNhjem7iURpTiZ6qZyykyJc4xvBjgFbuwsPBI
 LqUfYd9yJiH2pbvvMsA9I0JwKIbT8dhPcmzYkOFmPoWMn7kF9t4f7XcbUxpiVYvfOZ
 70aqqAWKidJgfsmOQAnggYhLnpqxyh1bIcGdE/QQ=
Date: Tue, 25 Jun 2019 11:08:07 +0800
From: Greg KH <gregkh@linuxfoundation.org>
To: liaoweixiong <liaoweixiong@allwinnertech.com>
Subject: Re: [RESEND PATCH v2] mtd: spinand: read return badly if the last
 page has bitflips
Message-ID: <20190625030807.GA11074@kroah.com>
References: <1561424549-784-1-git-send-email-liaoweixiong@allwinnertech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561424549-784-1-git-send-email-liaoweixiong@allwinnertech.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_205338_782409_3C8A2A1F 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Chuanhong Guo <gch981213@gmail.com>,
 Marek Vasut <marek.vasut@gmail.com>,
 Frieder Schrempf <frieder.schrempf@exceet.de>, linux-mtd@lists.infradead.org,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Miquel Raynal <miquel.raynal@bootlin.com>, stable@vger.kernel.org,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, Peter Pan <peterpandong@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 09:02:29AM +0800, liaoweixiong wrote:
> In case of the last page containing bitflips (ret > 0),
> spinand_mtd_read() will return that number of bitflips for the last
> page. But to me it looks like it should instead return max_bitflips like
> it does when the last page read returns with 0.
> 
> Signed-off-by: liaoweixiong <liaoweixiong@allwinnertech.com>
> Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>
> Reviewed-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> Fixes: 7529df465248 ("mtd: nand: Add core infrastructure to support SPI NANDs")
> ---
>  drivers/mtd/nand/spi/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
