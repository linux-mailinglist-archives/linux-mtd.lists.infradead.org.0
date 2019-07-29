Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09704799FB
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 22:30:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gKCPD8O2CiY+W1CXx+b+lmLRLBEEKJX8e7QBgL0A28=; b=DvJgJSFq2lcMST
	uQgY/FO6tqZzQ3zUxeEdJ62b8ndovj6M94WPmu7X4XU1sy7HLgKqdJ3sivlpYgROIeiS+QkP19ulC
	AoaKrl1DoMvyNpsbhqnhFyS/udB3bXaTItItB7+s11djoiT2OEGf8eD6yppOHr0ZQF8sW3q+zYqf/
	AhgmW91vWRSRiXyEzzrED3a0ek5+a4WuD8c+hz0p9Bve/BxgVzLhQ6jMmk3iWLW7n808pRfbp6/7e
	0lYvqGBI87DinVzWtwRb2HA0HTFyJcMZWWNGGB9LIbYx+beA/FLXKsBc4x6jxsxGiL1i45sbgdxmt
	hmWsQQUEGqBqoevX6LmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsCHa-0005HD-Hm; Mon, 29 Jul 2019 20:30:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsCHL-0005G8-UF
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 20:29:57 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2FB620679;
 Mon, 29 Jul 2019 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564432194;
 bh=7LK4u/xXVtAq5xQMkemCjB4sBIVdQGteWvKYNQ+TBCY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DPew4TPf3PkKUXWtCLWWIQsryuZDmRsZW9HWBPCFmul6GOPKrMhWsOP2j0s6E1587
 pPpWGjXg0oLEblY9YgIrbRyuoJDVlQC0LdMHo0X3YE5xtPBbo3Oz6TZzJnytmQbINO
 1di8FZ/AmOwFvTEDEuqxMDphn/LIvGf9Grr0aIA8=
Date: Mon, 29 Jul 2019 13:29:52 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCH v7 09/16] fscrypt: add an HKDF-SHA512 implementation
Message-ID: <20190729202951.GG169027@gmail.com>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 linux-fscrypt@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, linux-api@vger.kernel.org,
 linux-crypto@vger.kernel.org, keyrings@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>,
 Satya Tangirala <satyat@google.com>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-10-ebiggers@kernel.org>
 <20190728193949.GI6088@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728193949.GI6088@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_132956_011317_E545237B 
X-CRM114-Status: GOOD (  22.44  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.5 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Satya Tangirala <satyat@google.com>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-fscrypt@vger.kernel.org,
 keyrings@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, Paul Crowley <paulcrowley@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sun, Jul 28, 2019 at 03:39:49PM -0400, Theodore Y. Ts'o wrote:
> On Fri, Jul 26, 2019 at 03:41:34PM -0700, Eric Biggers wrote:
> > From: Eric Biggers <ebiggers@google.com>
> > 
> > Add an implementation of HKDF (RFC 5869) to fscrypt, for the purpose of
> > deriving additional key material from the fscrypt master keys for v2
> > encryption policies.  HKDF is a key derivation function built on top of
> > HMAC.  We choose SHA-512 for the underlying unkeyed hash, and use an
> > "hmac(sha512)" transform allocated from the crypto API.
> > 
> > We'll be using this to replace the AES-ECB based KDF currently used to
> > derive the per-file encryption keys.  While the AES-ECB based KDF is
> > believed to meet the original security requirements, it is nonstandard
> > and has problems that don't exist in modern KDFs such as HKDF:
> > 
> > 1. It's reversible.  Given a derived key and nonce, an attacker can
> >    easily compute the master key.  This is okay if the master key and
> >    derived keys are equally hard to compromise, but now we'd like to be
> >    more robust against threats such as a derived key being compromised
> >    through a timing attack, or a derived key for an in-use file being
> >    compromised after the master key has already been removed.
> > 
> > 2. It doesn't evenly distribute the entropy from the master key; each 16
> >    input bytes only affects the corresponding 16 output bytes.
> > 
> > 3. It isn't easily extensible to deriving other values or keys, such as
> >    a public hash for securely identifying the key, or per-mode keys.
> >    Per-mode keys will be immediately useful for Adiantum encryption, for
> >    which fscrypt currently uses the master key directly, introducing
> >    unnecessary usage constraints.  Per-mode keys will also be useful for
> >    hardware inline encryption, which is currently being worked on.
> > 
> > HKDF solves all the above problems.
> > 
> > Signed-off-by: Eric Biggers <ebiggers@google.com>
> 
> Unless I missed something there's nothing here which is fscrypt
> specific.  Granted that it's somewhat unlikely that someone would want
> to implement (the very bloated) IKE from IPSEC in the kernel, I wonder
> if there might be other users of HKDF, and whether this would be
> better placed in lib/ or crypto/ instead of fs/crypto?
> 

This is standard HKDF-SHA512; only the choice of parameters is fscrypt-specific.
So it could indeed use a common implementation of HKDF if one were available.

However, I don't think there are any other HKDF users in the kernel currently.
Also, while there was a patch to support HKDF via the crypto_rng API, there was
no consensus about whether this was actually the best way to add KDF support:
https://lore.kernel.org/linux-crypto/2423373.Zd5ThvQH5g@positron.chronox.de

So for now, to avoid unnecessarily blocking this patchset I think we should just
go with this implementation in fs/crypto/.  It can always be changed later, once
we decide on the best way to add KDFs to the crypto API.

[To be clear: this patch already uses "hmac(sha512)" from the crypto API.  It's
only the actual HKDF part that we're talking about here.

Also, its correctness is tested by the ciphertext verification xfstests.]

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
