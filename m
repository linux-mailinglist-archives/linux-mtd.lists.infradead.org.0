Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D24513B092
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEpXTrksaeH6MXLAWgKmvS5BcNcIJLKedzI9Gm9bUxM=; b=pGkpVSL74p8OOW
	JD5Va/6INCy2Bs1JXMdCzU0EMBWd8idCdz+jGPbIqXwX104bNSbNqtAJ1vFxaPiJUMgXwIEHQUyIr
	OTmxXgBMT6aPVEjywgQq6GsL8eVdgPUqDecOC54Gsv9c1dSFwcqGNBZdY7t3OzmlxFLFXvRnUgPLu
	cor1Q+B6wiV7SG9/qPBrWjXO/u4nCHvtAFur4KnBh2Bc8cgTpVUr33tPfaSxyrPvZrdSTB8geH4Ib
	SSgzzYD6xVMVP4IQTbmCEq6nF6iwpgyrZqhF6hcCV2LC8VVlXK/1n/M0Aa8T+r7hDU9cbfQ4OVTj1
	Pjv0KJw4BxQAc6rhZXOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPho-00047P-NX; Tue, 14 Jan 2020 17:10:16 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPfR-00020U-S2
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:07:58 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 7EDB420013;
 Tue, 14 Jan 2020 17:07:46 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v3] mtd: onenand_base: Adjust indentation in
 onenand_read_ops_nolock
Date: Tue, 14 Jan 2020 18:07:27 +0100
Message-Id: <20200114170727.2044-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191209214422.53661-1-natechancellor@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 9ec8046363ac95bd10c1f96865f139c0e76902fd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090751_111153_E04D9F11 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Richard Weinberger <richard@nod.at>, clang-built-linux@googlegroups.com,
 linux-mtd@lists.infradead.org, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 2019-12-09 at 21:44:23 UTC, Nathan Chancellor wrote:
> Clang warns:
> 
> ../drivers/mtd/nand/onenand/onenand_base.c:1269:3: warning: misleading
> indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         while (!ret) {
>         ^
> ../drivers/mtd/nand/onenand/onenand_base.c:1266:2: note: previous
> statement is here
>         if (column + thislen > writesize)
>         ^
> 1 warning generated.
> 
> This warning occurs because there is a space before the tab of the while
> loop. There are spaces at the beginning of a lot of the lines in this
> block, remove them so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
> 
> Fixes: a8de85d55700 ("[MTD] OneNAND: Implement read-while-load")
> Link: https://github.com/ClangBuiltLinux/linux/issues/794
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
