Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAFC5A44A
	for <lists+linux-mtd@lfdr.de>; Fri, 28 Jun 2019 20:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wk9tHpmTyZwBG/CIFSC0nZ5OxbXlJW9K7868r8qmspA=; b=IyDOGhIRm2rJF6
	flcrwUW+mMKtXXP5uTgFqemZ0WQrAF1ZGrjtjl/R12otMU7sAW7zoBdR3Arcqrx5agzv7xosV7Yb/
	XGZa7IMv3NtleArGAORm4xjq8EvrO+kpU9hhhi7ONY87IvJ4jYaxzhV93C/KKLwM484gabArTujNv
	ELElabA/0mhTlaS5Rsz1DEL9Gn6Y69ztWvo71Cc1KLLOvgMRfKGWzJzSpPs8eej7+NSLMbUWs4Om/
	P1UAdmOPTUJV6EU9Y6KEg4EK7Zbk439tJoMSvQZtZkCWaL6gTLOFpCylXOJZ1EGmrjZ+WkFOx7zjN
	/3qmdGmv2PmrvzJzmmjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvlq-0004fo-CP; Fri, 28 Jun 2019 18:38:50 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvjg-0002ql-V5
 for linux-mtd@lists.infradead.org; Fri, 28 Jun 2019 18:36:45 +0000
X-Originating-IP: 81.185.164.234
Received: from localhost.localdomain (234.164.185.81.rev.sfr.net
 [81.185.164.234]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id E819E40002;
 Fri, 28 Jun 2019 18:36:13 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Christophe Kerello <christophe.kerello@st.com>, miquel.raynal@bootlin.com,
 richard@nod.at, dwmw2@infradead.org, computersforpeace@gmail.com,
 marek.vasut@gmail.com, vigneshr@ti.com
Subject: Re: [PATCH v2] mtd: rawnand: stm32_fmc2: increase DMA completion
 timeouts
Date: Fri, 28 Jun 2019 20:36:10 +0200
Message-Id: <20190628183610.18729-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <1561713486-26597-1-git-send-email-christophe.kerello@st.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: bce9437a0a48dd5e19490f56e1cdc39a9be5563c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_113637_404608_DDFC69DE 
X-CRM114-Status: UNSURE (   6.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: linux-stm32@st-md-mailman.stormreply.com,
 Amelie Delaunay <amelie.delaunay@st.com>, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, bbrezillon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2019-06-28 at 09:18:06 UTC, Christophe Kerello wrote:
> From: Amelie Delaunay <amelie.delaunay@st.com>
> 
> When the system is overloaded, DMA data transfer completion occurs after
> 100ms. Increase the timeouts to let it the time to complete.
> 
> Signed-off-by: Amelie Delaunay <amelie.delaunay@st.com>
> Signed-off-by: Christophe Kerello <christophe.kerello@st.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
