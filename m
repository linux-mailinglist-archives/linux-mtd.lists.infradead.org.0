Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7684555140
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 16:12:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOhK/OQTv6pfI2pOceemmjCgmnkSAb3CkcXPoLdC6P0=; b=k9ssNDAZGLp9x5
	I9I47Mtun/CMWQQPokCJ/K90ytbqJeKkOJBYF2rk383iJBtkf2XOEZVEBOq1OWwvnn4zvpqiFu8qw
	hYRIOsPdDrhj8Q3kyfdmFwqF8iV2KTqXiCdvJ1szvaUorYYMSANQ4fQbe/4h2Wb0dVe2w4yuI2Mwj
	+cVstIE17YrFnB20ojFEItKOwd1awdukmm32i/m7tb9sUq6OFVx5JK/pW+s3833GI1oC1+p0B6j/t
	lEaN3XOl87dAl0gorY/7mrZ7HMYPzvfBmgZXtvpgJBC0Jh/HcpcdTDsNZgBXaKN0RhTY6AFlRauDT
	wGdrKRIoWJn4yNWn/ntg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmB4-0003JH-A5; Tue, 25 Jun 2019 14:12:06 +0000
Received: from mail.intenta.de ([178.249.25.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmAc-00030I-9L
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 14:11:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=intenta.de;
 s=dkim1; 
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:CC:To:From:Date;
 bh=0LXqnefS6ua7gqL9kD/KCf39EJ+ezxI8Okybp4/Vr+o=; 
 b=GQXVa9j2NkuaRh3mroxMOkZV8AXHK22v8Lj314GNO/ChsPvS33P9Pzv/VrBU21g7Fnbt1V7HewaCrDHncVS+RMe0NaDPdrQapJEbyKttQypFLMjvVIRZ7R1owYz3tl43s+Zg+Nar+Jj4/Ayf2mT5qCeq2UKePxsiVj+pVNZEJnaR/n3ZrnQfo1nZ6jFNHzN81yuwcyOnD4kKqH/YCZvItcMoQ3k/+Rpv2iLFyyX+hLwRvQazeho7fxZx2reN+/6eIox4h7ZdYaYgWISGZY2Vflx6oUG0djzC4ZS+hmqj9NGqpeVfs84F9/64ghcbTLexjualZ/WKTfu1b1gFnhrmUA==;
X-CTCH-RefID: str=0001.0A0C020D.5D122B8D.0069, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
Date: Tue, 25 Jun 2019 16:11:25 +0200
From: Helmut Grohne <helmut.grohne@intenta.de>
To: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: Re: [LINUX PATCH v17 1/2] mtd: rawnand: nand_micron: Do not over
 write driver's read_page()/write_page()
Message-ID: <20190625141125.a4umdey6ejxjxap4@laureti-dev>
References: <20190625044630.31717-1-naga.sureshkumar.relli@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625044630.31717-1-naga.sureshkumar.relli@xilinx.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-ClientProxiedBy: ICSMA002.intenta.de (10.10.16.48) To ICSMA002.intenta.de
 (10.10.16.48)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_071139_001699_FE4A1AE5 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.249.25.132 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 06:46:29AM +0200, Naga Sureshkumar Relli wrote:
> --- a/drivers/mtd/nand/raw/nand_micron.c
> +++ b/drivers/mtd/nand/raw/nand_micron.c
> @@ -500,8 +500,11 @@ static int micron_nand_init(struct nand_chip *chip)
>  		chip->ecc.size = 512;
>  		chip->ecc.strength = chip->base.eccreq.strength;
>  		chip->ecc.algo = NAND_ECC_BCH;
> -		chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> -		chip->ecc.write_page = micron_nand_write_page_on_die_ecc;
> +		if (!chip->ecc.read_page)
> +			chip->ecc.read_page = micron_nand_read_page_on_die_ecc;
> +
> +		if (!chip->ecc.write_page)
> +			chip->ecc.write_page = micron_nand_write_page_on_die_ecc;

When used with pl353_nand.c, this change prioritizes the
pl353_nand_read_page_raw/pl353_nand_write_page_raw implementations over
micron_nand_read_page_on_die_ecc/micron_nand_write_page_on_die_ecc. The
pl353 implementations don't check the status register of the flash for
NAND_ECC_STATUS_WRITE_RECOMMENDED nor do they update ecc_stats.failed in
any way. Unless I am mistaken, this implies that bitflips cannot be
detected at all anymore.

However, this is the change that makes a MT29F2G08ABAEAWP practically
work with jffs2 on the Zynq platform.

In this context, I countered a document from Micron[1] indicating that
their on-die chips are incompatible with jffs2 as is, because the on-die
oob layout is incompatible with jffs2. I suppose that using the raw
variants puts jffs2 in full control of the oob area, but is this really
the correct solution?

Helmut

[1] https://www.micron.com/~/media/Documents/Products/Technical%20Note/NAND%20Flash/tn2975_enable_on-die-ECC_NAND_JFFS2.pdf

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
