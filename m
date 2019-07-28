Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5BE781B3
	for <lists+linux-mtd@lfdr.de>; Sun, 28 Jul 2019 23:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JiwAN8WSH0hNGWgzzfYt/fuoNyVe+yS3+PsJYzWEWV8=; b=XaBryrS2HDNTsA
	qCI5VdP6WL3kt2hLftezf1jqhbhuRgUFyyO+Ms4z+UaRaIN4fN/tyFFs1mnnhyxFi0+J/cFt3oAQh
	GHzuuX1h21FqWlQu8NQgfPwCQScGl9bfQre0wTEl+lkP3tFTXqHCDfTDRxwGAZBs5EWDpHUuZxZUz
	g4KtPtdi0d4fOzpKOZwC72V7UPFGCacUdNwT3RwANKLcdG9JSr09lnJ5Sp4PHRekrcDeCsiYC9hFR
	I/X6FZcZU7jViCWZ+zQBxe6y5Sl6lHlrAptxEa7Li9rbdZIhu/jkz95ptC3gIvB16dCtt5ojdZVwe
	a932sCc0zzchSzArqsdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrqYI-00056K-VX; Sun, 28 Jul 2019 21:17:59 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrqYA-00055N-NR
 for linux-mtd@lists.infradead.org; Sun, 28 Jul 2019 21:17:52 +0000
Received: from callcc.thunk.org (96-72-102-169-static.hfc.comcastbusiness.net
 [96.72.102.169] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6SLHVFd011138
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sun, 28 Jul 2019 17:17:32 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 5DD5D4202F5; Sun, 28 Jul 2019 17:17:30 -0400 (EDT)
Date: Sun, 28 Jul 2019 17:17:30 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Eric Biggers <ebiggers@kernel.org>
Subject: Re: [PATCH v7 10/16] fscrypt: v2 encryption policy support
Message-ID: <20190728211730.GK6088@mit.edu>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-11-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726224141.14044-11-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_141750_933276_FF89AD2E 
X-CRM114-Status: GOOD (  13.76  )
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

On Fri, Jul 26, 2019 at 03:41:35PM -0700, Eric Biggers wrote:
> @@ -319,6 +329,31 @@ int fscrypt_ioctl_add_key(struct file *filp, void __user *_uarg)
>  	if (!capable(CAP_SYS_ADMIN))
>  		goto out_wipe_secret;
>  
> +	if (arg.key_spec.type != FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR) {

This should be "== FSCRYPT_KEY_SPEC_TYPE_INDENTIFIER" instead.  That's
because you use the identifier part of the union:

> +		/* Calculate the key identifier and return it to userspace. */
> +		err = fscrypt_hkdf_expand(&secret.hkdf,
> +					  HKDF_CONTEXT_KEY_IDENTIFIER,
> +					  NULL, 0, arg.key_spec.u.identifier,

If we ever add a new key specifier type, and alternative in the union,
this is going to come back to bite us.

> +	if (policy->version == FSCRYPT_POLICY_V1) {
> +		/*
> +		 * The original encryption policy version provided no way of
> +		 * verifying that the correct master key was supplied, which was
> +		 * insecure in scenarios where multiple users have access to the
> +		 * same encrypted files (even just read-only access).

Which scenario do you have in mind?  With read-only access, Alice can
fetch the encryption policy for a directory, and introduce a key with
the same descriptor, but the "wrong" key, but that's only going to
affect Alice's use of the key.  It won't affect what key is used by
Bob, since Alice doesn't have write access to Bob's keyrings.

If what you mean is the risk when there is a single global
filesystem-specific keyring, where Alice could introduce a "wrong" key
identified with a specific descriptor, then sure, Alice could trick
Bob into encrypting his data with the wrong key (one known to Alice).
But we don't allow keys usable by V1 policies to be used in the
filesystem-specific keyring, do we?

						- Ted

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
