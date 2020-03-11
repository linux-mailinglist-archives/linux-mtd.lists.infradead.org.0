Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3F218234C
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Mar 2020 21:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GatQ7NK8MRZuXecpBeaFq2mFHQWW3BoiUWgojIOteQc=; b=Dhz5aDrlcOJ5TA
	Lr6GVrvSIwnuTBL/qhZNkM2nWoBFD6bqBlV9dIkUk2iMT0/eIrfQE6genatBo6agnoUnoOFMfNkjY
	9otDM3Umr8buQbOkCf+bmCAeboPH/k4WUOJOXyOTsmb/Yzu+fX1bQJzrEoRyVUUSviS/SE2tnWfsQ
	AT0pdYxevwijG6HLUEjNCpi8OWsk/FUhfxWRVu/mLT/3mLUY7qvlrbuWJqKUzS6WR0cBONUgmiZ4F
	M/t6MGTMQIxvgQGR4Cfg1KnhCW/EVgpqi9lp5Zubk15eB+Cok5y9px28PzKyzPuDeBsBIQOmX4S/v
	qoiMBc8ta/gKOMeKOLbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC80v-00061v-R9; Wed, 11 Mar 2020 20:31:37 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC80o-00061O-9i
 for linux-mtd@lists.infradead.org; Wed, 11 Mar 2020 20:31:31 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 78E0A2941B3;
 Wed, 11 Mar 2020 20:31:24 +0000 (GMT)
Date: Wed, 11 Mar 2020 21:31:20 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Victor Fusco <victor@cartesi.io>
Subject: Re: Possible regression regarding the name and size of MTD devices
 on kernel 5.5.4
Message-ID: <20200311213120.0141aec0@collabora.com>
In-Reply-To: <CAHpUXUx8puujULLTtLTDEvEVG+gasJcmj9QxLC5vf69+WzL74g@mail.gmail.com>
References: <CAHpUXUx8puujULLTtLTDEvEVG+gasJcmj9QxLC5vf69+WzL74g@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_133130_468248_700D3CDB 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Victor,

On Wed, 11 Mar 2020 16:58:31 -0300
Victor Fusco <victor@cartesi.io> wrote:

> 
> Searching into the git history I've found two changes that seems to have
> introduced this new behavior:
> 
> 1. The merge of physmap_of.c into physmap-core.c made it stop checking the
> mtd_name
> 
> https://github.com/torvalds/linux/commit/642b1e8dbed7bbbf8c4deb3c9a0496f17278badc#diff-25f9c3817991d18e6c24935d91953344L223
> 
> The original implementation was:
> 
> drivers/mtd/maps/physmap_of_core.c:223
> ----------
>         info->list[i].map.name = mtd_name ?: dev_name(&dev->dev);
> ----------
> 
> And the new one:
> 
> drivers/mtd/maps/physmap-core.c:237
> ----------
>         info->maps[i].name = dev_name(&dev->dev);
> ----------
> 
> 2. The merge gpio-addr-flash.c into physmap-core.c made it calculate the size
> differently. Not sure if the new implementation is accurate when there is no
> gpio.
> 
> https://github.com/torvalds/linux/commit/ba32ce95cbd9876eb7f5ec39af87829c8f13a337#diff-82fc46753342e94dc0772828e76af427L372
> 
> The original implementation was:
> 
> drivers/mtd/maps/physmap-core.c:372
> ----------
>         info->maps[i].size = resource_size(res);
> ----------
> 
> And the new one:
> 
> drivers/mtd/maps/physmap-core.c:507
> ----------
>         info->win_order = get_bitmask_order(resource_size(res)) - 1;
>         info->maps[i].size = BIT(info->win_order +
>                      (info->gpios ?
>                       info->gpios->ndescs : 0));
> ----------


Looks like 2 regressions, indeed. Would you mind sending 2 fixes for
that?

Thanks,

Boris

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
