Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EA118066F
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 19:32:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WX63XnjDxqTRhnfQytVDRxxOS97INzAA3vCSdVmg/LI=; b=bQFAEQUVT7U4JX
	Pu/kV+wu1buCb7RlWr67/iG7mwzmL98ct+rtzEcXZmNljeZFLPUHDLN81Kb+ehMYJg9vnbDxgp7jW
	JTClljpVFiIxLDjcRGkNIlZv3p4nNgqxCL+MSA/qCNMIAPZ+tLOASrKf3/KZLqW/f6lT16wHaTtKu
	i1vA+Hvea5HzMLvLKUry+wIAU8CoXC+4+lxL6j37HO5jl4UfsKfWSJfHoC0tEpk+a+CD5Wq0/oF9R
	sWwAGdJqSyirumI1r4M2HxA5/46P3dGtH/u68XIlQeXZSNRVSIJobDSRSrBl8AbDP5Paln3I48U3I
	YZ03lls6fhHYq9VUVopw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjfV-0004V1-EN; Tue, 10 Mar 2020 18:31:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjeA-0003RY-EH
 for linux-mtd@bombadil.infradead.org; Tue, 10 Mar 2020 18:30:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=3P81yqEW+Ifcj5TCERENWO5zhpoRWbsy+iCwo3MBMpE=; b=qaWwg55LgB2qQwP3JSpca3D9a/
 fIJoC0h6XHuTmVJhp8LD/E2xVHpAitYZOIVPJLxOzjP6cBDeO3FcbDqigmALJb/scjBkeeAJTdypi
 RTRBrDGjraf/2k8obLXTy+O791ayAie7p0AD17zju/G+iHyDWK/LCqhBEPWRXr5ro2cIBqAOexeQm
 n616AXHFYJgrnr2ObUiizmnh459BcM+ab9nPQRxr7Ycle25MzL/xuXqgIdmLpQLKDwG1Yyz9L9h6Q
 bAIrZYVN0c9yU5YZVtViZP3abKoJaHSK8YDoKmVDbtcXxXgXQKXPK7cJa920MmC2At2AHcqC4R+et
 nItlRAHg==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBje5-00008l-Hz
 for linux-mtd@lists.infradead.org; Tue, 10 Mar 2020 18:30:28 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 726D360009;
 Tue, 10 Mar 2020 18:29:37 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Piotr Sroka <piotrs@cadence.com>
Subject: Re: [PATCH 4/4] mtd: rawnand: cadence: reinit complete before execute
 command
Date: Tue, 10 Mar 2020 19:29:36 +0100
Message-Id: <20200310182936.17670-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1581328530-29966-4-git-send-email-piotrs@cadence.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 335e1ad05264d4ec4727b2832f42be5f299651ff
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_183025_755949_429E1AB7 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.6 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Kazuhiro Kasai <kasai.kazuhiro@socionext.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, 2020-02-10 at 09:55:28 UTC, Piotr Sroka wrote:
> Reinitilaize complete object before executing CDMA command to make sure
> that done flag is ok.
> 
> Signed-off-by: Piotr Sroka <piotrs@cadence.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
