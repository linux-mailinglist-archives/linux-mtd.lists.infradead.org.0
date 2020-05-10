Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178A11CC986
	for <lists+linux-mtd@lfdr.de>; Sun, 10 May 2020 10:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjI+mgDxY36HdDmTyslzPXaju7Afhr4ortJrgOnnrQQ=; b=nJE+CE0dK05uiO
	ju9iz2egpDK/A3PabI0aW6ndZj1Hb6poXRPpJ0adKpvicfqMwPImh+PD23JR0j6ePk7DzvDyr48kv
	Qhzzv2q93lLINe4NsaajzEVqI6tqFyhxBCenClnvmCikUA4W9jtAI6u8E4dXU54cyAARiZ7Wnus9Y
	x2DbAkA8v8tu2PZf5U5NGSSdJHb5LSp8gxImcWL3JpZckiDViVD1+ksEah3nehJZuI7t418S7Y96Q
	PEdyDneG3SxSfbFYlt67QH5ruP4ROWW0+GoEsuQHLYMj0YPHpyiE1znisfaYHbcIEPNSdV85ft7Hv
	YGHAjvhTpDVaGO4r3fKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXhXA-00042s-1x; Sun, 10 May 2020 08:42:04 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXhWy-00042R-TH
 for linux-mtd@lists.infradead.org; Sun, 10 May 2020 08:41:54 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5F8AC2A139F;
 Sun, 10 May 2020 09:41:48 +0100 (BST)
Date: Sun, 10 May 2020 10:41:45 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v4 7/8] mtd: rawnand: arasan: Add new Arasan NAND
 controller
Message-ID: <20200510104145.7d53a58b@collabora.com>
In-Reply-To: <20200510103547.7399eba3@xps13>
References: <20200508171339.8052-1-miquel.raynal@bootlin.com>
 <20200508171339.8052-8-miquel.raynal@bootlin.com>
 <20200510090230.1ba6f6d7@collabora.com>
 <20200510103547.7399eba3@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_014153_075445_37F45CD0 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Naga Sureshkumar Relli <nagasure@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 10:35:47 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Hi Boris,
> 
> Boris Brezillon <boris.brezillon@collabora.com> wrote on Sun, 10 May
> 2020 09:02:30 +0200:
> 
> > On Fri,  8 May 2020 19:13:38 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > +static int anfc_len_to_steps(struct nand_chip *chip, unsigned int len)
> > > +{
> > > +	unsigned int steps = 1, pktsize = len;
> > > +
> > > +	while (pktsize > ANFC_MAX_PKT_SIZE) {
> > > +		steps *= 2;
> > > +		pktsize = DIV_ROUND_UP(len, steps);
> > > +	}    
> > 
> > 
> > Same here, you shouldn't have a round_up() but instead complain if
> > "len != pkt_size * steps"
> > 
> > 	if (len % 4)
> > 		return -ENOTSUPP;  
> 
> This is not possible, we need unaligned accesses for NAND detection.

Duh, this really calls for a comment saying how wrong this is and how
it should be fixed (discussions we had about data size constraints and
the 'can-issue-more' flag on data_in/out instructions).

> 
> > 
> > 	if (len < ANFC_MAX_PKT_SIZE)
> > 		return len;
> > 
> > 	for (steps = 2; steps < ANFC_MAX_STEPS; steps *= 2) {
> > 		pkt_size = len / steps;
> > 		if (pkt_size <= ANFC_MAX_PKT_SIZE)
> > 			break;
> > 	}
> > 
> > 	if (pkt_size * steps != len)
> > 		return -ENOTSUPP;
> > 
> > 	return pkt_size;  
> 
> The rest looks fine, I will change it and also add these checks in
> ->exec_op() check_nonly path.  


______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
