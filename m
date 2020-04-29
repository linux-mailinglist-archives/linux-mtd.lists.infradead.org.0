Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4051BDDAA
	for <lists+linux-mtd@lfdr.de>; Wed, 29 Apr 2020 15:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9L95F3nP2wtKcISBkyrdlD8kgSPGn+/vrEsEjY9ez3k=; b=t8efiy2vukN0eM
	yf3uvu2QALc41S2DlheyMC0nddpZiM9q4rlNXvUDb2Is2McZHeZOZG0Sz87XDdn52+7a5GOmVDXAV
	K38mMIcxFWF3Mnsg4XeqbkfW63zfiy0LpUFiSatN/7ktiW4sC6i1IbJqwPK5BDaX+w7tkEER5Xr/v
	6n2NZlHQIx+ToITt+1Za2CcEDmW0Zdt+NNTQATAJjjPYMTuNuV6CbnX4/OVbuZQYtjoqVFwB832lF
	ZnI6335k4TDKGwRt6vJ7S9L2CQLpYkCfjm832y5rOSVxmODUqItAq6NMj2e9mt7LHp8rh+b9Iwx7o
	lo5xKN5VSaHHXAjYd2Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTmp1-0001m3-Q6; Wed, 29 Apr 2020 13:32:19 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTmos-0001lA-R0
 for linux-mtd@lists.infradead.org; Wed, 29 Apr 2020 13:32:12 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 147BA2A21EE;
 Wed, 29 Apr 2020 14:32:09 +0100 (BST)
Date: Wed, 29 Apr 2020 15:32:05 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: "Ramuthevar, Vadivel MuruganX"
 <vadivel.muruganx.ramuthevar@linux.intel.com>
Subject: Re: [PATCH v4 2/2] mtd: rawnand: Add NAND controller support on
 Intel LGM SoC
Message-ID: <20200429153205.09c498cd@collabora.com>
In-Reply-To: <4c946dbc-1518-0f0d-fac7-b2cfb4836440@linux.intel.com>
References: <20200429104205.18780-1-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429104205.18780-3-vadivel.muruganx.ramuthevar@linux.intel.com>
 <20200429133308.4f91c35c@collabora.com>
 <4c946dbc-1518-0f0d-fac7-b2cfb4836440@linux.intel.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_063211_001597_337452D2 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: cheol.yong.kim@intel.com, devicetree@vger.kernel.org, qi-ming.wu@intel.com,
 anders.roxell@linaro.org, vigneshr@ti.com, arnd@arndb.de,
 hauke.mehrtens@intel.com, richard@nod.at, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com, tglx@linutronix.de,
 masonccyang@mxic.com.tw, andriy.shevchenko@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 29 Apr 2020 21:29:40 +0800
"Ramuthevar, Vadivel MuruganX"
<vadivel.muruganx.ramuthevar@linux.intel.com> wrote:

> Hi Boris,
> 
>     Thank you very much for the review comments and your time..
> 
> On 29/4/2020 7:33 pm, Boris Brezillon wrote:
> > On Wed, 29 Apr 2020 18:42:05 +0800
> > "Ramuthevar,Vadivel MuruganX"
> > <vadivel.muruganx.ramuthevar@linux.intel.com> wrote:
> >   
> >> +#define NAND_WRITE_CMD		(EBU_CON_CS_P_LOW | HSNAND_CLE_OFFS)
> >> +#define NAND_WRITE_ADDR		(EBU_CON_CS_P_LOW | HSNAND_ALE_OFFS)
> >> +  
> > 
> > I thought we agreed on dropping those definitions.  
> 
> Yes , we agreed upon it, due to assertion/de-assertion of CS kept it.

And I keep thinking we don't need that, just pass
'HSNAND_CLE_OFFS | HSNAND_CS_OFFS' directly.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
