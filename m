Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63AE1BB8E9
	for <lists+linux-mtd@lfdr.de>; Tue, 28 Apr 2020 10:36:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XbiO340MHk2J65FYNKXfdQXAnlF8whAzpZe+XOq3cQQ=; b=Zcog877w5tc6PB
	Ca/to3Nl/QkdHnCpwvWnoEz6/zvKF0likA5GcXYSm93Jjs5IfrUNR6C+SbxeCDaqaCPzHvZChcfCK
	2xXcHuyxg16+1HmOnLjEBYGA7nci/BMMs80MgaWPjODxXwzKu6sZOZuOK08Debw7M3dO8jG6bFJTn
	17YrfDRKZaXAI9TCLzcFwIcqDHeP0cxN0k/nrawwNvyVl0hmJK2uC0hN5QC3JTcMzPLgiQFtPakCS
	0Xpfp5IdJD773hnVh16Gd6pI5gNrMLYs4iqDlr5lB3JrpmQc0z+wKgVAagmPbqLIsVUL13Ibwi31w
	jhSl3KTjvl+K6wG3uKsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLiw-0000Jr-Tt; Tue, 28 Apr 2020 08:36:14 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLil-0000Io-GH
 for linux-mtd@lists.infradead.org; Tue, 28 Apr 2020 08:36:04 +0000
X-Originating-IP: 42.109.192.12
Received: from localhost (unknown [42.109.192.12])
 (Authenticated sender: me@yadavpratyush.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 7009F1BF205;
 Tue, 28 Apr 2020 08:35:54 +0000 (UTC)
Date: Tue, 28 Apr 2020 14:05:43 +0530
From: Pratyush Yadav <me@yadavpratyush.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v2 0/5] mtd: spi-nor: Add support for Octal 8D-8D-8D mode
Message-ID: <20200428083543.fdppjts5cgmyqu52@yadavpratyush.com>
References: <1587451187-6889-1-git-send-email-masonccyang@mxic.com.tw>
 <20200421092328.129308f6@collabora.com>
 <20200427175536.2mmei2fy6f7bg6jm@yadavpratyush.com>
 <OF18214CA5.6A9B2B30-ON48258558.001D894C-48258558.002249E0@mxic.com.tw>
 <20200428083423.4fafd187@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428083423.4fafd187@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_013603_669811_0B62A7CA 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: vigneshr@ti.com, tudor.ambarus@microchip.com, juliensu@mxic.com.tw,
 richard@nod.at, linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 broonie@kernel.org, linux-mtd@lists.infradead.org, miquel.raynal@bootlin.com,
 masonccyang@mxic.com.tw, Pratyush Yadav <p.yadav@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On 28/04/20 08:34AM, Boris Brezillon wrote:
> On Tue, 28 Apr 2020 14:14:31 +0800
> masonccyang@mxic.com.tw wrote:
> > 
> > I quickly went through your patches but can't reply them in each 
> > your patches.
> 
> Why?!! Aren't you registered to the MTD mailing list? Sorry but having
> reviews outside of the original thread is far from ideal. Please find a
> way to reply to the original patchset.

Yes, inline replies to the original patchset would be nice.

FWIW, I'm not subscribed to the list either. I use the NNTP server at 
nntp.lore.kernel.org, and the newsgroup org.infradead.lists.linux-mtd to 
read and reply to the list. Most popular email clients should have NNTP 
support. I use neomutt, but AFAIK, Thunderbird and gnus also have NNTP 
support.

-- 
Regards,
Pratyush Yadav

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
