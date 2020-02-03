Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32CD150056
	for <lists+linux-mtd@lfdr.de>; Mon,  3 Feb 2020 02:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYxrjom9coG+qhk+bI27KFDQY6QPA+Q+Pf5LjD0qlDE=; b=ANX1fQeiQT64Ap
	pS1+uHaOYO/Y56IqYyPZF0S2mnDQ22NG0i+V4p67C+MzZ+QYwQ9cxQNIqFfwzHhW2WaCF4IvpSK5n
	EFEa9SSh+Dk8l84CrPFxQmuS/oJBvvKjP8XGP7llp1f4RHx+0MRAsELjHXP2dU+Q8IndrQwWI707E
	oNHAmWzrUzei+cRjsj6c7TshK0T4FTUrdu8Nv39M3l6Z/rcPy9AWhZtCUACM4tsntaTqKvE9/rJLb
	1lJ+bXxRInt6JQn7w7ppAjBjoSITIhy2Mhg+WK7IxHqNMyeV05+x87FRu23R0Vr3Y/LxcJmXclY8K
	LeNnfwCm74ZnBWxqIhkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyQoc-00063x-UD; Mon, 03 Feb 2020 01:46:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyQoU-00063V-JX
 for linux-mtd@lists.infradead.org; Mon, 03 Feb 2020 01:46:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: krisman) with ESMTPSA id 085A328BEFA
From: Gabriel Krisman Bertazi <krisman@collabora.com>
To: Daniel Rosenberg <drosen@google.com>
Subject: Re: [PATCH v6 1/5] unicode: Add standard casefolded d_ops
Organization: Collabora
References: <20200128230328.183524-1-drosen@google.com>
 <20200128230328.183524-2-drosen@google.com>
Date: Sun, 02 Feb 2020 20:45:59 -0500
In-Reply-To: <20200128230328.183524-2-drosen@google.com> (Daniel Rosenberg's
 message of "Tue, 28 Jan 2020 15:03:24 -0800")
Message-ID: <85sgjsxx2g.fsf@collabora.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_174610_773716_D3997F43 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Theodore Ts'o <tytso@mit.edu>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chao Yu <chao@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Eric Biggers <ebiggers@kernel.org>, linux-fscrypt@vger.kernel.org,
 linux-mtd@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Daniel Rosenberg <drosen@google.com> writes:

> diff --git a/include/linux/unicode.h b/include/linux/unicode.h
> index 990aa97d80496..5de313abeaf98 100644
> --- a/include/linux/unicode.h
> +++ b/include/linux/unicode.h
> @@ -4,6 +4,8 @@
>  
>  #include <linux/init.h>
>  #include <linux/dcache.h>
> +#include <linux/fscrypt.h>
> +#include <linux/fs.h>
>  
>  struct unicode_map {
>  	const char *charset;
> @@ -30,4 +32,19 @@ int utf8_casefold(const struct unicode_map *um, const struct qstr *str,
>  struct unicode_map *utf8_load(const char *version);
>  void utf8_unload(struct unicode_map *um);
>  
> +int utf8_ci_d_hash(const struct dentry *dentry, struct qstr *str);
> +int utf8_ci_d_compare(const struct dentry *dentry, unsigned int len,
> +			  const char *str, const struct qstr *name);


I don't think fs/unicode is the right place for these very specific
filesystem functions, just because they happen to use unicode.  It is an
encoding library, it doesn't care about dentries, nor should know how to
handle them.  It exposes a simple api to manipulate and convert utf8 strings.

I saw change was after the desire to not have these functions polluting
the VFS hot path, but that has nothing to do with placing them here.

Would libfs be better?  or a casefolding library in fs/casefold.c?


-- 
Gabriel Krisman Bertazi

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
