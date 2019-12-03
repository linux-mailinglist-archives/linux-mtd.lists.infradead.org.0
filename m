Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B45FD10F46B
	for <lists+linux-mtd@lfdr.de>; Tue,  3 Dec 2019 02:14:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KECBL7PdqwL+JKDVuUm0uffgJ+3Wo/3cn0kZaO8zfx0=; b=KuiTaWWwOFsrpu
	IEvCChhkmv/JnhEq2SpgBqs9eULABUwfi+nuPhV8ByzkhjjnqT9AnST/jGDGLcGNK8dAGkanIXGEm
	ayQ1NtQ27ZeZunUNHxHgOFbN0EV5lWYQwvr84o+zBiG9M4ay3ZV2aSifvP8HqLyGSzP4W9ufiGA6d
	ZJ50lp70psYniMoR1TDLOIN6R/vQd0QgRfFAzYb2vZ3GUcCOqbYX0yGfWb5Ifm7dqOjdgIxLdLiP8
	apPE1a949E4cfuogsR/lnTApOgGosVWr7GenHUDZXr7GIFXYBNUmirMKouvNYLbOn8yAxXITGiPBB
	UCSbbCFnS/DqLgaS/FVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibwm2-0005J8-Lu; Tue, 03 Dec 2019 01:14:42 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibwlp-0005IW-He
 for linux-mtd@lists.infradead.org; Tue, 03 Dec 2019 01:14:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id s22so1743611ljs.7
 for <linux-mtd@lists.infradead.org>; Mon, 02 Dec 2019 17:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=f16wPMX3Hv5+5LpFCWWiK7eqWkk4a1TMh+b2JYuh2L4=;
 b=KquqAkqUVTyG83FELzXx6nZWqrQom0qPebBeM3l4nUnY0IjRxfw5jl9f4rhB4P0Ys1
 yMMjUqHh9Atftq9/aMH7vPLqvTYv5hjkMQeepjJof4arWmddxk+x0kYqi0oEsm1gm01r
 c0+/cFEMdOFDQe0735Al7ThhTziCMU1XmN/7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=f16wPMX3Hv5+5LpFCWWiK7eqWkk4a1TMh+b2JYuh2L4=;
 b=sHhh3Txtsfm9AFis1AaYkYOCJRFU9EEA/3T0EKu46rFtJk8g1Rt0+5ZBdApNmGmYam
 GspIn8X5qJL5PKOEanJY0HRCghwMO3eP9447h/9Piju7w+amZSGtL+S6QQ1sn+V0/rvA
 6bL+r2FfkS2rYvjIEHYZisLA/mfTtNbV02jQ7+ZCUoytNKQDgJfvSplqmprIQY0abEfe
 J4CBHK3BAPQfxAs19CzIzm3AWvdb92PVtmP4q14BeINXJj6Lj/xGk87ErK6R2RcmJ216
 eYAxda3iWHlqZc9NT4u9CEXKP0489YIyS74mTDln3ODWDhcZQk27tf6bcCkzkJp2pjrj
 0EyA==
X-Gm-Message-State: APjAAAXCXPvbmlpHNJpSSl1HqcHZ41worEMaxlb00XkGISmY8YgB6Q3p
 5Ttj/AVuYazk9h0n8zQLtgL6Geb1ABs=
X-Google-Smtp-Source: APXvYqw3h8qfqkACRGulCop73TBQ5Mp57517edM8GximV76MZo2yKVUThMEZckmQomdLx80mtwbdyQ==
X-Received: by 2002:a05:651c:1a2:: with SMTP id
 c2mr917233ljn.121.1575335665934; 
 Mon, 02 Dec 2019 17:14:25 -0800 (PST)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id a9sm360694lfi.50.2019.12.02.17.14.25
 for <linux-mtd@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Dec 2019 17:14:25 -0800 (PST)
Received: by mail-lj1-f171.google.com with SMTP id d20so1691873ljc.12
 for <linux-mtd@lists.infradead.org>; Mon, 02 Dec 2019 17:14:25 -0800 (PST)
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr889870ljj.97.1575335193641;
 Mon, 02 Dec 2019 17:06:33 -0800 (PST)
MIME-Version: 1.0
References: <20191129142045.7215-1-agruenba@redhat.com>
In-Reply-To: <20191129142045.7215-1-agruenba@redhat.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 2 Dec 2019 17:06:17 -0800
X-Gmail-Original-Message-ID: <CAHk-=wj5caXKoukPyM7Zc6A0Q+E-pBGHSV64iZe8t98OerXR_w@mail.gmail.com>
Message-ID: <CAHk-=wj5caXKoukPyM7Zc6A0Q+E-pBGHSV64iZe8t98OerXR_w@mail.gmail.com>
Subject: Re: [PATCH v2] fs: Fix page_mkwrite off-by-one errors
To: Andreas Gruenbacher <agruenba@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_171429_586936_766FF3C5 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Adrian Hunter <adrian.hunter@intel.com>, Chris Mason <clm@fb.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Sage Weil <sage@redhat.com>,
 "Darrick J. Wong" <darrick.wong@oracle.com>,
 Richard Weinberger <richard@nod.at>, Christoph Hellwig <hch@infradead.org>,
 Ilya Dryomov <idryomov@gmail.com>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>, Chao Yu <chao@kernel.org>,
 Josef Bacik <josef@toxicpanda.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 David Sterba <dsterba@suse.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 Artem Bityutskiy <dedekind1@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs <linux-xfs@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>, linux-mtd@lists.infradead.org,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 6:21 AM Andreas Gruenbacher <agruenba@redhat.com> wrote:
>
> +/**
> + * page_mkwrite_check_truncate - check if page was truncated
> + * @page: the page to check
> + * @inode: the inode to check the page against
> + *
> + * Returns the number of bytes in the page up to EOF,
> + * or -EFAULT if the page was truncated.
> + */
> +static inline int page_mkwrite_check_truncate(struct page *page,
> +                                             struct inode *inode)
> +{
> +       loff_t size = i_size_read(inode);
> +       pgoff_t end_index = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;

This special end_index calculation seems to be redundant.

You later want "size >> PAGE_SHIFT" for another test, and that's
actually the important part.

The "+ PAGE_SIZE - 1" case is purely to handle the "AT the page
boundary is special" case, but since you have to calculate
"offset_in_page(size)" anyway, that's entirely redundant - the answer
is part of that.

So I think it would be better to write the logic as

        loff_t size = i_size_read(inode);
        pgoff_t index = size >> PAGE_SHIFT;
        int offset = offset_in_page(size);

        if (page->mapping != inode->i_mapping)
                return -EFAULT;

        /* Page is wholly past the EOF page */
        if (page->index > index)
                return -EFAULT;
        /* page is wholly inside EOF */
        if (page->index < index)
                return PAGE_SIZE;
        /* bytes in a page? If 0, it's past EOF */
        return offset ? offset : -PAGE_SIZE;

instead. That avoids the unnecessary "round up" part, and simply uses
the same EOF index for everything.

              Linus

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
