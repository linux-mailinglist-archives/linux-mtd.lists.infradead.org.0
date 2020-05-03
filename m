Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6316A1C2EDD
	for <lists+linux-mtd@lfdr.de>; Sun,  3 May 2020 21:50:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5o/Kr7fSEWT/sdmhUqFJOT6yFgwEwMQg9HlyccHD3is=; b=o2vvxxiFxdwNsL
	C/oL2bULDYzK+TviaaW5ezhVJMgwkBiii9tVgtcEGQfDfYaFwn8mZ2ZL4gUucsRn3bqFBcH4EkyHw
	sz5o+bm+qBKnCqb7U+NQy4Qc+Vn+hqqZ7J7hQid13No6CfgvKPSwYnaHvAzrfe4KC4Lz0RO1Mfxgj
	+Tl5r++4YjddzGWw/tSoyUu760csurHVd6f0Bt3MsYxu3Fw73CKyadi6yvHLMwSHHaRogssMGWk9T
	UZqNBQOhc47iPLPeQ6QrrEUn6qWnwqWE9D+tUCwZJDJW1KOckNccklobg/tIlqJ1rDNklk/h0D+YV
	qsqUEebep42Y03OtMBUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVKcy-0003Fk-D1; Sun, 03 May 2020 19:50:16 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVKcf-00035L-JH
 for linux-mtd@lists.infradead.org; Sun, 03 May 2020 19:50:01 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 12DEC26C0BD;
 Sun,  3 May 2020 20:49:56 +0100 (BST)
Date: Sun, 3 May 2020 21:49:52 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 13/17] mtd: rawnand: cafe: Add exec_op() support
Message-ID: <20200503214952.1d344937@collabora.com>
In-Reply-To: <20200503175537.GA404453@furthur.local>
References: <20200427082028.394719-14-boris.brezillon@collabora.com>
 <20200502111410.330584-1-lkundrak@v3.sk>
 <20200502151811.328eebb0@collabora.com>
 <20200502191843.GA363829@furthur.local>
 <20200503003456.2ddf6047@collabora.com>
 <20200503060610.GA386731@furthur.local>
 <20200503090449.6823bdd9@collabora.com>
 <20200503092604.56cc7a34@collabora.com>
 <20200503175537.GA404453@furthur.local>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_124957_773524_F6B39020 
X-CRM114-Status: GOOD (  12.33  )
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, richard@nod.at,
 linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, 3 May 2020 19:55:37 +0200
Lubomir Rintel <lkundrak@v3.sk> wrote:

> > > > ...
> > > > 
> > > > I'm happy to test another patch, or add more tracing (I'm not at all
> > > > familiar with NAND flashes or MTD for that matter, so I have little idea
> > > > what to look for).    
> > > 
> > > I pushed a new version with extended traces. That should tell us what
> > > those operations.  
> > 
> > I pushed a new branch [1] containing only the cafe NAND changes (I fear
> > one of my other change in the nand/exec-op-conversion branch generates a
> > lot more operations that we should have).
> > 
> > [1]https://github.com/bbrezillon/linux/tree/nand/cafe-nand-exec-op-debug  
> 
> Seems to work a treat and the log also looks reasonable now:
> https://people.freedesktop.org/~lkundrak/nand-raw-trace3.txt

Perfect, I'll send a v2 soon.

Thanks again for testing.

Boris

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
