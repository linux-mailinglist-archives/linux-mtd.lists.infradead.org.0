Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 632F61E3CC8
	for <lists+linux-mtd@lfdr.de>; Wed, 27 May 2020 10:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NebPjcg13kMmHkd4lqEPodzUjNI70zRTZo0V/m+L7cw=; b=o9yCcqVszyUYfF
	YrrvltCT47USdqQQuE+7UBb7PmkzhHIVhMICBIhcxN4XU5g1j0/YamFMRjltVRHVM8mvxzKBeiUgD
	N1R/eV9L+afYYiFQ8QL0Y0v5URf2FGK6EslGzptIW8ABX1pErIqoUyKe8DgqDdW5GVTD59BL7oVgx
	FurlkN9OD9i1gW6SS7olHA/jlPaTeOK4kxMV4COQMzv+8ae5j3+YvqRIHACqmFhDA+1ZlAJgfJyvo
	ijt5ovoKDxTNAct5UseB6wEIVbn1W4IKEEGTdrE54bqVgfpoQjoCOpfLShlA2amdj75q4Uejs0QsL
	FNh08dMjd5ii3Ospuf5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrsy-0002vG-W6; Wed, 27 May 2020 08:58:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdrsn-0002uX-8G
 for linux-mtd@lists.infradead.org; Wed, 27 May 2020 08:57:54 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CF00E2A36C6;
 Wed, 27 May 2020 09:57:51 +0100 (BST)
Date: Wed, 27 May 2020 10:57:49 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v5 28/28] mtd: rawnand: Allocate the best data interface
 structure dynamically
Message-ID: <20200527105749.05b24019@collabora.com>
In-Reply-To: <20200527104911.77679eeb@xps13>
References: <20200526191725.7591-1-miquel.raynal@bootlin.com>
 <20200526191725.7591-29-miquel.raynal@bootlin.com>
 <20200527002844.7e54aa22@collabora.com>
 <20200527095732.467db722@xps13>
 <20200527103519.0863732c@collabora.com>
 <20200527104911.77679eeb@xps13>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_015753_420471_6A37C345 
X-CRM114-Status: GOOD (  18.46  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Rickard Andersson <rickaran@axis.com>, Richard Weinberger <richard@nod.at>,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 10:49:11 +0200
Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> Boris Brezillon <boris.brezillon@collabora.com> wrote on Wed, 27 May
> 2020 10:35:19 +0200:
> 
> > On Wed, 27 May 2020 09:57:32 +0200
> > Miquel Raynal <miquel.raynal@bootlin.com> wrote:
> >   
> > > Maybe I misunderstood your request, you were saying that allocating a
> > > "best data interface object" would be good, so I interpreted it as:
> > > rename it, and allocated it dynamically. I'm fine keeping
> > > data_interface and just declaring it as a pointer.    
> > 
> > Correct, renaming it into best_iface_cfg is probably good, but then,
> > maybe we should have a current_iface_cfg, so the core/drivers always
> > have a pointer to the currently applied config (which after a reset
> > can be the reset config for a short period of time).  
> 
> That's why I created an indirection on chip->data_interface.
> nand_get_interface_cfg() is here for that -> the drivers do not care
> about which one is applied. I don't think we need more than I already
> proposed:
> -> there is one default reset configuration object that can be used by  
>    anyone
> -> there is a best configuration  
> 
> If the best configuration has been derived, then it will be used.
> Otherwise, the helper will fallback to the default slower one, and this
> covers all the cases :)

My point is, during a reset, you want to use the reset config, but
nand_get_interface_cfg() will always return the best config, which is
not the one currently applied until you actually return back to the
best interface config. That means that any driver using
nand_get_interface_cfg() in the exec_op() path will get a wrong config.
So I'd suggest either not exposing nand_get_interface_cfg() to
controller drivers (which would be a valid approach) or making sure it
always return the currently applied timings.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
