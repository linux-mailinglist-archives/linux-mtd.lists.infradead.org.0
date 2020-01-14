Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAE213B08E
	for <lists+linux-mtd@lfdr.de>; Tue, 14 Jan 2020 18:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOCpa8tjPBxv4gnOHqnXXpNobEtoUrNVaNsVn8bxVN4=; b=nuOIB/W1V1GN29
	hz96nO+M2w2dk4QrOvukySlWcRSon3VYKRT3ipcDDVvFinQihSlMpLqbAMPcX3T2YH73azrNncAoH
	FQ/FFSauqKJwYUST5Ye9KdwDsx53imv4cvmpZIU9gKOW6TfNAOYZnyqJ7NmngkyBGC5Ej2MSwuo9i
	bqCS/bO2L5NoWPXAfkqRjYyj+FJHbX/NRIg0zMCH96PJtcUNLNae5h+kPQkAqT0gspO0SNNffIPpc
	LOufidm8VLF3G6rdlP7C612jY9yUa8G67c3wbZAWBEOXFDOqM8JSZfs5bAHp4++bIDgOC7Px8qAXc
	mGw7aBjFm7Xt5zmCpHAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irPh4-0003U7-Bu; Tue, 14 Jan 2020 17:09:30 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irPel-0001SI-S4
 for linux-mtd@lists.infradead.org; Tue, 14 Jan 2020 17:07:15 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13.lan (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 21B01E000B;
 Tue, 14 Jan 2020 17:07:02 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-mtd@lists.infradead.org
Subject: Re: [PATCH v3 1/5] mtd: rawnand: denali_dt: error out if platform has
 no associated data
Date: Tue, 14 Jan 2020 18:06:52 +0100
Message-Id: <20200114170652.1913-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191220113155.28177-2-yamada.masahiro@socionext.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: bc3cbbe1ce92aa30a33798e0e816663cfddb805e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_090708_063372_B4115080 
X-CRM114-Status: UNSURE (   5.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
 Ley Foon Tan <ley.foon.tan@intel.com>, Dinh Nguyen <dinguyen@kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2019-12-20 at 11:31:51 UTC, Masahiro Yamada wrote:
> denali->ecc_caps is a mandatory parameter. If it were left unset,
> nand_ecc_choose_conf() would end up with NULL pointer access.
> 
> So, every compatible must be associated with proper denali_dt_data.
> If of_device_get_match_data() returns NULL, let it fail immediately.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
