Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F1801CB7EB
	for <lists+linux-mtd@lfdr.de>; Fri,  8 May 2020 21:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q+63cOa5mOgjgJCao6aZ8+isPj7sPw/QwZLLjcXEfss=; b=LzzTWnwgR+Zi4p
	2e12dHgCg9587dGm6s26gcsLesBp1pYgoFVSuOo+BT5G3maRmVqawjwJmGhlCbGFg9HNKpWFu0z1T
	fzu81dE7Lssl3IgmUKQR5RRyhpgJIaQdSHdsKqJ622eo43rkYievbxIKQ9ODA7kJhSjml/6c3Ogp9
	zqumY9u/xtqgnWD51gEIp6GMahmqt+dTsxj2X5o8S58Xiu9wj+Y1ovnUtROwKCLGENRVUufcpJTvq
	9DAZyLbh446+n98zn/FUPin7nyTpbO9AF+kNieDY3la0xr5nLIKlsxMpPicU4GXG63TVX2g5aS0mq
	i/Us007KO3BvkAKGCe0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX8Lr-00072M-9k; Fri, 08 May 2020 19:08:03 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX8Lj-00071D-IG
 for linux-mtd@lists.infradead.org; Fri, 08 May 2020 19:07:57 +0000
X-Originating-IP: 157.36.216.22
Received: from localhost (unknown [157.36.216.22])
 (Authenticated sender: me@yadavpratyush.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 9F7331C0006;
 Fri,  8 May 2020 19:07:38 +0000 (UTC)
Date: Sat, 9 May 2020 00:37:35 +0530
From: Pratyush Yadav <me@yadavpratyush.com>
To: "Daniel Walker (danielwa)" <danielwa@cisco.com>
Subject: Re: [RFC-PATCH] mtd: spi-nor: add conditional 4B opcodes
Message-ID: <20200508190735.tpgeuirsnyjexfz4@yadavpratyush.com>
References: <20200507162047.30788-1-danielwa@cisco.com>
 <20200507180346.gwni4hf6kb6gd2e5@yadavpratyush.com>
 <20200507181356.GZ9016@zorba>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507181356.GZ9016@zorba>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_120755_738898_4DE61933 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.197 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Richard Weinberger <richard@nod.at>, Miquel Raynal <miquel.raynal@bootlin.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Daniel,

On 07/05/20 06:13PM, Daniel Walker (danielwa) wrote:
> On Thu, May 07, 2020 at 11:33:46PM +0530, Pratyush Yadav wrote:
> > On 07/05/20 09:20AM, Daniel Walker wrote:
> > > Some chips have 4B opcodes, but there is no way to know if they have
> > > them. This device tree option allows platform owners to force enable 4b
> > > opcodes when they know their chips support it even when it can be
> > > automatically identified.
> > 
> > Do you mean that two chips might have the same ID but one of them can 
> > support 4B opcodes and the other can not? Is it possible to detect this 
> > in a fixup hook? I think it would be better to do something like this in 
> > a fixup hook instead of via device tree.
>   
> Yes. The chip I added the option for is an example of this, it's n25q256a. I'm not familiar with the
> fixup hook mechanism, but I would assume you need some way to tell between the 4B
> opcode chips and the non-4B opcode chips. For n25q256a, we have not found a way
> to do that.

I'm assuming this patch is related to [0]. If all you want is to address 
memory above 16M, why not switch to 4-byte addressing mode instead? 
Taking a quick look at the datasheet tells me this can be done via the 
"Enter 4-byte address mode" command (0xB7). Then just use the regular 
read/program commands with 4-byte addresses. Does that work for you? Is 
there any reason you _have_ to use dedicated 4B opcodes?

[0] https://lore.kernel.org/linux-mtd/20200417174620.16420-1-danielwa@cisco.com/ 

-- 
Regards,
Pratyush Yadav

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
