Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD2279A38
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 22:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ov0K9B1vyTE63hIHSt8yH+XlDqUCg178ILp95foZq1I=; b=fr3N2nf2EYdTbK
	LVddPxiS3LfXNPsj+DNyGu2CNYs3yHiqpnlRZNRkwI/56WHUDc6rqvDORZbAx/wikwA9rbLdZRIwI
	O5jwDXbGREnFlfxTivbpmAeynA2+uHPB/TZ1Vsko5pO6o2Mv3idVOzNzIf9NPtrcCJznLYUrMJbVg
	VjbroxdIMHUkRo6JxUM2lZyl+bL9wD+OBXbMIrq1qToE1d+aCKxTgUc2tWcONdeCRXM4or2OxMPp/
	q6pan+Ap2JdxtijB1S8OVSGptt4czxIdePYOqy3SLpbpi1z5uH7hcBJf5GOM7VB1AcnAp3TopZxCA
	13kuRhjqkHmirxvfVdqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsCXZ-0003jQ-2D; Mon, 29 Jul 2019 20:46:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsCXO-0003iu-SI
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 20:46:32 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D6B0206A2;
 Mon, 29 Jul 2019 20:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564433190;
 bh=DNMh2YRc0dQISTUq/gkVxZiJ3MfUwE+LBvvMLd0sx0w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=K79oGysDbp1R9KcVqj1mKpfGB23D0dx9KzJwL1URFJI/8PotFaTXB1QXv/9jPmJ5e
 cd4dzd2ixOf8QsiHSDEd5r1iJBny2qYoC0vd1z0wpsTIbfCpr52p94FTMkHI78oJ2t
 NisulN2mchZN4cYXAX27Nu925MXHkVW50WusaYRo=
Date: Mon, 29 Jul 2019 13:46:28 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCH v7 10/16] fscrypt: v2 encryption policy support
Message-ID: <20190729204627.GH169027@gmail.com>
Mail-Followup-To: "Theodore Y. Ts'o" <tytso@mit.edu>,
 linux-fscrypt@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mtd@lists.infradead.org, linux-api@vger.kernel.org,
 linux-crypto@vger.kernel.org, keyrings@vger.kernel.org,
 Paul Crowley <paulcrowley@google.com>,
 Satya Tangirala <satyat@google.com>
References: <20190726224141.14044-1-ebiggers@kernel.org>
 <20190726224141.14044-11-ebiggers@kernel.org>
 <20190728211730.GK6088@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190728211730.GK6088@mit.edu>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_134630_945977_E45DF729 
X-CRM114-Status: GOOD (  21.02  )
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

On Sun, Jul 28, 2019 at 05:17:30PM -0400, Theodore Y. Ts'o wrote:
> On Fri, Jul 26, 2019 at 03:41:35PM -0700, Eric Biggers wrote:
> > @@ -319,6 +329,31 @@ int fscrypt_ioctl_add_key(struct file *filp, void __user *_uarg)
> >  	if (!capable(CAP_SYS_ADMIN))
> >  		goto out_wipe_secret;
> >  
> > +	if (arg.key_spec.type != FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR) {
> 
> This should be "== FSCRYPT_KEY_SPEC_TYPE_INDENTIFIER" instead.  That's
> because you use the identifier part of the union:
> 
> > +		/* Calculate the key identifier and return it to userspace. */
> > +		err = fscrypt_hkdf_expand(&secret.hkdf,
> > +					  HKDF_CONTEXT_KEY_IDENTIFIER,
> > +					  NULL, 0, arg.key_spec.u.identifier,
> 
> If we ever add a new key specifier type, and alternative in the union,
> this is going to come back to bite us.

Well, I did it this way because the next patch changes the code to:

	if (arg.key_spec.type == FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR) {
		...
	} else {
		...
	}

We already validated that it's either TYPE_DESCRIPTOR or TYPE_IDENTIFIER.

But I guess to be more clear I'll just make it handle the default case again.

	switch (arg.key_spec.type) {
	case FSCRYPT_KEY_SPEC_TYPE_DESCRIPTOR:
		...
		break;
	case FSCRYPT_KEY_SPEC_TYPE_IDENTIFIER:
		...
		break;
	default:
		err = -EINVAL;
		break;
	}

> 
> > +	if (policy->version == FSCRYPT_POLICY_V1) {
> > +		/*
> > +		 * The original encryption policy version provided no way of
> > +		 * verifying that the correct master key was supplied, which was
> > +		 * insecure in scenarios where multiple users have access to the
> > +		 * same encrypted files (even just read-only access).
> 
> Which scenario do you have in mind?  With read-only access, Alice can
> fetch the encryption policy for a directory, and introduce a key with
> the same descriptor, but the "wrong" key, but that's only going to
> affect Alice's use of the key.  It won't affect what key is used by
> Bob, since Alice doesn't have write access to Bob's keyrings.
> 
> If what you mean is the risk when there is a single global
> filesystem-specific keyring, where Alice could introduce a "wrong" key
> identified with a specific descriptor, then sure, Alice could trick
> Bob into encrypting his data with the wrong key (one known to Alice).
> But we don't allow keys usable by V1 policies to be used in the
> filesystem-specific keyring, do we?
> 

The scenario is that Alice lists the directory with the wrong key, then Bob
lists the directory too and gets the wrong filenames.  This happens because the
inode, fscrypt_info, dentry cache, page cache, etc. are the same for everyone.
Bob's key is never looked up because the inode already has a key cached.

This also applies to regular files and symlinks.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
