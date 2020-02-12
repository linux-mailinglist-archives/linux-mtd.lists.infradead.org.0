Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F130E159F91
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Feb 2020 04:38:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrxpqeM1ORDhIvq9j5OjF8tynuZR7XSFljll7MXc9sI=; b=JD8TaQEMjWLnQ9
	dbXcoCYMSONJdiXQhd2F7vPkNPFNd1rs1otuaJxmSRNfQXISW8mOfJLIZW+JglEzXqubUrNIu19CB
	W1wid/VHh+mmOxDY0+G8liuYQdlcmQ5Q/7cl+H54oUYH5MxBAjr6evMTzmKbZxALOdvdKa79FRdjU
	SfUID5Cejt/PtOeHZXO22MtxKAKh+DomVGze0i5q5pf08EkvAJLnnlyc7rT10JBLb0jFykrFz1L4A
	FglAXohbvMCDMCBhqNUOqbwqDaL3VksGwnepCgU+CIkqGLh5QHEuEFUlFtMesplvLpDWxZZBfCm9i
	YlgvsUWmwOOzJpNmUXWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1iqs-0001AA-9P; Wed, 12 Feb 2020 03:38:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1iqm-00019A-3O
 for linux-mtd@lists.infradead.org; Wed, 12 Feb 2020 03:38:09 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8E112073C;
 Wed, 12 Feb 2020 03:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581478684;
 bh=QFEFG/81Rfdx+DhaJa330Iy0plXtvuXYAYlLrbnAw4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kgLuYeSFpKxnDdxa83uM8r7H8S2iSSVhydJQbgl1WskDbn0S35JXuXY6oYMb6AFqU
 HxO5QSmEbAmJQYLuF8FimrMwI0rN+5dYv0mjVwfxsOCEj+bKApbx/sRGflnZL6TTxF
 hsjxh+dI86q2CbBRmKMiAXqhZqvYy14nr51t/CqE=
Date: Tue, 11 Feb 2020 19:38:00 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Daniel Rosenberg <drosen@google.com>
Subject: Re: [PATCH v7 1/8] unicode: Add utf8_casefold_iter
Message-ID: <20200212033800.GC870@sol.localdomain>
References: <20200208013552.241832-1-drosen@google.com>
 <20200208013552.241832-2-drosen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208013552.241832-2-drosen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_193808_163925_28A0CA8F 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-team@android.com, Theodore Ts'o <tytso@mit.edu>,
 Jonathan Corbet <corbet@lwn.net>, Richard Weinberger <richard@nod.at>,
 Andreas Dilger <adilger.kernel@dilger.ca>, Chao Yu <chao@kernel.org>,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 05:35:45PM -0800, Daniel Rosenberg wrote:
> This function will allow other uses of unicode to act upon a casefolded
> string without needing to allocate their own copy of one.
> 
> The actor function can return an nonzero value to exit early.
> 
> Signed-off-by: Daniel Rosenberg <drosen@google.com>
> ---
>  fs/unicode/utf8-core.c  | 25 ++++++++++++++++++++++++-
>  include/linux/unicode.h | 10 ++++++++++
>  2 files changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/unicode/utf8-core.c b/fs/unicode/utf8-core.c
> index 2a878b739115d..db050bf59a32b 100644
> --- a/fs/unicode/utf8-core.c
> +++ b/fs/unicode/utf8-core.c
> @@ -122,9 +122,32 @@ int utf8_casefold(const struct unicode_map *um, const struct qstr *str,
>  	}
>  	return -EINVAL;
>  }
> -
>  EXPORT_SYMBOL(utf8_casefold);
>  
> +int utf8_casefold_iter(const struct unicode_map *um, const struct qstr *str,
> +		    struct utf8_itr_context *ctx)
> +{
> +	const struct utf8data *data = utf8nfdicf(um->version);
> +	struct utf8cursor cur;
> +	int c;
> +	int res = 0;
> +	int pos = 0;
> +
> +	if (utf8ncursor(&cur, data, str->name, str->len) < 0)
> +		return -EINVAL;
> +
> +	while ((c = utf8byte(&cur))) {
> +		if (c < 0)
> +			return c;
> +		res = ctx->actor(ctx, c, pos);
> +		pos++;
> +		if (res)
> +			return res;
> +	}
> +	return res;
> +}
> +EXPORT_SYMBOL(utf8_casefold_iter);

Indirect function calls are expensive these days for various reasons, including
Spectre mitigations and CFI.  Are you sure it's okay from a performance
perspective to make an indirect call for every byte of the pathname?

> +typedef int (*utf8_itr_actor_t)(struct utf8_itr_context *, int byte, int pos);

The byte argument probably should be 'u8', to avoid confusion about whether it's
a byte or a Unicode codepoint.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
