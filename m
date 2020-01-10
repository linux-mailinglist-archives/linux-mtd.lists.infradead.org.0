Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2041368BE
	for <lists+linux-mtd@lfdr.de>; Fri, 10 Jan 2020 09:04:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5H4Y9JBJ/wUCxq7KVeH4R9gX6s1yr48IWVjGfGV6fcs=; b=BRpWJwY+IKh+Ny
	8sGcETnQhrRtjQRqeLL2RafAW3Bs3xzjmFaoG9zhxoudBTWtm0GSAMhD3IzSKKfRLAkGZDTS1awhD
	mgUoZwhBD4/NXutisYXC5Iy/SBDuNANASsnjtfY0FFKtjA2XUdOvU7XXksxA2mK69SrflKXTMOATw
	qhecu6h3hKSHQloLg2fN6AP+u40z3brEzvJ/IXxEM1yA4EXb9HPfW0l/+YoqEwNqxhc5y5zfS5aMV
	DfQEgq4lLuaRy1cNV4BkOhNb8cAf/d0Hg6EnllqmAiXRyHRR32K+M2f3crRiaj/X0Tv5zbbMt77se
	BN+1IsfUU7Sc/Vf6+L5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ippHX-0001eo-Sj; Fri, 10 Jan 2020 08:04:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ippHP-0001dx-RC
 for linux-mtd@lists.infradead.org; Fri, 10 Jan 2020 08:04:29 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B25EC2939B8;
 Fri, 10 Jan 2020 08:04:25 +0000 (GMT)
Date: Fri, 10 Jan 2020 09:04:22 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH v2] mtd: nand: spi: rework detect procedure for
 different read id op
Message-ID: <20200110090422.75988c49@collabora.com>
In-Reply-To: <CAJsYDVK4RtX92O3M+EOsZa5qS4TxE0OVaEq=KOnAuP6DEHvw2Q@mail.gmail.com>
References: <20200110025218.1257809-1-gch981213@gmail.com>
 <20200110075859.3edfae3a@collabora.com>
 <CAJsYDVK4RtX92O3M+EOsZa5qS4TxE0OVaEq=KOnAuP6DEHvw2Q@mail.gmail.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_000428_009032_AAB55F67 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 open list <linux-kernel@vger.kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 15:34:28 +0800
Chuanhong Guo <gch981213@gmail.com> wrote:

> Hi!
> 
> On Fri, Jan 10, 2020 at 2:59 PM Boris Brezillon
> <boris.brezillon@collabora.com> wrote:
> > [...]  
> > > +     ret = spinand_read_id_op(spinand, 1, 0, id);
> > > +     if (ret)
> > > +             return ret;
> > > +     ret = spinand_manufacturer_match(spinand,
> > > +                                      SPINAND_READID_METHOD_OPCODE_ADDR);
> > > +     if (!ret)
> > > +             return 0;
> > > +
> > > +     ret = spinand_read_id_op(spinand, 0, 1, id);  
> >
> > Hm, we should probably do only one of each read_id and iterate over all
> > manufacturers/chips each time instead of doing 3 read_ids per
> > manufacturer.  
> 
> This actually do the former instead of the latter. Maybe the function
> names are a bit
> misleading. spinand_manufacturer_match iterates over all manufacturers
> in one call,
> and spinand_manufacturer_detect is called once in spinand_detect.
> Do you have suggestions on function naming?

Maybe you can just inline the content of this function in
spinand_detect().

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
