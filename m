Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A3F79B3B
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 23:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M13a9I7oRwcN1OW55a0PcHEYGp0RDPCjL0xWastEO30=; b=nk0e5arE8pTVbM
	BFsXSGxny1Zhb0eLanwwgCYLy48k5Oskc9MxFg4zKpCUMe0lz5r8KnI7NntcE3QyrEQj+wqsPIF/M
	ULW24EJcWWpcQKR6G/FLrBrqjEaUTCN/lt9QuRD7idt1g13KuNbOkv04KlE4mRxoVEYjb9aR4XI4O
	qTfKbPSr6rzPVR/qaUYGOEXR1NJUIaq+ri5Tzwjr7CagUadDOQ57q9qGL4Umk6zrAEpdtbQ/jOh3b
	jNiM++M1QQqE8OL/w697OMMgnB89gn08FMmu/i595A/hugf+LI34ip7K6W/w2hQ/177kaRKhoEKIu
	dBsxB8OEBohaghe0NN1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsDKH-00075I-4g; Mon, 29 Jul 2019 21:37:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsDK2-00071j-PR
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 21:36:48 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3134206DD;
 Mon, 29 Jul 2019 21:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564436205;
 bh=TX+BUd/guqwyoeacac9QLEXtuFVcDeFmoEBcFE7Jlvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jD8Jnz4w2d/CDG/Z/3YlRqtkdLhxpObgwJdxi+Ax0luiHhhyo9+08+EsgXn/7x9/N
 pQ9vDwUsnuiFEqv17OuzZLCulrv96MKSIsHyRteY8dNbXkAmsFdsw8kNnOJWEM5DkI
 Iw2xUea2rleBmw8pmpttvm/5QAVIGC5ceyRxE15c=
Date: Mon, 29 Jul 2019 14:36:43 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCH v7 16/16] fscrypt: document the new ioctls and policy
 version
Message-ID: <20190729213642.GI169027@gmail.com>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 linux-fscrypt@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, linux-api@vger.kernel.org,
 linux-crypto@vger.kernel.org, keyrings@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>,
 Satya Tangirala <satyat@google.com>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-17-ebiggers@kernel.org>
 <20190729020009.GA3863@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729020009.GA3863@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_143646_883531_24E114DF 
X-CRM114-Status: GOOD (  26.36  )
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

On Sun, Jul 28, 2019 at 10:00:09PM -0400, Theodore Y. Ts'o wrote:
> On Fri, Jul 26, 2019 at 03:41:41PM -0700, Eric Biggers wrote:
> > +- The kernel cannot magically wipe copies of the master key(s) that
> > +  userspace might have as well.  Therefore, userspace must wipe all
> > +  copies of the master key(s) it makes as well.  Naturally, the same
> > +  also applies to all higher levels in the key hierarchy.  Userspace
> > +  should also follow other security precautions such as mlock()ing
> > +  memory containing keys to prevent it from being swapped out.
> 
> Normally, shouldn't userspace have wiped all copies of the master key
> after they have called ADD_KEY?  Why should they be left hanging
> around?  Waiting until REMOVE_KEY to remove other copies of the master
> key seems.... late.

Correct, normally userspace should wipe its copy of the key immediately after
adding it to the kernel.  I'll clarify that here.

> 
> > +- In general, decrypted contents and filenames in the kernel VFS
> > +  caches are freed but not wiped.  Therefore, portions thereof may be
> > +  recoverable from freed memory, even after the corresponding key(s)
> > +  were wiped.  To partially solve this, you can set
> > +  CONFIG_PAGE_POISONING=y in your kernel config and add page_poison=1
> > +  to your kernel command line.  However, this has a performance cost.
> 
> ... and even this won't help if you have swap configured....

Yes, but that's a larger issue.  Unencrypted data can be written to swap and
then be recovered from disk offline.  This has nothing to do with whether the
key is ever removed on-line or not.  So swap really could use its own mention
somewhere else, maybe in the "Offline attacks" section.

> 
> > +v1 encryption policies have some weaknesses with respect to online
> > +attacks:
> > +
> > +- There is no verification that the provided master key is correct.
> > +  Consequently, malicious users can associate the wrong key with
> > +  encrypted files, even files to which they have only read-only
> > +  access.
> 
> Yes, but they won't be able to trick other users into using that
> incorrect key.  With the old interface, it gets written into the
> user's session keyring, which won't get used by another user.  And
> with the newer interface, only root is allowed to set v1 key.
> 

As mentioned in a previous reply, they *can* trick other users into using that
incorrect key, by opening files using that incorrect key.  The incorrect key is
then cached for everyone.  (This assumes the other users have at least read
access to the file.  If it's mode 0700, this won't work.)

> > +Master keys should be pseudorandom, i.e. indistinguishable from random
> > +bytestrings of the same length.  This implies that users **must not**
> > +directly use a password as a master key, zero-pad a shorter key, or
> > +repeat a shorter key.
> 
> These paragraphs starts a bit funny, since we first say "should" in
> the first sentence, and then it's followed up by "**must not**" in the
> second sentence.  Basically, they *could* do this, but it would just
> weaken the security of the system significantly.
> 
> At the very least, we should explain the basis of the recommendation.

I think we should go with "must" instead of "should".

Basically the point of this paragraph is to explain that the API takes a real
cryptographic key of the full given length.

Otherwise the security guarantees for the algorithms the master key may be used
in (AES-128-ECB KDF, HKDF-SHA512, or Adiantum) aren't guaranteed to hold.

One can argue about how much of a problem this actually is, like how unsalted
HKDF on a key with unevenly distributed entropy is *probably* fine in practice
(and much better than the AES-128-ECB KDF).  But the security proof for unsalted
HKDF actually still assumes a pseudorandom key.  It's only randomly salted HKDF
that doesn't.

I'd strongly prefer to go with *must* for things that are necessary for the
security proofs or cryptanalysis to apply, even if they *might* still be "good
enough" in practice.

I'll try to find a better way to word this paragraph.

> 
> > +The KDF used for a particular master key differs depending on whether
> > +the key is used for v1 encryption policies or for v2 encryption
> > +policies.  Users **must not** use the same key for both v1 and v2
> > +encryption policies.
> 
> "Must not" seems a bit strong.  If they do, and a v1 per-file key and
> nonce leaks out, then the encryption key will be compromised.  So the
> strength of the key will be limited by the weaknesses of the v1
> scheme.  But it's not like using a that was originally meant for v1,
> and then using it for v2, causes any additional weakness.  Right?
> 

Probably, but we don't know for sure.  It's theoretically possible that
cryptanalysis of two cryptographic primitives A and B, where they are each given
the same key, could be much easier than attacking A or B individually.

So again, I'd prefer to go with *must not* for things where there is no theory
of cryptography that says it is okay, even if *probably* someone could get away
with doing it in practice.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
