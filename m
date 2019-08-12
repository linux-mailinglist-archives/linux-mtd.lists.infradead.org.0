Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 632098AA86
	for <lists+linux-mtd@lfdr.de>; Tue, 13 Aug 2019 00:38:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJOASq8NFS2+7yCk0IeuEVuq30zCCVHWu3O8Skk+//Y=; b=uaOTdUSUzYDLc6
	LGiorh0fEQgx2vq4OzNyTmsB6Xc61Fnz1SX5XSQd7yM9+BbDlWJkMMGMPz7qQXvoiduNXEHVwJs4k
	iofkITRdf1XMdMEbB3L9Fptx/JrYrmo3ltY62XN7J+szrI9rk2xDwrCMO5wLRe7ilZOTikdF+gj8b
	jmrqNrO/PwvbFhRTAfAgW9ixXWySGmZkowq7zifL8yQ8YgPDA+3/Xsmhf7uKUohXP6IneDlrjN6EE
	6fij9zcM86oHy8TQ+4PJNMuz/NXgVOOmFp2nM8KJl9auyXv8RYW29VKqI5wxhreOBbdFQYd1Rjcof
	I/P2xIueWneD3dMaePTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIxZ-000291-FF; Mon, 12 Aug 2019 22:38:37 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIxQ-00028g-Fg
 for linux-mtd@lists.infradead.org; Mon, 12 Aug 2019 22:38:29 +0000
Received: from callcc.thunk.org (guestnat-104-133-9-109.corp.google.com
 [104.133.9.109] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7CMcMZY016957
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 12 Aug 2019 18:38:24 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 227D14218EF; Mon, 12 Aug 2019 18:38:22 -0400 (EDT)
Date: Mon, 12 Aug 2019 18:38:22 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH v8 06/20] fscrypt: refactor key setup code in preparation
 for v2 policies
Message-ID: <20190812223822.GE28705@mit.edu>
References: <20190805162521.90882-1-ebiggers@kernel.org>
 <20190805162521.90882-7-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805162521.90882-7-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_153828_696061_6EE7DDA7 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Satya Tangirala <satyat@google.com>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 09:25:07AM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Do some more refactoring of the key setup code, in preparation for
> introducing a filesystem-level keyring and v2 encryption policies:
> 
> - Now that ci_inode exists, don't pass around the inode unnecessarily.
> 
> - Define a function setup_file_encryption_key() which handles the crypto
>   key setup given an under-construction fscrypt_info.  Don't pass the
>   fscrypt_context, since everything is in the fscrypt_info.
>   [This will be extended for v2 policies and the fs-level keyring.]
> 
> - Define a function fscrypt_set_derived_key() which sets the per-file
>   key, without depending on anything specific to v1 policies.
>   [This will also be used for v2 policies.]
> 
> - Define a function fscrypt_setup_v1_file_key() which takes the raw
>   master key, thus separating finding the key from using it.
>   [This will also be used if the key is found in the fs-level keyring.]
> 
> Signed-off-by: Eric Biggers <ebiggers@google.com>

Looks good, you can add:

Reviewed-by: Theodore Ts'o <tytso@mit.edu>

						- Ted

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
