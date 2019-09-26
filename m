Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EA9BF50C
	for <lists+linux-mtd@lfdr.de>; Thu, 26 Sep 2019 16:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkDYXU9Bzosx8KrfvN+AtuuQ54mjUUjVJGdVrEU6hOs=; b=glN2XUoR3drqsi
	c2hwKo6HpfsSMhHn8xT9GhOKAVVlWr38+hzTLigaO8hJI9oIAPjax6tnZ91SCEMojSO8WpyJMoNYN
	07UG0d/RFj7U29uFcyXYj4fg1yUKGoN1SVt+9R7e6TLINygJBOdP1ub7GpzsomiB6oxwkybXaA4bh
	oXBkP7h/k9XWQ6CRwg8PapEJnkjgHGvJfgFSaMXkugUkYNfnLN3k3XVcXKG3mhA/QyBVYR2O3V5yD
	cHyr3qQaS2X6gWOBhSVeGvX1ZjSaeQtu+/SyRAm5qJEGlScg2JoW65FugZhTc1OVs/2W0yrwrl3/x
	S7ilR6tEm3JdhxtbZFTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDUkz-0001n6-Fc; Thu, 26 Sep 2019 14:28:33 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDUko-0001R6-Ay
 for linux-mtd@lists.infradead.org; Thu, 26 Sep 2019 14:28:23 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.2 #3 (Red Hat
 Linux)) id 1iDUik-0002M1-Tn; Thu, 26 Sep 2019 14:26:15 +0000
Date: Thu, 26 Sep 2019 15:26:14 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Subject: Re: [PATCH] jffs2: Fix mounting under new mount API
Message-ID: <20190926142614.GU26530@ZenIV.linux.org.uk>
References: <156950767876.30879.17024491763471689960.stgit@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156950767876.30879.17024491763471689960.stgit@warthog.procyon.org.uk>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_072822_382013_BADF1E42 
X-CRM114-Status: GOOD (  13.56  )
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
Cc: linux-fsdevel@vger.kernel.org, richard@nod.at, dwmw2@infradead.org,
 linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 03:21:18PM +0100, David Howells wrote:
> The mounting of jffs2 is broken due to the changes from the new mount API
> because it specifies a "source" operation, but then doesn't actually
> process it.  But because it specified it, it doesn't return -ENOPARAM and
> the caller doesn't process it either and the source gets lost.
> 
> Fix this by simply removing the source parameter from jffs2 and letting the
> VFS deal with it in the default manner.
> 
> To test it, enable CONFIG_MTD_MTDRAM and allow the default size and erase
> block size parameters, then try and mount the /dev/mtdblock<N> file that
> that creates as jffs2.  No need to initialise it.
> 
> Fixes: ec10a24f10c8 ("vfs: Convert jffs2 to use the new mount API")
> Reported-by: Al Viro <viro@zeniv.linux.org.uk>
> Signed-off-by: David Howells <dhowells@redhat.com>
> cc: David Woodhouse <dwmw2@infradead.org>
> cc: Richard Weinberger <richard@nod.at>
> cc: linux-mtd@lists.infradead.org

Applied.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
