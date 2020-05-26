Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCB21CE58B
	for <lists+linux-mtd@lfdr.de>; Mon, 11 May 2020 22:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yth86nd1uREavUgP0yRAnaUNV1WNj6i/nVF/Cuo9jCc=; b=qpx+mSLl+Cw4eD
	Owf9Wyr5qEoUazToI3brQ9nCTIBMtVpamppbrRJ4usdpLH+9a6uwvQQ+Yy5ySrRfZzSzmGKTvi0Qo
	IP7vnyuyO7farRqXq09kApNP7dMrIxIKSqvBAa+0r1sRqO4JxBt6vUIeYyJjf7Ywenmf9F3/Zb6GH
	TkYAYnNul88v7uoAwfh+Tnjb+Na8yx0ozdeFB2l7KttEMzybuB5lw9hs86WCFfJzOIfvyAtweW+Uu
	ahxwdvo5XoiE6xbYf0+t64olbQRGH5fkky0pbYXaV8D3NH91Rcedpg8oUT0bjNLbRQQTfNbR/dXzh
	4dkznzKZM49CQVqsCy8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYF3N-0000kS-6d; Mon, 11 May 2020 20:29:33 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYF36-0000di-9F
 for linux-mtd@lists.infradead.org; Mon, 11 May 2020 20:29:18 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7E434240008;
 Mon, 11 May 2020 20:29:10 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Christophe Kerello <christophe.kerello@st.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org, mark.rutland@arm.com,
 gregkh@linuxfoundation.org, boris.brezillon@collabora.com
Subject: Re: [PATCH v4 03/10] mtd: rawnand: stm32_fmc2: use FMC2_TIMEOUT_MS
 for timeouts
Date: Mon, 11 May 2020 22:29:08 +0200
Message-Id: <20200511202908.15112-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1588756279-17289-4-git-send-email-christophe.kerello@st.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 0185d50c5220e772aa90a21c515b0c87660ec4d7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_132916_532723_7669FDF0 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: marex@denx.de, devicetree@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, 2020-05-06 at 09:11:12 UTC, Christophe Kerello wrote:
> This patch removes the constant FMC2_TIMEOUT_US.
> FMC2_TIMEOUT_MS will be used each time that we need to wait (except
> when the timeout value is set by the framework).
> 
> It was seen, during stress tests with the sequencer in an overloaded
> system, that we could be close to 1 second, even if we never met this
> value. To be safe, FMC2_TIMEOUT_MS is set to 5 seconds.
> 
> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
