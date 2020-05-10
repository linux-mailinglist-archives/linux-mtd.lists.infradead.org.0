Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294061CCE35
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 23:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6BblKcT81xm0BNnWBcgjFm9jL7LOseIlxTzJof0ipoY=; b=dATCMIBnonRU+9
	hUyvGoy3wjnw0Pqsyr7hQD1Y3PqXcwVGIa8bkmqekBTwNzhigyNHrXlL7o6NM4ImRIsVo6i6ZeLEY
	JBt1+0grIEb6ugkf00rUXjtqvzY6GsixhvlNbYmFzSAmhq+KbqYM6gd3XI88gMJUpJoj7Sv5YXCyl
	NrNXKkSLE0WbSBcSWvemN9ZMg5qjdRtoMVKAaCjoa4i+XBlFVqa6p5/g13hYMT2YJULAjfQF0YJo7
	pcV1KKNYNxbevZo7J7ug8LCVKoKN5vpIlYSsIwsbk/SplQDKLCjsWRFdtbMZPMtQ5CoYUKsUn83xq
	qHZe9X7Kl1+eLAH9XoFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXtbu-0001Oz-75; Sun, 10 May 2020 21:35:46 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXtbm-0001Oe-7L
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 21:35:39 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 75DF3C0002;
 Sun, 10 May 2020 21:35:33 +0000 (UTC)
Date: Sun, 10 May 2020 23:35:32 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 1/5] mtd: rawnand: davinci: Inherit from nand_controller
Message-ID: <20200510233532.47a6c7d6@xps13>
In-Reply-To: <20200501100729.1237040-2-boris.brezillon@collabora.com>
References: <20200501100729.1237040-1-boris.brezillon@collabora.com>
 <20200501100729.1237040-2-boris.brezillon@collabora.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_143538_398072_15B82D3D 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Sekhar Nori <nsekhar@ti.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org


Boris Brezillon <boris.brezillon@collabora.com> wrote on Fri,  1 May
2020 12:07:25 +0200:

> Let's not rely on the dummy_controller embedded in nand_chip.legacy
> and explicitly inherit from nand_controller instead.
> 
> Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> ---

Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
