Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E31A5A57B
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 21:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QwhtKgK75aOnQ1Lo68fQ8gbtmo8ni/T9x1jLth9iqB8=; b=mWMI/L4lCsXJ4Gt5IMICrAqRJ
	ahQoiGX2yyGiTsZ3HoYNfGo1U1w6d28wNOOk1ouw0oIYflxNiThMyTMFzyX6ye7IqtHt0XppEpzek
	5xHlP8IwznM9cpCoC2mN+54FB/6MZ4XKnOxxmKVTYi18qenUZ5DANvURxth7BZQMAl0ixKuvZKL0i
	njIgEC8y4DA1WF0HBxCK3JrqkEe4QnSNZeOSVmHaL668oEHEN95nmHBlceVofRJJzDur8VVNdj0HA
	bi5XYsSn1PaViu+c/I6dQoErlh2alvULjWe9D8NoXctPsJ8/whYLrjQ0WTwCLrp+g7+RBjx46ctgh
	Vz6wq3PBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgwwA-0007eA-DN; Fri, 28 Jun 2019 19:53:34 +0000
Received: from outils.crapouillou.net ([89.234.176.41] helo=crapouillou.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgwvx-0007cZ-Bx
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 19:53:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
 s=mail; t=1561751593; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QXThYP6vEL2CRlY5WzupI6gQ/RhO4QbnhM+KuTasqDo=;
 b=pyZPyavbwN58kLdm306KC9LokVom5Rwg+HfXnbKM4U+Qp1NK5uBplbXFQrcbrxoIFXpx5B
 1QnngrkGcFjVdjkniE1o7QWhhFrbphNSUZD56up0p2qrEi1jQ53w3Ws/4l+HeAbsE0P8IY
 ZuzzYoBN6I9kg7PGYG+r0EFBwh5hb5I=
Date: Fri, 28 Jun 2019 21:53:08 +0200
From: Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH] mtd: rawnand: ingenic: fix ingenic_ecc dependency
To: Miquel Raynal <miquel.raynal@bootlin.com>
Message-Id: <1561751588.1914.0@crapouillou.net>
In-Reply-To: <20190627184047.6faa058a@xps13>
References: <20190617111110.2103786-1-arnd@arndb.de>
 <1560770644.1774.0@crapouillou.net>
 <CAK8P3a28NrvLP1nE7TQUCqwYXVwrSnVUJoH0yTSqRpz93f4g2Q@mail.gmail.com>
 <20190617141659.376c0271@xps13> <20190627184047.6faa058a@xps13>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_125321_601467_398DE6C0 
X-CRM114-Status: GOOD (  16.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek Vasut <marek.vasut@gmail.com>, linux-mtd <linux-mtd@lists.infradead.org>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org



Le jeu. 27 juin 2019 =E0 18:40, Miquel Raynal =

<miquel.raynal@bootlin.com> a =E9crit :
> Hi Paul,
> =

> Miquel Raynal <miquel.raynal@bootlin.com> wrote on Mon, 17 Jun 2019
> 14:16:59 +0200:
> =

>>  Hello,
>> =

>>  Arnd Bergmann <arnd@arndb.de> wrote on Mon, 17 Jun 2019 14:12:48 =

>> +0200:
>> =

>>  > On Mon, Jun 17, 2019 at 1:24 PM Paul Cercueil =

>> <paul@crapouillou.net> wrote:
>>  >
>>  > > I think there's a better way to fix it, only in Kconfig.
>>  > >
>>  > > * Add a bool symbol MTD_NAND_INGENIC_USE_HW_ECC
>>  > > * Have the three ECC/BCH drivers select this symbol instead of
>>  > >   MTD_NAND_INGENIC_ECC
>>  > > * Add the following to the MTD_NAND_JZ4780 config option:
>>  > >   "select MTD_NAND_INGENIC_ECC if MTD_NAND_INGENIC_USE_HW_ECC"
>>  >
>>  > I don't see much difference to my approach here, but if you want
>>  > to submit that version with 'Reported-by: Arnd Bergmann =

>> <arnd@arndb.de>',
>>  > please do so.
>>  >
>>  > Yet another option would be to use Makefile code to link both
>>  > files into one module, and remove the EXPORT_SYMBOL statements:
>>  >
>>  > obj-$(CONFIG_MTD_NAND_JZ4780) +=3D jz4780_nand.o
>>  > jz4780_nand-y +=3D ingenic_nand.o
>>  > jz4780_nand-$(CONFIG_MTD_NAND_INGENIC_ECC) +=3D ingenic_ecc.o
>>  >
>> =

>>  I personally have a preference for this one.
> =

> Would you mind sending the above change? I forgot about it but I would
> like to queue it for the next release. Preferably the last version =

> Arnd
> proposed.

It does change the module name from 'ingenic_nand' to 'jz4780_nand', =

though.
That's not really ideal...

> =

> Thanks,
> Miqu=E8l



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
