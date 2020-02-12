Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6CCD15A0ED
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Feb 2020 06:57:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cevPCgQ3WvHhkvmsPfWqE5TitWEtjjgBrsYSjAZAuk8=; b=JxAdGm0udUVKcl
	SKtMmqMi3+H/rmk6AOi9QpzqR7qawAtaktn7nl11YrEKZNaHPVYna3Q+zOgiMez7XICZC5ZlkCIl9
	hVDOkFeAEsgHI/Rwgf744MwyRyESOttBbak4bg2MYxdoJJZqzWdzS/wJGNCw5i0i32PaO2+J7Uv6K
	aj8xtx7z3nAE57qEMOLYkkI3XcBx+8cAlZw9dfpLe7T24+dJYfqPVfo0fCSrzJDUiZ3/nCLuEh5rG
	NujLbvk9HyCANPh0ZHYEMBY/iyHTgPifr5geIidfn5q9yncdm7NR9heCCkuzs9fcjuEbLOdg/LaSz
	x/vrHOF5/l6vBhzg8blA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1l1n-0004OO-78; Wed, 12 Feb 2020 05:57:39 +0000
Received: from zeniv.linux.org.uk ([195.92.253.2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1l1e-0004KM-GJ
 for linux-mtd@lists.infradead.org; Wed, 12 Feb 2020 05:57:31 +0000
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1j1kzP-00BGKg-Vq; Wed, 12 Feb 2020 05:55:12 +0000
Date: Wed, 12 Feb 2020 05:55:11 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH v7 6/8] f2fs: Handle casefolding with Encryption
Message-ID: <20200212055511.GL23230@ZenIV.linux.org.uk>
References: <20200208013552.241832-1-drosen@google.com>
 <20200208013552.241832-7-drosen@google.com>
 <20200212051013.GG870@sol.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212051013.GG870@sol.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_215730_541391_AC270600 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.92.253.2 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.92.253.2 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Daniel Rosenberg <drosen@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Richard Weinberger <richard@nod.at>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chao Yu <chao@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-fsdevel@vger.kernel.org, Jaegeuk Kim <jaegeuk@kernel.org>,
 linux-ext4@vger.kernel.org, Gabriel Krisman Bertazi <krisman@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 09:10:13PM -0800, Eric Biggers wrote:

> How about:
> 
> int f2fs_ci_compare(const struct inode *parent, const struct qstr *name,
> 		    u8 *de_name, size_t de_name_len, bool quick)
> {
> 	const struct super_block *sb = parent->i_sb;
> 	const struct unicode_map *um = sb->s_encoding;
> 	struct fscrypt_str decrypted_name = FSTR_INIT(NULL, de_name_len);
> 	struct qstr entry = QSTR_INIT(de_name, de_name_len);
> 	int ret;
> 
> 	if (IS_ENCRYPTED(parent)) {

oops.  parent->d_inode is unstable here; could have become NULL by that
point.

> 	if (quick)
> 		ret = utf8_strncasecmp_folded(um, name, &entry);
> 	else
> 		ret = utf8_strncasecmp(um, name, &entry);
> 	if (ret < 0) {
> 		/* Handle invalid character sequence as either an error
> 		 * or as an opaque byte sequence.
> 		 */

Really?  How would the callers possibly tell mismatch from an
error?  And if they could, would would they *do* with that
error, seeing that it might be an effect of a race with
rename()?

Again, ->d_compare() is NOT given a stable name.  Or *parent.  Or
(parent->d_inode).

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
