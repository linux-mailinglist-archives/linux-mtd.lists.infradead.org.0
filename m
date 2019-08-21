Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B284B97334
	for <lists+linux-mtd@lfdr.de>; Wed, 21 Aug 2019 09:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYFPmhIje7PfITX82tenVLB+K2i6V28I2PxCxMS69t0=; b=EhrzytF4R1GcZ9
	68J7mWUC1jxp87M7TJ6hMQl/5jWYkNhnPLXJsIdpxU0Cf7ZyDG3dAI/9X75zXTNx66zjC7GIOyj/1
	Wr745rATC6CBR2b1UJ3i7bMU0Dw6XYIDujWA1GUfoDrHWfudVV1fkg+7ZhBaYcPo9+MPNRLRv7ONn
	YFtS/G4pmTn5FpxTGBPQ7wFucnMITztkIAOOSK9LRm56//Dsiv1Iq0PHB+Kuf07SAb+Ab6qjcItY1
	TUtl6En0fIXcSxVncgygGnbirsIRvANf3rrzIyjnbmeGpZTjyH3XYkHMQcKUO9nndK/9ZglyMyJNn
	QGI0lRR1h3LultMVGiBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0KuE-0008T9-Fi; Wed, 21 Aug 2019 07:19:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Ktv-0008Sj-TO
 for linux-mtd@lists.infradead.org; Wed, 21 Aug 2019 07:19:25 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1i0Kto-00030x-Qu; Wed, 21 Aug 2019 09:19:16 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1i0Ktm-0007R7-D0; Wed, 21 Aug 2019 09:19:14 +0200
Date: Wed, 21 Aug 2019 09:19:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: "Shivamurthy Shastri (sshivamurthy)" <sshivamurthy@micron.com>
Subject: Re: [EXT] Re: [PATCH] mtd: spinand: micron: add support for
 MT29F1G01AAADD
Message-ID: <20190821071914.ymfpvio3o5ano2y5@pengutronix.de>
References: <20190814082232.2119-1-m.felsch@pengutronix.de>
 <20190819101718.39b3a5ca@xps13>
 <20190819133042.23jpf3eap2u5teuo@pengutronix.de>
 <20190819163449.6e62e6a5@xps13>
 <20190820063904.xg32xtdt6uf3vl77@pengutronix.de>
 <MN2PR08MB59515F78DFA89350B9A3E6D6B8AB0@MN2PR08MB5951.namprd08.prod.outlook.com>
 <MN2PR08MB5951FA28B34407D8614F3E28B8AB0@MN2PR08MB5951.namprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR08MB5951FA28B34407D8614F3E28B8AB0@MN2PR08MB5951.namprd08.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:15:50 up 95 days, 13:33, 59 users,  load average: 0.00, 0.00, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_001923_952328_A04F4A9D 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "'bbrezillon@kernel.org'" <bbrezillon@kernel.org>,
 "'richard@nod.at'" <richard@nod.at>,
 "'frieder.schrempf@kontron.de'" <frieder.schrempf@kontron.de>,
 "'marek.vasut@gmail.com'" <marek.vasut@gmail.com>,
 "'linux-mtd@lists.infradead.org'" <linux-mtd@lists.infradead.org>,
 "'kernel@pengutronix.de'" <kernel@pengutronix.de>,
 'Miquel Raynal' <miquel.raynal@bootlin.com>,
 'Peter Pan' <peterpandong@micron.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Shivamurthy, Miquel,

On 19-08-20 11:33, Shivamurthy Shastri (sshivamurthy) wrote:
> Hi Marco,

[ ... ]

> > > Okay. Just one last question. What is the common way to go to specify
> > > the free area? By this I mean that the NAND has two areas to store the
> > > user metadata calling it 'user metadata I' and 'user metadata II'. 'user
> > > metadata II' isn't ecc protected so I skip them. But the current
> > > supported chip does not skip the user metadata area which isn't
> > > protected [1] table 10.
> > >
> > > [1] https://www.micron.com/~/media/documents/products/data-
> > > sheet/nand-flash/70-series/m79a_2gb_3v_nand_spi.pdf

@Miquel
Do you can me help with that?

> > 
> > I have written patch to make helpers to be more generic.
> > They work for Micron's M78A, M79A and M70A series SPI NANDs.
> > 
> 
> I missed link in last email, here it is.
> 
> http://patchwork.ozlabs.org/patch/1134724/

This patch seem not to address my ooblayout.. So my patch is still
needed.

Regards,
  Marco


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
