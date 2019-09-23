Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A8EBAE58
	for <lists+linux-mtd@lfdr.de>; Mon, 23 Sep 2019 09:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NIrcDZTbwWvbUgSD6hI3d44K16N6teAXfgwX0eZnN/k=; b=DuSXQGoxZzcUOh
	wWvwTcLAc+MzSvZKikz1PpW/VBdGbI1b2FkypvLaFd26cSc1918VFigW9TGTVmtqEPpmqwR/wn15I
	a7yP9TaK+KiFrTfHnFi6j4hr/NXkBHnHKR4s9igDobRKLnNaXBa2uteXQajRXBqi01npHWPq8deVZ
	OYeOsELVVyV/InTkIY/POjfNOwz68G3YTG4Zh85IosM9k8oivy2pPIdy1TK3EtthfWAAGG7qSmQZC
	bE5IlFsFDbUo4+O0NxmMnoG1VGw1Pk/tdhFoKcdobKwqsVoiEKVuGTYeDYPKtgfBohkJXoWFvJmxo
	Fh7x2qhCyM+LA11FFr4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCIZ8-0001T9-S8; Mon, 23 Sep 2019 07:15:22 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCIXo-0001Ez-L6
 for linux-mtd@lists.infradead.org; Mon, 23 Sep 2019 07:14:09 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 58F9522254;
 Mon, 23 Sep 2019 03:13:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Mon, 23 Sep 2019 03:13:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=RkRK996cL4srhgRQFGfrcbxHAR9
 z0ZXdF2rqtRnas6U=; b=BGJ3zFCpk2ml8YWsvqD6Hr6WVoecaEiJVphIyq1t6eG
 Fvya10WixfI7nxfGx2dOO9CZmnCJImT3MmQUxjNa8TyubWLq3LGZNmclyhgih5kn
 n1f2awyulS0bKvGh6FB+VTenLxLF32tSXtmqEfjuhPVsTcphGeK50XH6JBnyMwu+
 7ir/rcaxSsqcI2gwUNc6u5u93KdPv1ve+87UthLp/z/x2sbXouAXls9Nm5wvcYgA
 ArJ85iFHpsPGTSARv/TqkrK+ahhLLC+XD7Y+JkrjF0dRKUzu3eFErxLca6dtpSG1
 nwE0eFUFARUF8GBUrah9GFE6otmaPvHTkgKqbPiDMPQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=RkRK99
 6cL4srhgRQFGfrcbxHAR9z0ZXdF2rqtRnas6U=; b=ec08mQlaZuCVA1ec3MUX2Y
 sataQ6A14/dntZLgTEJBjCJG8x3vk8khw8/8vFcnQxLQPrVB1b90Y1emDjHD6Gvo
 cGRLoFnWZ3PlVhwufvakf6CCUL/HDzepcRtJjmF5W+rItKgUK2uYHednqp8khW+S
 dZLUFheKrocyTyvIVYQWuMAEEbYMCTm/7jaA7TsjWHzkJQSNAuBE6XcgczMIL/Pz
 e0IG4UqvuoWq0op9WFGwQ4TbW9aRYMpPzroFRwV3VLHTgXG8m51fbhMsv10P0zFc
 Jva8lSVkTMa7WiJGLl9IfcDHg3J9MJmuyJc+S6Oj63LAGAWi+fojk4A7qP/mceGg
 ==
X-ME-Sender: <xms:rHCIXbvy0xUaAgNCiDq4Et8L8tP_kN1HXHr_3mbjTK97co_vOZz54w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdejgdduvddtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
 ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekfedrkeeirdekledrud
 dtjeenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhmnecu
 vehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:rHCIXWuUp0H43keclEzz19i_R_vT1Avwwy4uh68uorOHRgs1Ud89Qg>
 <xmx:rHCIXdv_mh2cjeKXFTO3mDnvBQwt6rXuFv-pWIsCSe44x89sPiX5og>
 <xmx:rHCIXR3RAMMi4IljKXhgb5wiUrx4bum9zbqWOFqtXML_NB4UZRNSPw>
 <xmx:rXCIXUNKOcE-3TQKB2DE27A1lWJCejGoSGUIbl_Rqf2esH6BHuN55w>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 by mail.messagingengine.com (Postfix) with ESMTPA id 020AE80059;
 Mon, 23 Sep 2019 03:13:47 -0400 (EDT)
Date: Mon, 23 Sep 2019 09:13:46 +0200
From: Greg KH <greg@kroah.com>
To: Tokunori Ikegami <ikegami.t@gmail.com>
Subject: Re: [PATCH for 5.2.y] mtd: cfi_cmdset_0002: Use chip_good() to retry
 in do_write_oneword()
Message-ID: <20190923071346.GD2746429@kroah.com>
References: <20190923023251.20180-1-ikegami.t@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923023251.20180-1-ikegami.t@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_001402_853941_9B6C4FCE 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 stable@vger.kernel.org, Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linux-mtd@lists.infradead.org, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 11:32:51AM +0900, Tokunori Ikegami wrote:
> As reported by the OpenWRT team, write requests sometimes fail on some
> platforms.
> Currently to check the state chip_ready() is used correctly as described by
> the flash memory S29GL256P11TFI01 datasheet.
> Also chip_good() is used to check if the write is succeeded and it was
> implemented by the commit fb4a90bfcd6d8 ("[MTD] CFI-0002 - Improve error
> checking").
> But actually the write failure is caused on some platforms and also it can
> be fixed by using chip_good() to check the state and retry instead.
> Also it seems that it is caused after repeated about 1,000 times to retry
> the write one word with the reset command.
> By using chip_good() to check the state to be done it can be reduced the
> retry with reset.
> It is depended on the actual flash chip behavior so the root cause is
> unknown.
> 
> Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
> Cc: Joakim Tjernlund <Joakim.Tjernlund@infinera.com>
> Cc: linux-mtd@lists.infradead.org
> Cc: stable@vger.kernel.org
> Reported-by: Fabio Bettoni <fbettoni@gmail.com>
> Signed-off-by: Felix Fietkau <nbd@nbd.name>
> Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
> Signed-off-by: Tokunori Ikegami <ikegami.t@gmail.com>
> [vigneshr@ti.com: Fix a checkpatch warning]
> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
> ---
>  drivers/mtd/chips/cfi_cmdset_0002.c | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)

What is the git commit id of this patch in Linus's tree?

thanks,

greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
