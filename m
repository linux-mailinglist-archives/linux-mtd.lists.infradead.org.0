Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECBD15A059
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Feb 2020 06:10:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgxcPV9D5dOCW5lS4PbFCw0X3p0Urm7fv/2XmhIU2vM=; b=Pu3oLvaOpzfhl4
	99VteOj9wLy55RLqlTTWrZuJr7oGFbsvXtuiTIp8+SAeP8c/JlG+8QICe3wRUK3cFZ+p91Q109MfW
	7NzVhbWhTErhwI2F/as+LPfMXj4k+L2xC44jiwLidwjO6JVADJ+vWCUlbQ3IZZw1McyzdqMTVqZ4B
	aqPgScF4c0EwaHXVsQiMuyBvUhoklpKws1/KWyBvy6+Lqi+GZemzDJNKXjUvNpuotNZX9UG/GkDsK
	s0wt/YYqTo413fvui8tkj+x9dBV1okofID5mCqKlVFLjgoz9Q8aQYiz9cUbRE7ig4BsE7lGFcyCtz
	E1XI4h0uZef7yl4E+wsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1kI4-0007Er-EN; Wed, 12 Feb 2020 05:10:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1kHw-0007CZ-DS
 for linux-mtd@lists.infradead.org; Wed, 12 Feb 2020 05:10:17 +0000
Received: from sol.localdomain (c-107-3-166-239.hsd1.ca.comcast.net
 [107.3.166.239])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2F0782073C;
 Wed, 12 Feb 2020 05:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581484215;
 bh=SoSyxp3A0UA/8Dnh/f7bNxJ3PKh7YiP5yN7Miz0urew=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NJ4hV4Xer0eG0SHiCiwOzByKd5JyUN7uZA4Ev57RCddYfHiQhVYc1ZP6Nu/jQiKeI
 sM/IB+kbGDo4+3rniEtpM5HWck5ZfygaFJlCh2p31egPYqFLRTnuG6Vzno8r8uusGN
 eqTOJ2fXAIxq3MOi1WPwMBn/MfIrQVYZVrO20sdk=
Date: Tue, 11 Feb 2020 21:10:13 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Daniel Rosenberg <drosen@google.com>
Subject: Re: [PATCH v7 6/8] f2fs: Handle casefolding with Encryption
Message-ID: <20200212051013.GG870@sol.localdomain>
References: <20200208013552.241832-1-drosen@google.com>
 <20200208013552.241832-7-drosen@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208013552.241832-7-drosen@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_211016_501748_08491F68 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Feb 07, 2020 at 05:35:50PM -0800, Daniel Rosenberg wrote:
