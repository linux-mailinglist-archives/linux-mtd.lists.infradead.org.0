Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF62116497
	for <lists+linux-mtd@lfdr.de>; Mon,  9 Dec 2019 01:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Acs9q6JUx55N+CBQ/BTfD0zy8OJvegShB51zCxirgS8=; b=amnv9gu8tVKPuK
	XtYyvQm6ySN+AeAUFY0a3KraJqRzi0CaGA/DdENgEj94zdDz9iib8Y490O/DYWi3InhvEBF5jizjr
	VlHJY4ovafxpisfjZVSxq3gnC8ekRc8yshZtoVDVkDgbXgJtKLe9mlvScAGgAdY4jjRYBD4V06Eid
	2g7AKwGdbVQN6n/zLvcQyTRfa64pv5kx3UgAOf6vzGv6myKtXapGHkoK+lXVp9/3xGZNZXFLMEXLw
	Lzn3na58a0WrjuKMfBW84+NEElenCANs2oYP4f12rxPe0GG5EtBCg6I1ZQF3qm2eBXB9DmaSQnBK1
	V6OmPzwt2ZuObFRfxC2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie7GE-0005On-SU; Mon, 09 Dec 2019 00:50:50 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie7G4-00042C-5c
 for linux-mtd@lists.infradead.org; Mon, 09 Dec 2019 00:50:42 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ie7Do-0006tf-V9; Mon, 09 Dec 2019 00:48:21 +0000
Date: Mon, 9 Dec 2019 00:48:20 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Subject: Re: [PATCH v2 0/6] Delete timespec64_trunc()
Message-ID: <20191209004820.GZ4203@ZenIV.linux.org.uk>
References: <20191203051945.9440-1-deepa.kernel@gmail.com>
 <CABeXuvpkYQbsvGTuktEAR8ptr478peet3EH=RD0v+nK5o2Wmjg@mail.gmail.com>
 <20191207060201.GN4203@ZenIV.linux.org.uk>
 <CABeXuvrvATrw9QfVpi1s80Duen6jf5sw+pU91yN_0f3N1xWJQQ@mail.gmail.com>
 <20191208030407.GO4203@ZenIV.linux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191208030407.GO4203@ZenIV.linux.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_165040_210507_C014EA0F 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: CIFS <linux-cifs@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Richard Weinberger <richard@nod.at>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mtd <linux-mtd@lists.infradead.org>,
 Steve French <stfrench@microsoft.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 ceph-devel <ceph-devel@vger.kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, Dec 08, 2019 at 03:04:07AM +0000, Al Viro wrote:

> OK...  I've tossed a followup removing the truncation from kernfs;
> the whole series looks reasonably safe, but I don't think it's urgent
> enough to even try getting it merged before -rc1.  So here's what
> I'm going to do: immediately after -rc1 it gets renamed[*] to #imm.timestamp,
> which will be in the never-modified mode, in #for-next from the very
> begining and safe for other trees to pull.

Rebased to -rc1, pushed out as #imm.timestamp, included into #for-next.
Never-modified mode...

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
