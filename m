Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599011ADE30
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Apr 2020 15:22:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkWXEgEISUrkpFmaVq8g2jsfURA3mo1pHyhKs4FarCY=; b=fFzKK5uqOTe9fc
	yP93Sy3kegvdh/kCwQ4WSuP45FskcCSoMTaXN7cBkcUjmKYextQBUhemQN3nfYm/4CmTaK3tq+39J
	GCjMczOTu4QXuPagyOONBZnYhExkwpIQiuRyFa9BDP0U4rq2icT149i7K03emPyPwhiKFJDpNAPHP
	iymk2WLcYHY5jtAFkZ4oQ4zTtZzg2qe/OKBNy4hQmF0gTW1BwbYHglcDI9coOUHSnTpLhCr8zdlD8
	2UR2ZWcjOK8tcadx0BHYaaxBBBUc3C25KAl7SKxXCVH8aArzV21HovMsf16DKFI+RDv4n5xo4Am3A
	Vx1I8uXGqsLPLXklf7fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPQxA-0004ua-MX; Fri, 17 Apr 2020 13:22:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPQwv-0004qX-2B
 for linux-mtd@lists.infradead.org; Fri, 17 Apr 2020 13:22:30 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDB5F2087E;
 Fri, 17 Apr 2020 13:22:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587129748;
 bh=fDlDCrBXL1Hrgj28P+I0Wp6MAPvYyysu+6jvwshAplE=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=a0j5IILXh6EbQWLLTR5nivO1pcKu599TldGW4k0lPFG1EASWMZbIvIGD52H/8L+x5
 QhWmiHOw2lUzMsgV+G6WSu7I/5Ctq+8Lg0uZhMHOfeTSolY2oDUFaiwyW42gupM+LG
 m6IKkm1I+BLWZUM51MmaLQ1zgaSiP07cgmNyBTWk=
Date: Fri, 17 Apr 2020 14:22:26 +0100
From: Mark Brown <broonie@kernel.org>
To: Yicong Yang <yangyicong@hisilicon.com>, linux-spi@vger.kernel.org
In-Reply-To: <1587109707-23597-1-git-send-email-yangyicong@hisilicon.com>
References: <1587109707-23597-1-git-send-email-yangyicong@hisilicon.com>
Subject: Re: [PATCH] spi: hisi-sfc-v3xx: add error check after per operation
Message-Id: <158712973997.35869.11831394586423684759.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_062229_132944_F6298816 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: john.garry@huawei.com, linux-mtd@lists.infradead.org, linuxarm@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 15:48:27 +0800, Yicong Yang wrote:
> The controller may receive instructions of accessing protected address,
> or may perform failed page program. These operations will not succeed
> and the controller will receive interrupts when such failure occur.
> Previously we don't check the interrupts and return 0 even if such
> operation fails.
> 
> Check the interrupts after per command and inform the user
> if there is an error.
> 
> [...]

Applied, thanks!

[1/1] spi: hisi-sfc-v3xx: add error check after per operation
      commit: 59fc9ad5cb108bce18043281c7cf67f2b425d55d

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
