Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA91E18BEC1
	for <lists+linux-mtd@lfdr.de>; Thu, 19 Mar 2020 18:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uul6uDiAY5PjTtzTMBkrcSNB6GrPc4t3FNQJF4Jm4yE=; b=nMfQn/fbeZ4UWF
	DR8jPcSz6eDEcdyuip4VE/ITSdochXPlgbUFV3VhHSKOjXfpgKopl9+nM2Hxykd5Uj7KJDvok+TcD
	z8OHJntG4hEqdIsJCPkmbuP8DrvJBf7DXhtjnnxp7/M1BJaBViUv2FhAsoKGn+7GxqMCS3MTZ4cDJ
	MMqo39qSkQ6lvKoXzkPk5y3uq9Sdwl8K4dWtFqYk/9MuqD5oB1kEWKG/o5DtAxi7Qp2bqbYmgkX/j
	MObipDVlMZJm44HaDr8B2D1bFmwDGReb2Zl7KKCFG4ftjHt2TGbxTkH6Zyj1Tgh2UhyLtONZin3Tt
	/AYvRGG/2K7CAwnwAWBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEzJ9-0002so-6z; Thu, 19 Mar 2020 17:50:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEzIt-0002qF-6t
 for linux-mtd@lists.infradead.org; Thu, 19 Mar 2020 17:50:00 +0000
Received: from gmail.com (unknown [104.132.1.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EEAF320754;
 Thu, 19 Mar 2020 17:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584640198;
 bh=q270uO9rTu9c4Si3zJtl3gemlVNKHIaUhROgwEp7OBg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RjAeE0xh2CCBZepqFsBambYtHD23HJxQcmO5QvWPIVvcL9Hj3zrL/gqQXSIPdsLQV
 wf18INyaAJRrwz4uM3izP8cWDD0FPXAt7Ws1mnPcPaCgqIXnwR72MZo90M6T8GsYbY
 gv602IpzAB8trxpqGo8X3iDp5eociKy8nLMp6X0s=
Date: Thu, 19 Mar 2020 10:49:56 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: linux-fscrypt@vger.kernel.org
Subject: Re: [PATCH 0/4] fscrypt: add ioctl to get file's encryption nonce
Message-ID: <20200319174956.GA86395@gmail.com>
References: <20200314205052.93294-1-ebiggers@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200314205052.93294-1-ebiggers@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_104959_275557_60EFB1CD 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -1.1 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-fsdevel@vger.kernel.org, linux-api@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-f2fs-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 01:50:48PM -0700, Eric Biggers wrote:
> This patchset adds an ioctl FS_IOC_GET_ENCRYPTION_NONCE which retrieves
> the nonce from an encrypted file or directory.
> 
> This is useful for automated ciphertext verification testing.
> 
> See patch #1 for more details.
> 
> Eric Biggers (4):
>   fscrypt: add FS_IOC_GET_ENCRYPTION_NONCE ioctl
>   ext4: wire up FS_IOC_GET_ENCRYPTION_NONCE
>   f2fs: wire up FS_IOC_GET_ENCRYPTION_NONCE
>   ubifs: wire up FS_IOC_GET_ENCRYPTION_NONCE
> 
>  Documentation/filesystems/fscrypt.rst | 11 +++++++++++
>  fs/crypto/fscrypt_private.h           | 20 ++++++++++++++++++++
>  fs/crypto/keysetup.c                  | 16 ++--------------
>  fs/crypto/policy.c                    | 21 ++++++++++++++++++++-
>  fs/ext4/ioctl.c                       |  6 ++++++
>  fs/f2fs/file.c                        | 11 +++++++++++
>  fs/ubifs/ioctl.c                      |  4 ++++
>  include/linux/fscrypt.h               |  6 ++++++
>  include/uapi/linux/fscrypt.h          |  1 +
>  9 files changed, 81 insertions(+), 15 deletions(-)
> 
> 
> base-commit: 98d54f81e36ba3bf92172791eba5ca5bd813989b

Any comments on this?

- Eric

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
