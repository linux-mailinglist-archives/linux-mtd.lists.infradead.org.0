Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5419A5513F
	for <lists+linux-mtd@lfdr.de>; Tue, 25 Jun 2019 16:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Px/h9DDtupy3GCZgF1t7qSdZVSI7L7122gn6Yt8tmN8=; b=YxKc67pmcBFUkj
	4MZ44NBOjmY+3EofubY7RuAPyGKWQ09amrS1rmQpOsdx5ClX4T3IwGvUL68T3RWmSrSvXSDzNDxUu
	keLkrXLgeC4zCPTH7Dknigz78ucS58tJI8GQFt8cNVbRrk76266jwsPg0j2anqh9PdNRGiVPgKQhn
	GSoXvQTWArIEvFjRsxqGh9Y87KD7/zPIA2IxtxAyKivKgHQ+hG1oKt7oQslnOsXm+nO1W+UZQ9d0g
	1t8pFESe7fDAOMN5xx3OoEbwcHtmL4lRLAXk+QRw6PdpsBuK+GF4wWCBMS9p5e+RsyaSW4cRdKwfA
	269aaIGWyN7PaiI/N1vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmAq-00038o-Fu; Tue, 25 Jun 2019 14:11:52 +0000
Received: from mail.intenta.de ([178.249.25.132])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmAc-00030J-Ax
 for linux-mtd@lists.infradead.org; Tue, 25 Jun 2019 14:11:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=intenta.de;
 s=dkim1; 
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:CC:To:From:Date;
 bh=mJlPfSkpI779CY+9JAH0jj86uoiwu0wyCkk8KI2WfiE=; 
 b=d0q2bEjQJE2TygXNNfiz+huBzdmhBgB0yiW9nfIfG40l6rOBViCdcRXObmtvNQDPbKQxSz7UnLao3itC18ElskcAtXS4TutpTk8+sOOdoBSlMejuk0zfcX2TdlcwydFh0WajpCPbxZSduFaZ5YRA744AGHPAz6j+KsjFwMWXPDRwubATJd8bIWc6xm5NTNuYpCQEKuLrZhqXBryUzzGakL1WMYigxEiIeWPZDoPLp0ga4PCd2dRCBMHhX8CkVUDnC05EcH9B1OyjlE6tF9TZv7R5kfjwPeSAiXGR0ue8aQ1ZBd5ztWFF6NoPQ/0HrU0mmbj64EVtdpKZJDeQ9JSE9A==;
X-CTCH-RefID: str=0001.0A0C020D.5D122B8E.0089, ss=1, re=0.000, recu=0.000,
 reip=0.000, cl=1, cld=1, fgs=0
Date: Tue, 25 Jun 2019 16:11:26 +0200
From: Helmut Grohne <helmut.grohne@intenta.de>
To: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: Re: [LINUX PATCH v17 2/2] mtd: rawnand: pl353: Add basic driver for
 arm pl353 smc nand interface
Message-ID: <20190625141126.ggmxjcmdh76lguds@laureti-dev>
References: <20190625044630.31717-1-naga.sureshkumar.relli@xilinx.com>
 <20190625044630.31717-2-naga.sureshkumar.relli@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625044630.31717-2-naga.sureshkumar.relli@xilinx.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-ClientProxiedBy: ICSMA002.intenta.de (10.10.16.48) To ICSMA002.intenta.de
 (10.10.16.48)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_071138_993376_CE6D269F 
X-CRM114-Status: UNSURE (   6.23  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "vigneshr@ti.com" <vigneshr@ti.com>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 "yamada.masahiro@socionext.com" <yamada.masahiro@socionext.com>,
 "richard@nod.at" <richard@nod.at>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marek.vasut@gmail.com" <marek.vasut@gmail.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "miquel.raynal@bootlin.com" <miquel.raynal@bootlin.com>,
 "computersforpeace@gmail.com" <computersforpeace@gmail.com>,
 "dwmw2@infradead.org" <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Thank you for the quick update.

On Tue, Jun 25, 2019 at 06:46:30AM +0200, Naga Sureshkumar Relli wrote:
> -> Tested Micron MT29F2G08ABAEAWP (On-die capable) and AMD/Spansion S34ML01G1.

I tested the v17 series with the MT29F2G08ABAEAWP. I can now mount
existing jffs2 volumes without issues.

When running nandtest on a 64MB area, I no longer see lots of
consecutive errors. However I see few (4-8) single byte errors for
random locations on about half the runs. In comparison, I couldn't
reproduce these on the older driver on v4.14.

When writing random 1MB files on a fresh jffs2 filesystem and reading
them back after umounting and mounting the filesystem, I got one faulty
file in 50 attempts.

So this driver mostly works for me, but I suspect that something
(possibly the tested hardware) doesn't fully work yet. To say more, I'll
need long term testing results. In the mean time, I'm in favour of
merging the driver.

Helmut

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
