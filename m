Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDBB1EA331
	for <lists+linux-mtd@lfdr.de>; Mon,  1 Jun 2020 13:58:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhLzaYzz0erTxRzuEbGIHMYz7WNDbMxK7GKLNenjXJA=; b=V+r/gzQQDtv7jB
	FHoTwV/2TqXGH6PVj3dppr1UcftL80EnwkF5qi3RWUkffGKUvG3Bjauya1CNY31iKS6fgM0AlV9iy
	Wryj4oNrOHMBI1iiCk2+Yk6pYnGYd3TyxlXYtYvov820AAung4yROnJRhvQ1YoHGM/JHd9nFxh7LF
	5jnzX/864nYyPKGOAFFo8Kku830da5P2vxC0ikDouqBJZuBUdsLUysKN8B4JtDVGSYoCImOTDhmIf
	24bAB0TEN1GJUJ8m4AFEJLDTJpvj3eGNrB3AepT/nCUtnlSYeYpBAA+OdiGQT78zFBEOR24MkOrQT
	CPmUYaXRZ3KZjq05E3UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfj5a-0003mB-2r; Mon, 01 Jun 2020 11:58:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfj5P-0003la-Hr
 for linux-mtd@lists.infradead.org; Mon, 01 Jun 2020 11:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591012713;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iXBGuAS9V5LVs9dboAYML/qojIHGctw2jyNMqjA5r9I=;
 b=J+ZEPxxKrYFzx/9fAPXQP4fD7YsAe7AD0/Hpa9KpyCLGAVaq0Zy+eHgZu7U0vc+CGF6TJb
 o8vHNpT+IX3OrX6hblJESsHqIEwLrg/++ChYX8wz3BSc8TWA2sR5JcpCgdeFx8Tj5y4aA1
 y8FMIwSM7kvyaWQbYZXH9WQhaOLWPb8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-135-K7aiPOhjOHuBoJ5iS8Efdg-1; Mon, 01 Jun 2020 07:58:32 -0400
X-MC-Unique: K7aiPOhjOHuBoJ5iS8Efdg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38216100CCC0;
 Mon,  1 Jun 2020 11:58:30 +0000 (UTC)
Received: from T590 (ovpn-13-152.pek2.redhat.com [10.72.13.152])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C5065D9C9;
 Mon,  1 Jun 2020 11:58:22 +0000 (UTC)
Date: Mon, 1 Jun 2020 19:58:18 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] block: Flag elevators suitable for single queue
Message-ID: <20200601115818.GB1190838@T590>
References: <20200528081003.238804-1-linus.walleij@linaro.org>
 <20200601074957.GE1181806@T590>
 <CACRpkdYL4-Z=kaS+RfniVr=Sn-yOf+=CKMJDsn=eTK3atmGohg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdYL4-Z=kaS+RfniVr=Sn-yOf+=CKMJDsn=eTK3atmGohg@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_045835_672181_AF416FC2 
X-CRM114-Status: GOOD (  18.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jens Axboe <axboe@kernel.dk>, Damien Le Moal <damien.lemoal@wdc.com>,
 Paolo Valente <paolo.valente@linaro.org>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 linux-block <linux-block@vger.kernel.org>, linux-mtd@lists.infradead.org,
 Johannes Thumshirn <jthumshirn@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 01:36:54PM +0200, Linus Walleij wrote:
> On Mon, Jun 1, 2020 at 9:50 AM Ming Lei <ming.lei@redhat.com> wrote:
> > On Thu, May 28, 2020 at 10:10:03AM +0200, Linus Walleij wrote:
> > > The Kyber block scheduler is not suitable for single hardware
> > > queue devices, so add a new flag for single hardware queue
> > > devices and add that to the deadline and BFQ schedulers
> > > so the Kyber scheduler will not be selected for single queue
> > > devices.
> >
> > The above may not be true for some single hw queue high performance HBA(
> > such as megasas), which can get better performance from none, so it is
> > reasonable to get better performance from kyber, see 6ce3dd6eec11 ("blk-mq:
> > issue directly if hw queue isn't busy in case of 'none'"), and the
> > following link:
> >
> > https://lore.kernel.org/linux-block/20180710010331.27479-1-ming.lei@redhat.com/
> 
> I see, but isn't the case rather that none is preferred and kyber gives
> the same characteristics because it's not standing in the way
> as much?

Kyber has its own characteristic, such as fair read & write, better
IO merge. And the decision on scheduler isn't only related with device,
but also with workloads.

> 
> It looks like if we should add a special flag for these devices with
> very fast single queues so they can say "I prefer none", do you
> agree?

I am not sure if it is easy to add such flag, because it isn't only
related with HBA, but also with the attached disks.


Thanks,
Ming


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
