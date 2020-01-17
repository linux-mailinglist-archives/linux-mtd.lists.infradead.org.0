Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD4E140F6E
	for <lists+linux-mtd@lfdr.de>; Fri, 17 Jan 2020 17:56:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o9Ha72umMAJfN4Lx326Sz6EEhdqQ3yhfQcH+j4wiA5I=; b=uSP56a8AKvyt5Z
	HtNNnI9lrqga4LSrbz/hqZfQH4og9eVSl++RS9FW6cdIGDpsl8b7eV7YxZqWgqM0qX7RQg5C3RY/u
	YxD1aVkBr9p8Rap33Am6TSe/ZpWPJ1jCYj9HRUp06C9V9M3qt1T9MPgVRzHWafokl9LUhjzAAIxIz
	Fb0RhBox8Bj1vzPORjsqp0ju2+sCe28tigHCOF2h6n0MmrsU7mcWA+UYiIUgNbTINY8WkTAplR9z8
	LzUldT6FvLl8TJVlHRjYxMRMAbslsIGEq2densJWyEQW4lrcskUEdMgRnB6B9z1zRWrWDMFadkLuj
	3Vf5l+8Z3ZwWQ86zhHcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUvG-0003fX-6Z; Fri, 17 Jan 2020 16:56:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUv5-0003e0-2I
 for linux-mtd@lists.infradead.org; Fri, 17 Jan 2020 16:56:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE81C2072B;
 Fri, 17 Jan 2020 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579280186;
 bh=itV4GZdAwjB8Lf2mvaZRf7Z5T2MikjbR+tHNgH8x7Ho=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eH5zxBHyWnHhM0fzuTtFItQX3h3ARLC8wvey/8gEsSn1hob0N06+kjPORG7OY14De
 QrJjZUhJyLqvlTzk7np+QfUA6dQP7Pgw5pF504M0eQqDOensC73sgpHjdgT0iomyQb
 Ympq5BXzPJhTWLd5/oAA3cB4qYuWz4YWHFNxeD3Q=
Date: Fri, 17 Jan 2020 17:56:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCH] fscrypt: reserve flags for hardware-wrapped keys feature
Message-ID: <20200117165624.GC1937954@kroah.com>
References: <20200116192008.35766-1-ebiggers@kernel.org>
 <20200117081246.GA16846@infradead.org>
 <20200117164054.GD448999@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117164054.GD448999@mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_085627_125623_02A37018 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Eric Biggers <ebiggers@kernel.org>,
 Barani Muthukumaran <bmuthuku@codeaurora.org>,
 Gaurav Kashyap <gaurkash@codeaurora.org>, linux-api@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, Christoph Hellwig <hch@infradead.org>,
 linux-fscrypt@vger.kernel.org, linux-mtd@lists.infradead.org,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-ext4@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 11:40:54AM -0500, Theodore Y. Ts'o wrote:
> On Fri, Jan 17, 2020 at 12:12:46AM -0800, Christoph Hellwig wrote:
> > On Thu, Jan 16, 2020 at 11:20:08AM -0800, Eric Biggers wrote:
> > > From: Eric Biggers <ebiggers@google.com>
> > > 
> > > Reserve flags for the hardware-wrapped keys feature which is being
> > > worked on [1].  FSCRYPT_POLICY_FLAG_HW_WRAPPED_KEY will denote that the
> > > encryption policy needs a hardware-wrapped key to be unlocked.
> > > FSCRYPT_ADD_KEY_FLAG_HW_WRAPPED will denote that the key being added is
> > > a hardware-wrapped key.
> > > 
> > > This reservation is tentative, and these codepoints may be reused if the
> > > feature is not upstreamed.
> > 
> > NAK.  While the feature itself sounds really useful we don't just
> > reserve format bits for code not upstream.
> 
> I disagree; saving a codepoint to avoid accidental collision of a
> feature bit is a good and proper thing to do.
> 
> Reviewed-by: Theodore Ts'o <tytso@mit.edu>

What kind of "deadline" do you have for that feature to then be merged?
I'm with Christoph here, we shouldn't be reserving bits for stuff not
in mergable state, what's the rush?

thansk,

greg k-h

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