> This expands f2fs's casefolding support to include encrypted
> directories. For encrypted directories, we use the siphash of the
> casefolded name. This ensures there is no direct way to go from an
> unencrypted name to the stored hash on disk without knowledge of the
> encryption policy keys.
> 
> Additionally, we switch to using the vfs layer's casefolding support
> instead of storing this information inside of f2fs's private data.
> 
> Signed-off-by: Daniel Rosenberg <drosen@google.com>
> ---
>  fs/f2fs/dir.c    | 65 ++++++++++++++++++++++++++++++++----------------
>  fs/f2fs/f2fs.h   |  8 +++---
>  fs/f2fs/hash.c   | 23 +++++++++++------
>  fs/f2fs/inline.c |  9 ++++---
>  fs/f2fs/super.c  |  6 -----
>  5 files changed, 68 insertions(+), 43 deletions(-)
> 
> diff --git a/fs/f2fs/dir.c b/fs/f2fs/dir.c
> index 38c0e6d589be4..3517dd4060341 100644
> --- a/fs/f2fs/dir.c
> +++ b/fs/f2fs/dir.c
> @@ -112,30 +112,50 @@ static struct f2fs_dir_entry *find_in_block(struct inode *dir,
>   * doesn't match or less than zero on error.
>   */
>  int f2fs_ci_compare(const struct inode *parent, const struct qstr *name,
> -				const struct qstr *entry, bool quick)
> +		    unsigned char *name2, size_t len, bool quick)
>  {
>  	const struct super_block *sb = parent->i_sb;
>  	const struct unicode_map *um = sb->s_encoding;
> +	const struct fscrypt_str crypt_entry = FSTR_INIT(name2, len);
> +	struct fscrypt_str decrypted_entry;
> +	struct qstr decrypted;
> +	struct qstr entry = QSTR_INIT(name2, len);
> +	struct qstr *tocheck;
>  	int ret;
>  
> +	decrypted_entry.name = NULL;
> +
> +	if (IS_ENCRYPTED(parent) && fscrypt_has_encryption_key(parent)) {
> +		decrypted_entry.name = kmalloc(len, GFP_ATOMIC);
> +		decrypted.name = decrypted_entry.name;
> +		decrypted_entry.len = len;
> +		decrypted.len = len;
> +		if (!decrypted.name)
> +			return -ENOMEM;
> +		ret = fscrypt_fname_disk_to_usr(parent, 0, 0, &crypt_entry,
> +							&decrypted_entry);
> +		if (ret < 0)
> +			goto out;
> +	}
> +	tocheck = decrypted_entry.name ? &decrypted : &entry;
> +
>  	if (quick)
> -		ret = utf8_strncasecmp_folded(um, name, entry);
> +		ret = utf8_strncasecmp_folded(um, name, tocheck);
>  	else
> -		ret = utf8_strncasecmp(um, name, entry);
> -
> +		ret = utf8_strncasecmp(um, name, tocheck);
>  	if (ret < 0) {
>  		/* Handle invalid character sequence as either an error
>  		 * or as an opaque byte sequence.
>  		 */
>  		if (sb_has_enc_strict_mode(sb))
> -			return -EINVAL;
> -
> -		if (name->len != entry->len)
> -			return 1;
> -
> -		return !!memcmp(name->name, entry->name, name->len);
> +			ret = -EINVAL;
> +		else if (name->len != len)
> +			ret = 1;
> +		else
> +			ret = !!memcmp(name->name, tocheck->name, len);
>  	}
> -
> +out:
> +	kfree(decrypted_entry.name);
>  	return ret;
>  }

The case-sensitive fallback is broken with encrypted filenames; it's checking
the length of the encrypted filename rather than the decrypted filename.  The
decrypted name may be shorter.

Can you please improve your testing to catch bugs like this?

IMO, part of the problem is that there are multiple lengths here, so the
variable named 'len' is ambiguous.  Can you please clean this function up to
name things properly?  Also, the 'tocheck' variable is unnecessary, and it's
confusing having both 'decrypted' and 'decrypted_entry', and to decrypt
conditionally when fscrypt_has_encryption_key() since that's already required.

How about:

int f2fs_ci_compare(const struct inode *parent, const struct qstr *name,
		    u8 *de_name, size_t de_name_len, bool quick)
{
	const struct super_block *sb = parent->i_sb;
	const struct unicode_map *um = sb->s_encoding;
	struct fscrypt_str decrypted_name = FSTR_INIT(NULL, de_name_len);
	struct qstr entry = QSTR_INIT(de_name, de_name_len);
	int ret;

	if (IS_ENCRYPTED(parent)) {
		const struct fscrypt_str encrypted_name =
			FSTR_INIT(de_name, de_name_len);

		decrypted_name.name = kmalloc(de_name_len, GFP_ATOMIC);
		if (!decrypted_name.name)
			return -ENOMEM;
		ret = fscrypt_fname_disk_to_usr(parent, 0, 0, &encrypted_name,
						&decrypted_name);
		if (ret < 0)
			goto out;
		entry.name = decrypted_name.name;
		entry.len = decrypted_name.len;
	}

	if (quick)
		ret = utf8_strncasecmp_folded(um, name, &entry);
	else
		ret = utf8_strncasecmp(um, name, &entry);
	if (ret < 0) {
		/* Handle invalid character sequence as either an error
		 * or as an opaque byte sequence.
		 */
		if (sb_has_enc_strict_mode(sb))
			ret = -EINVAL;
		else if (name->len != entry.len)
			ret = 1;
		else
			ret = !!memcmp(name->name, entry.name, entry.len);
	}
out:
	kfree(decrypted_name.name);
	return ret;
}


Of course, all this applies to ext4_ci_compare() as well.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
