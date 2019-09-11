Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4F4AF6E7
	for <lists+linux-mtd@lfdr.de>; Wed, 11 Sep 2019 09:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAudzwcIkfGFESG1GhzJTeq6DIvmAYSmgXyKAXDjT2M=; b=sG4LAeKRwCpmpB
	AXV0pugtb6XzilmPYNwRALKG8eEvCzOAqyG2G7mnvipkocKxqES2vuSZyAqxO98qYPmWIO1rl5z6P
	yPnNi8CRBYCv5chNeiEl9nzYBC+8zZ1P7BJw5UHPFga9DGfO5e/npeTzafiq6OdTZLAeDNpnZBD6y
	59gPjQB9MQ57mLWvR3mYhE9lXfvc05njVf8U6/g3aAg8uyFpZmP9SzN0pJuZLoxXa+5RGkQYlioDP
	KTSZ3KnS1fkF9CG2fsRJz2HQFIc6vggs21k9BiJ+BrhFvV7zP5KGPInnc2vlsCwjZ0FgDRu2bD6rS
	8qKodfzdOnWbidHuAyCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7x3L-0001gq-4F; Wed, 11 Sep 2019 07:28:35 +0000
Received: from krieglstein.org ([188.68.35.71])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7x31-0001gY-Dv
 for linux-mtd@lists.infradead.org; Wed, 11 Sep 2019 07:28:17 +0000
Received: from dabox.localnet (gateway.hbm.com [213.157.30.2])
 by krieglstein.org (Postfix) with ESMTPSA id 3079A401B1;
 Wed, 11 Sep 2019 09:27:43 +0200 (CEST)
From: Tim Sander <tim@krieglstein.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: mtd raw nand denali.c broken for Intel/Altera Cyclone V
Date: Wed, 11 Sep 2019 09:27:42 +0200
Message-ID: <2810592.g4EWBO4qaL@dabox>
Organization: Sander and Lightning
In-Reply-To: <CAK7LNARCPwqY+YmUzsHkABpshzzS3tC=fDgp4vZjVgBwS+LKJw@mail.gmail.com>
References: <5143724.5TqzkYX0oI@dabox>
 <9bb2fb0e-a9e7-c389-f9b7-42367485ff83@kernel.org>
 <CAK7LNARCPwqY+YmUzsHkABpshzzS3tC=fDgp4vZjVgBwS+LKJw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_002815_612339_9668B401 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Marek Vasut <marek.vasut@gmail.com>,
 Richard Weinberger <richard@nod.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dinh Nguyen <dinguyen@kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi

Am Mittwoch, 11. September 2019, 04:37:46 CEST schrieb Masahiro Yamada:
> - Does the SOCFPGA boot ROM support the NAND boot mode?
Cyclone V HPS TRM Section "A3 Booting and Configuration" lists QSPI, SD/MMC and 
Nand as bootsource.

> - If so, which value does it use for SPARE_AREA_SKIP_BYTES?
I have no idea about this one.

Tim



______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
