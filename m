Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD1A1DDBFC
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 02:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	References:In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wzNjIwGChOZS+Pu1I92S/E8I9kyELVQ+IM5XPBaUmTo=; b=T4PZzWlXs9ytllX1DqHUoy+8bx
	ogXAFV0fuGuP6W0ujDPZ+47e2ebkbzvRv4X9y9Dpl3foF8phP9FbgFy91TBwON7BmUmt/fNDVC5fP
	d92dYavzI8RnX2m2qWai8vGUjNY0xovCGOBQBoeL0yYbCYy77cCLShLTfl3SQfe1SO1apgBKFRC5L
	jK+huxFl6nPeptC264W3Y6GuOqkbAvH990fMsG+pM0b+Hw7di9zTvVfV5LA2fyJd6W3xBgUtztopp
	eBDJImZ2411Z8xoZkYeCQBTSsei46LTx8PcfM65XuD5uYIB3/uwE8uSqYKVnBqxe6C4jipIaww9pZ
	p1uGjmww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbvLJ-0001oi-QI; Fri, 22 May 2020 00:15:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbvIm-0007zP-8U
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 00:12:41 +0000
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD81C2078B;
 Fri, 22 May 2020 00:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590106359;
 bh=Bd+J7l4ozEAKcpKr3XQqKk9VsnlMCH0rOTdDOqvscmQ=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=FzA4RfVN/fZ63DkRQg5RZsBNqXUEfmXLheKcRZ6y5gmSmJj8Gc2Rv1Vn2rtbEKFE2
 fk4lwIWCZxLmVBLB9bPjqavIg4IXMBJKzk3B4gq7xeqorBabAAUMHJ7u2ZzSgEwHvg
 +qfCOdCAu/4wm+6Xb5O0yF2Rp9WzraJv9zCD1HIw=
Date: Fri, 22 May 2020 00:12:38 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
To: <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH v2 40/62] mtd: rawnand: pasemi: Fix the probe error path
In-Reply-To: <20200519130035.1883-41-miquel.raynal@bootlin.com>
References: <20200519130035.1883-41-miquel.raynal@bootlin.com>
Message-Id: <20200522001238.BD81C2078B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_171240_447580_9F769FC6 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stable@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: d44154f969a4 ("mtd: nand: Provide nand_cleanup() function to free NAND related resources").

The bot has tested the following trees: v5.6.13, v5.4.41, v4.19.123, v4.14.180, v4.9.223.

v5.6.13: Build OK!
v5.4.41: Build OK!
v4.19.123: Build OK!
v4.14.180: Failed to apply! Possible dependencies:
    Unable to calculate

v4.9.223: Failed to apply! Possible dependencies:
    Unable to calculate


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
