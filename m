Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B53143591
	for <lists+linux-mtd@lfdr.de>; Thu, 13 Jun 2019 13:38:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4cI0sVLX4tpudXcLW4UszEj24KBwNxUV1kU1Y47rX0=; b=kJNjN7syipfRcF
	+Hcarq1NAqKxsraML1zYeO2IA2kuvJw/iMUr2vuEksgkYVwqyG9YqSYFDYR/rXeITOK05PWDj7fc7
	gqc0010ektksri7pybx2AXSC1eo1VqWCvwa9RdoZPHLMZV/5YEhkOD25EqzsxHgj8eyYif9fSmN8l
	gAZ2R+NyVilcMxA2mBYmWfErM9njbAvbd/vETZJ4w0nxfwTxJhJldvfYz/PEl2ZBS9EJ5bFkalpM4
	XxWKRiBx9P7GS/MdmgHVzOT5Tn0nq5Y1hxY92zGTQ7jUzTkNVG8ldaBUj4+N3qALOixVXgtdaxabi
	ZkYgUdf+wwD/R7ZsY7tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbO3h-0006qY-F5; Thu, 13 Jun 2019 11:38:21 +0000
Received: from mail.intenta.de ([178.249.25.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbO3T-0006pm-MQ
 for linux-mtd@lists.infradead.org; Thu, 13 Jun 2019 11:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=intenta.de;
 s=dkim1; 
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:CC:To:From:Date;
 bh=QQPcew8OO4uWb22KfzOtVt5mqOvY+NBIVgehiNO+p5g=; 
 b=MeM9nY7f3cZ90lL4rVQxYVufUJWVijCGsM8VNa570Vmemc9Y+dPh2CCk5QfPO4GgEQUkL4OOlgOR4WhNgsmBoKs2WpSYk3Kg5aXldYB6IXl7JmJyoCOrpFeuO25V4zrTlJCrDErXf//tD2uVv+ns67OSh4os0L8yg52I4x1CGatCTdyIUC7XBlk0KBce244jX/LJEfkIb3Y+6aEnWG0PJBoDtWLmtDZDhY4Z5g4BCxHFamAOkk/A8HFC8oIWvFrfWAICoZf0GmntVxKisUifc3lPHOQV3USodD50SuOMP3ZkMXbNipcN+pxWQTz5pOJt2kmnNMJxxVROtECIevg8xg==;
X-CTCH-RefID: str=0001.0A0C0201.5D023595.00A2, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
Date: Thu, 13 Jun 2019 13:37:57 +0200
From: Helmut Grohne <helmut.grohne@intenta.de>
To: Naga Sureshkumar Relli <nagasure@xilinx.com>
Subject: Re: [LINUX PATCH v14] mtd: rawnand: pl353: Add basic driver for arm
 pl353 smc nand interface
Message-ID: <20190613113756.53nzb6o2vuurep2a@laureti-dev>
References: <1555326613-26739-1-git-send-email-naga.sureshkumar.relli@xilinx.com>
 <20190425112338.dipgmqqfuj45gx6s@laureti-dev>
 <DM6PR02MB4779EE37978EC0E6475C55D7AF390@DM6PR02MB4779.namprd02.prod.outlook.com>
 <20190429121804.4jzspv4goehwdpez@laureti-dev>
 <BYAPR02MB4776C0226F9A9F55C9A6DE44AFEF0@BYAPR02MB4776.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR02MB4776C0226F9A9F55C9A6DE44AFEF0@BYAPR02MB4776.namprd02.prod.outlook.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-ClientProxiedBy: ICSMA002.intenta.de (10.10.16.48) To ICSMA002.intenta.de
 (10.10.16.48)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_043808_399137_D43F84C2 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.249.25.132 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "nagasureshkumarrelli@gmail.com" <nagasureshkumarrelli@gmail.com>,
 Michal Simek <michals@xilinx.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Naga,

On Thu, Jun 13, 2019 at 10:18:00AM +0000, Naga Sureshkumar Relli wrote:
> I spent much of time to address all your comments.
> All are addressed and tested. except the above one(address offset calculation)
> I didn't see any issue with the address calculation.

Let me first point out that this comment was not trying to imply a bug.
I was trying to understand the code by comparing it to similar code and
that turned up an inconsistency, which can be intentional or a bug in
either of the sides being compared.

> for (i = 0; i < min_t(unsigned int, 4, naddrs); i++) {
> 	nfc_op->addrs |= instr->ctx.addr.addrs[i] <<
> 			 (8 * i);
> }
> If you go through the nand_base.c, there nand_fill_column_cycles() API, fills the first two or one address cycle
> Based on bus width and page size.
> That means, addrs[0]/[1] will be updated here.

The problem at hand is that `addrs` is imprecise. In this code, there
are `instr->ctx.addr.addrs`, `addrs`, and `nfc_op->addrs`. All of them
are different. My original remark was targeting the possible confusion
of these different `addrs`.

> And the page is updated to the next offsets.
> In the similar way we have to extract the offsets in driver.
> So the first four address bytes are stored using the above for() loop and if the
> Address cycles are more than 4, then store the remaining offsets as well.
> 
> I just compared the offsets that are updated in driver with the offsets(page and column) that the frame work(nand_base.c) is sending, and the offsets are same.
> I have also checked these offsets with older driver(not exec_op() implemented) and both are matching.
> 
> So I didn't see any issue with this addrs calculation.
> As per the statement mentioned by you, this driver consumes addr[0], addr[1], addr[2], addr[3] and
> If more address cycles needed, then addr[4] and addr[5]. This is correct.

Again, the lack of precision makes it difficult to discuss the matter.
You refer to `addr`, but there is no `addr`. I assume that you meant
`addrs` here. Based on that assumption, your second last statement is
wrong. The driver consumes `addrs[0]|addrs[-offset]` rather than
`addrs[0]` as the first byte.  Then it proceeds consuming
`addrs[1-offset]` instead of `addrs[1]`, `addrs[2-offset]` instead of
`addrs[2]`, and `addrs[3-offset]` instead of `addrs[3]`. Finally it
consumes `addrs[4]` and `addrs[5]` if more cycles are needed.

I would not have commented the code if it were actually using `addrs[0]`
through `addrs[5]`. Your description looks reasonable to me, but it
doesn't match the code.

I'm looking forward to the next version of the patch.

Helmut

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
