Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F704ABD1
	for <lists+linux-mtd@lfdr.de>; Tue, 18 Jun 2019 22:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KS9jJbbv/fpxgqpYq3RqmAH+NSJ9i08/Qo2cOM+Q5i0=; b=FpVGBWEazvi00T
	O+8ER74qkzg7Q+2FandZaHt7YyCzFg9unegavWLIlmYa/6Lsen/O9g6j0AkKMFnUd4Y1MNMbA7pmt
	UynJzsGZYPonDzkX3sP4BHCXUMWuGTnLLHfvVscjYdpI9pfP6m1C3TIGcWbXKpQI/ZaMSgzIj5NyD
	xaEbSC57zFxLrt496O+OYMhkbfxe0OF94EGqY+mqjThwVqdkySu+Hylm/Ev2jAfWfvTJUm/S5Gl1b
	HUvjibbNJhHKKqo8jjjQS2OvNglwnqXP++jEV9zizL/62U9d0UTC28VL0yDR5ujlIm7UzSYI2w60e
	/WOa8t5fvnvBjTYy5Qcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdKje-0007qU-Qw; Tue, 18 Jun 2019 20:29:42 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdKjT-0007gy-7H
 for linux-mtd@lists.infradead.org; Tue, 18 Jun 2019 20:29:32 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1hdKhN-0003PQ-66; Tue, 18 Jun 2019 20:27:21 +0000
Date: Tue, 18 Jun 2019 21:27:21 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/4] jffs2: pass the correct prototype to read_cache_page
Message-ID: <20190618202721.GD17978@ZenIV.linux.org.uk>
References: <20190520055731.24538-1-hch@lst.de>
 <20190520055731.24538-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520055731.24538-4-hch@lst.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_132931_265226_CBD42B41 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-nfs@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-mtd@lists.infradead.org,
 Sami Tolvanen <samitolvanen@google.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 07:57:30AM +0200, Christoph Hellwig wrote:
> Fix the callback jffs2 passes to read_cache_page to actually have the
> proper type expected.  Casting around function pointers can easily
> hide typing bugs, and defeats control flow protection.

FWIW, this
unsigned char *jffs2_gc_fetch_page(struct jffs2_sb_info *c,
                                   struct jffs2_inode_info *f,
                                   unsigned long offset,
                                   unsigned long *priv)
{
        struct inode *inode = OFNI_EDONI_2SFFJ(f);
        struct page *pg;

        pg = read_cache_page(inode->i_mapping, offset >> PAGE_SHIFT,
                             (void *)jffs2_do_readpage_unlock, inode);
        if (IS_ERR(pg))
                return (void *)pg;

        *priv = (unsigned long)pg;
        return kmap(pg);
}
looks like crap.  And so does this:
void jffs2_gc_release_page(struct jffs2_sb_info *c,
                           unsigned char *ptr,
                           unsigned long *priv)
{
        struct page *pg = (void *)*priv;

        kunmap(pg);
        put_page(pg);
}

	First of all, there's only one caller for each of those, and both
are direct calls.  So passing struct page * around that way is ridiculous.
What's more, there is no reason not to do kmap() in caller (i.e. in
jffs2_garbage_collect_dnode()).  That way jffs2_gc_fetch_page() would
simply be return read_cache_page(....), and in the caller we'd have

        struct page *pg;
        unsigned char *pg_ptr;
...
        mutex_unlock(&f->sem);
        pg = jffs2_gc_fetch_page(c, f, start);
        if (IS_ERR(pg)) {
		mutex_lock(&f->sem);
                pr_warn("read_cache_page() returned error: %ld\n", PTR_ERR(pg));
                return PTR_ERR(pg);
        }
	pg_ptr = kmap(pg);
	mutex_lock(&f->sem);
...
	kunmap(pg);
	put_page(pg);

and that's it, preserving the current locking and with saner types...

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
