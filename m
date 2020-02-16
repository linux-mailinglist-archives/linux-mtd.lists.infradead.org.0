Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A2716070A
	for <lists+linux-mtd@lfdr.de>; Sun, 16 Feb 2020 23:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0S95b3oroAhm+Eg526FnRc8f8Pza+enVNRwzicxJISA=; b=Q0MfmJPQpLmQKuGbSKCEMN9d4+
	BcZelMl79ZdKgnKsaJabF0b0n8w7/aAzkDLBIP2dzMHGi+1Mp/KM3uITofjvPwcvXKjQBGu+v3IHV
	4fDskLXW9zaTIrn6UQwddkQbTtoCm6kIzY74cOhYrMMzBfgR+60Lhu6gc1q9bhZFJvNH4Phoi3Lcy
	zNEaK/1se89oSsNwtwtAh7z6GR7rkMgk48VYZiKK0Vwv+MUiK9/Hii4oJ/Q+nToWbm/sMgXZlc7mM
	sXuWjopivrxVoTZm4QY6B+d5nz4jyBCZCFMdWsa58qcVLgkX/myW4AQ5ROcb/HklWhFjzRRmwluG4
	aNzJqk1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Sks-0002xD-Jx; Sun, 16 Feb 2020 22:51:14 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3Skk-0002wp-Pu
 for linux-mtd@lists.infradead.org; Sun, 16 Feb 2020 22:51:08 +0000
Received: by mail-io1-xd2f.google.com with SMTP id c16so16430757ioh.6
 for <linux-mtd@lists.infradead.org>; Sun, 16 Feb 2020 14:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
 bh=yQgP8ZCFMjrEen0Xu/KF2Yvv0BVPPIZrhYZ71nMMQ64=;
 b=XTr44a8sJCb27vFCynnrO9nThYZHuyoNdv4oZC2f89if5E0TxW6kodPRn6hTCmN5jl
 6UhuAOTg+ApJ/ljEPnf1EnAAuyr78GRriomVRDcCg0TEDCewqTNe18Ch1DFCrHPdbZsy
 e8FzcjjfzH9YYASwi5QtL/6obJLRkKITFTFfVN61UKQjD92iyHClVxE2CbC5LrJCKSfq
 BX/Ksx1WoBJ8zURAvBoaZpknpFDDtwKawUQDCOm6RODDdpWDR1+WFpX2fnnX14zumUxz
 zYVuxJT34s9QuDtCIW66Q/ErGQb16xGOvqkqgj05vbq1l22vQOaJmwF/dGNjxfsK9NpY
 13tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to;
 bh=yQgP8ZCFMjrEen0Xu/KF2Yvv0BVPPIZrhYZ71nMMQ64=;
 b=LgXiOUzC7mM7OfKftKScjSy1EWJjMtat7roxvqSOhSjxFuHc8rxEUPoGbRd99sXG1S
 Tj6AXOJ8FlDFyHBWOn4QAd8MLO6xIghCrphVsceHenJwpVNnyE2lBbHel8RZsofNpCxE
 PM85Yl6S2EsQlb13wLOROW8hgyfeZaPI8jUoPD4uUeIoR5z077ASFTUn5M41M4tp/+Vz
 0vxbb4Jv4Bd3bz/OMPTozfASVbIk7hv8YSqjsCyM4ALBiEVgbNaWqVUzIdfyDU7ye9mO
 xz53s6e629xKF5oltSfW2ZU2m3GuGfuvWJfr/KWDMcTA9Xkc+ALabxwmUaeTZOUcqxVC
 ZKrQ==
X-Gm-Message-State: APjAAAUbUwNgc62+n6jf1GZLzjB9Iux/Q9fSYnNBSSxX7AJdmbQwzaUe
 1eeEqxVuhdP0ZhCr3ED7ToVoK3ivSL8VyIVF9Yvy8Nho
X-Google-Smtp-Source: APXvYqx61GBjyEMahBol79EbQtbO4HTgWHTxQgNmTlRTyR+zTGuotPxlA2nvTcr39nj0m53aazR3yyzcMDeGPgzKsw4=
X-Received: by 2002:a02:ac0e:: with SMTP id a14mr10459990jao.117.1581893462866; 
 Sun, 16 Feb 2020 14:51:02 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sun, 16 Feb 2020 14:51:02
 -0800 (PST)
In-Reply-To: <CAA=hcWSjWZDRcNFj3e4fdaV_u5AVNiksgykcDhqbHXm_aqT5wQ@mail.gmail.com>
References: <CAA=hcWSjWZDRcNFj3e4fdaV_u5AVNiksgykcDhqbHXm_aqT5wQ@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Mon, 17 Feb 2020 09:51:02 +1100
Message-ID: <CAA=hcWS+e_LD-5aS4L3LLgUGnofa1fh96R+24v=Ek_oBhv9L4A@mail.gmail.com>
Subject: Re: Cannot mount UBIFS volume rootfs to RO
To: linux-mtd <linux-mtd@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_145106_866151_893C7B15 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2f listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Also, the kernel boot and mount the root to RO:

[    5.465303] UBIFS (ubi0:2): UBIFS: mounted UBI device 0, volume 2,
name "rootfs-volume", R/O mode
[    5.517493] VFS: Mounted root (ubifs filesystem) readonly on device 0:14.

Does the UBIFS have some hard wired to reverse the kernel mount back
to rw? Could it be some bugs in UBIFS or could I be missing something?

root# mount
ubi0:rootfs-volume on / type ubifs (rw,relatime,assert=read-only,ubi=0,vol=2)

Thank you.

Kind regards,

- jh

On 2/17/20, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I passed the root=ubi0:rootfs-volume ro ubi.mtd=2,2048 noinitrd
> rootfstype=ubifs mem=256M rootwait=1 to kernel command line, but the
> rootfs was still mounted as rw, can UBIFS volume rootfs support ro? Or
> what could be missing here?
>
> root# mount
> ubi0:rootfs-volume on / type ubifs
> (rw,relatime,assert=read-only,ubi=0,vol=2)
>
> Thank you.
>
> Kind regards,
>
> - jh
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
