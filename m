Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D1E918073E
	for <lists+linux-mtd@lfdr.de>; Tue, 10 Mar 2020 19:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErPRJewM9X2KfL8zuUu6EqEueR8oeCybUnw7y7Rm8qI=; b=LUWkoR32DE7No4
	RvS+1BzsCShxv4CP/7fG3a38x9PRe4kkIqnh/zRmWZR4DpOUNz1HNVpl9vvKgm9WDtOVSxyvwmlJ0
	DyOfc4MDqM0n/IkuH7HtRsscTywakfbo2m1bQNGkGuDJhXMGZ6WE7RaT0stXqhvrAfVnXONs/M2II
	N8gHe4RchpEiKYSvjeAMlUUUS3/gG0RXGgifd8MaA4JmyztRDPf7eZdk4bT9+liyrHkOFalcpBNfm
	D2TA+WZTyQpNwI6Fr1RovL6mr4nUlHEHGaJkSuXfbkYrQhGJvGQwVYmyteM4S7uX+QXLWyRE/1cBS
	H3h5J9MmClzSrEh3WF2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjty-0005IZ-7d; Tue, 10 Mar 2020 18:46:50 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjhM-0006T5-LP
 for linux-mtd@lists.infradead.org; Tue, 10 Mar 2020 18:33:50 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 685B520004;
 Tue, 10 Mar 2020 18:33:46 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>, miquel.raynal@bootlin.com,
 vigneshr@ti.com
Subject: Re: [PATCH v3] mtd: spinand: toshiba: Add comment about Kioxia ID
Date: Tue, 10 Mar 2020 19:33:45 +0100
Message-Id: <20200310183345.20023-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1581051561-7302-1-git-send-email-ytc-mb-yfuruyama7@kioxia.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: a91f8170df832967dc75d5bd594c496999882e22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113348_839722_66FC8481 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, 2020-02-07 at 04:59:21 UTC, Yoshio Furuyama wrote:
> Add a comment above NAND_MFR_TOSHIBA and SPINAND_MFR_TOSHIBA definitions
> that Toshiba and Kioxia ID are the same.
> Since its independence from Toshiba Group, Toshiba memory Co has become
> Kioxia Co.
> 
> Signed-off-by: Yoshio Furuyama <ytc-mb-yfuruyama7@kioxia.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
