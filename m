Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3F6DF6B8
	for <lists+linux-mtd@lfdr.de>; Mon, 21 Oct 2019 22:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXugPXcygfvdiN12LgqnNLBfXOi2qzFFcIwT9hOYzWw=; b=eeXnxaRLGqcj7r
	7q/74VHHXfWxMSKW7s5r9mbk0tFjR5xAco7ct8Q0YKIvYj0ixhS8PNAUb68LYkzzKz6DD5/s4DpkM
	bgVYhlg71P7xXV+GabY6THsQSCjhfdGDSKidrZe0dQ19QmZWboItIIdOVdQAqh1Kg0qh1dVB2uDyo
	2E/IcnsbB6snoX/2VZs5wWD9qFx7viEUtmOm5sgISddIlGWMxf/ywW2wh5ODy3n5dnAnIvT+GqV9L
	ys4BsvZg/NSGTsCgDd4YDC7IjRHR7x27iSxI0QNM307hB7tuFanGbajOTYYFcC4qXxlZ1CgicJM4V
	9anrzcv0P420vZXnO9Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMeHZ-0003p7-OK; Mon, 21 Oct 2019 20:28:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMeHR-0003ol-7e
 for linux-mtd@lists.infradead.org; Mon, 21 Oct 2019 20:27:54 +0000
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E6492067B;
 Mon, 21 Oct 2019 20:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571689672;
 bh=8L0ewzw/7ASjBk080cDN5cpuIRKTa15ov4LqNhbGUyU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XdtMEsZXZVkZi/8oM2C2wP4SMkBrcUEBcH7YoA38fZCsMykEa+h8l6fvBqs+UW7cf
 ATArblZlo/LZmMFIIeYmZTHsTcOSt1bCMO2wSrHqvrav3dPU/ruwbYJqEU1XJk3uXN
 wrdd0tiCZ11qo3ZLkz6RpfjgaTxP1Yfhb01SWRaE=
Date: Mon, 21 Oct 2019 13:27:50 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: Re: [PATCH] fscrypt: invoke crypto API for ESSIV handling
Message-ID: <20191021202749.GA122863@gmail.com>
Mail-Followup-To: linux-fscrypt@vger.kernel.org,
 "Theodore Y . Ts'o" <tytso@mit.edu>,
 Jaegeuk Kim <jaegeuk@kernel.org>, linux-crypto@vger.kernel.org,
 linux-mtd@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20191009233840.224128-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009233840.224128-1-ebiggers@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_132753_296663_30339DF0 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -3.4 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jaegeuk Kim <jaegeuk@kernel.org>, "Theodore Y . Ts'o" <tytso@mit.edu>,
 linux-crypto@vger.kernel.org, linux-mtd@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 04:38:40PM -0700, Eric Biggers wrote:
> From: Eric Biggers <ebiggers@google.com>
> 
> Instead of open-coding the calculations for ESSIV handling, use an ESSIV
> skcipher which does all of this under the hood.  ESSIV was added to the
> crypto API in v5.4.
> 
> This is based on a patch from Ard Biesheuvel, but reworked to apply
> after all the fscrypt changes that went into v5.4.
> 
> Tested with 'kvm-xfstests -c ext4,f2fs -g encrypt', including the
> ciphertext verification tests for v1 and v2 encryption policies.
> 
> Originally-from: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Eric Biggers <ebiggers@google.com>
> ---

Applied to fscrypt.git for 5.5.

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
