Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B3BB9012
	for <lists+linux-mtd@lfdr.de>; Fri, 20 Sep 2019 14:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INjEUsPqB9vJMU1EjPY69gnOk5T4CHvBt2r7y8SHTMI=; b=rcpbL/toRfTBMa
	y+mDi91qw1hdK0yEjnBgHv4rIVbzvfrcPFAALS/7r6a8f9S2mT9sR+/ZvZHvrPefCUoniA9rp7pLs
	D5bC6FQoeua8g//VtilKRnmmUN1gv0xXWgA1c0VquWHg3ovGiyyqTTUaupQpb+bU2yltKgSeen2C6
	dOH11MxmRXx3WcoSEhiNNGPId1AoAQzroDyFt0mb9nLJrLdgJE9PnCJi0VW1QFwv9+d+/RLTJK1xQ
	p9/qjxlIRlL0VSdvq+XwtCE6oSjuwb6zu7xlySjJ0vsEQBhvRawLPCKZ4faEZWquE+mHnhGhnyaqm
	DcFKiKk7VWUshcns8k6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIR8-0007gz-Sn; Fri, 20 Sep 2019 12:54:58 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIR1-0007gR-Gl
 for linux-mtd@lists.infradead.org; Fri, 20 Sep 2019 12:54:52 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iBIQs-0005Yn-1s; Fri, 20 Sep 2019 12:54:42 +0000
Date: Fri, 20 Sep 2019 13:54:42 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Xiaoming Ni <nixiaoming@huawei.com>
Subject: Re: [PATCH] jffs2:freely allocate memory when parameters are invalid
Message-ID: <20190920125442.GA20754@ZenIV.linux.org.uk>
References: <1568962478-126260-1-git-send-email-nixiaoming@huawei.com>
 <20190920114336.GM1131@ZenIV.linux.org.uk>
 <206f8d57-dad9-26c3-6bf6-1d000f5698d4@huawei.com>
 <20190920124532.GN1131@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190920124532.GN1131@ZenIV.linux.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_055451_554490_5F5FCAF6 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: bbrezillon@kernel.org, richard@nod.at, dilinger@queued.net,
 linux-kernel@vger.kernel.org, daniel.santos@pobox.com,
 linux-mtd@lists.infradead.org, houtao1@huawei.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Sep 20, 2019 at 01:45:33PM +0100, Al Viro wrote:
> On Fri, Sep 20, 2019 at 08:21:53PM +0800, Xiaoming Ni wrote:
> > 
> > 
> > On 2019/9/20 19:43, Al Viro wrote:
> > > On Fri, Sep 20, 2019 at 02:54:38PM +0800, Xiaoming Ni wrote:
> > >> Use kzalloc() to allocate memory in jffs2_fill_super().
> > >> Freeing memory when jffs2_parse_options() fails will cause
> > >> use-after-free and double-free in jffs2_kill_sb()
> > > 
> > > ... so we are not freeing it there.  What's the problem?
> > 
> > No code logic issues, no memory leaks
> > 
> > But there is too much code logic between memory allocation and free,
> > which is difficult to understand.
> 
> Er?  An instance of jffs2 superblock might have a related object
> attached to it; it is created in jffs2 superblock constructor and
> freed in destructor.
> 
> > The modified code is easier to understand.
> 
> You are making the cleanup logics harder to follow.

PS: the whole point of ->kill_sb() is that it's always called on
superblock destruction, whether that instance had been fully set
up of failed halfway through.

In particular, anything like foofs_fill_super() *will* be followed
by ->kill_sb().  Always.  Which allows for simpler logics in
failure exits.  And the main thing about those is that they are
always the bitrot hot spots - they are systematically undertested,
so that's the last place where you want something non-trivial.

As for "too much code between"...  Huh?  We fail jffs2_fill_super()
immediately, which has get_tree_mtd() (or mount_mtd() in slightly
earlier kernels) destroy the superblock there and then...

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
