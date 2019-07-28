Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4597F780FD
	for <lists+linux-mtd@lfdr.de>; Sun, 28 Jul 2019 20:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fGxUaq13wKrr22BwgTWckhElZUOPdzsIix5NmqXBnO4=; b=n1CvCB7ho4eOby
	VNuufhJlV+b937st1szJVGo0q8Bl9vOVA73s3hN9b1BUn0vtNzTxyaqxdnI308bOoGPqndZFGcI9n
	uf67VokOl3rb23DO4bPe0+mKjWhUEZAo2Tz6D2y0OlOzX7sN3VGJv3FvZ+UJs0XpUc9FRh/BM3Hfb
	F4EujdZRrnIfKlRr3aqkRD4XwkiAhnRvuqNy0vp50NhaXHtrMO2+n+S6t6qFHPU0GVlhPwfl1qaYw
	FnoQ+A6YWfwdD0wfpyNBLek/3FdHnQpPXikgU9p0WRgvGO+PgI9N43G8+p/9ALQo772GO3aaFykQ1
	/fulDf+eEXCGfV07wFqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hroFQ-0000aE-Dr; Sun, 28 Jul 2019 18:50:20 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hroFI-0000Zs-L1
 for linux-mtd@lists.infradead.org; Sun, 28 Jul 2019 18:50:14 +0000
Received: from callcc.thunk.org (96-72-102-169-static.hfc.comcastbusiness.net
 [96.72.102.169] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6SIo4Jb028047
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 28 Jul 2019 14:50:05 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 68A2E4202F5; Sun, 28 Jul 2019 14:50:03 -0400 (EDT)
Date: Sun, 28 Jul 2019 14:50:03 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH v7 06/16] fscrypt: add FS_IOC_ADD_ENCRYPTION_KEY ioctl
Message-ID: <20190728185003.GF6088@mit.edu>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-7-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726224141.14044-7-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_115012_861667_A6F6D4F0 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
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
Cc: Satya Tangirala <satyat@google.com>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 03:41:31PM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Add a new fscrypt ioctl, FS_IOC_ADD_ENCRYPTION_KEY.  This ioctl adds an
> encryption key to the filesystem's fscrypt keyring ->s_master_keys,
> making any files encrypted with that key appear "unlocked".

Note: it think it's going to be useful to make the keyring id
available someplace like /sys/fs/<fs>/<blkdev>/keyring, or preferably
in the new fsinfo system call.  Yes, the system administrator can paw
through /proc/keys and try to figure it out, but it will be nicer if
there's a direct way to do that.

For that matter, we could just add a new ioctl which returns the file
system's keyring id.  That way an application program won't have to
try to figure out what a file's underlying sb->s_id happens to be.
(Especially if things like overlayfs are involved.)

> diff --git a/include/uapi/linux/fscrypt.h b/include/uapi/linux/fscrypt.h
> index 29a945d165def..93d6eabaa7de4 100644
> --- a/include/uapi/linux/fscrypt.h
> +++ b/include/uapi/linux/fscrypt.h
> +
> +struct fscrypt_key_specifier {
> +#define FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR	1
> +	__u32 type;
> +	__u32 __reserved;

Can you move the definition of FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR
outside of the structure definition, and then add a comment about what
is a "descriptor" key spec?  (And then in a later patch, please add a
comment about what is an "identifier" key type.)  There's an
explanation in Documentation/filesystems/fscrypt.rst, I know, but a
one or two line comment plus a pointer to
Documentation/filesystems/fscrypt.rst in the header file would be
really helpful.

Otherwise, it looks good.   Feel free to add:

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

						- Ted

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
