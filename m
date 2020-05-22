Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121841DE6B5
	for <lists+linux-mtd@lfdr.de>; Fri, 22 May 2020 14:19:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsduY4CGHdBLzeRUB1xwxBlH1OxRtn/cjBKYqxNBMHA=; b=s7xKOUclwBlAzV
	SNx8Yf8eLJq4w3+lBPlr3bd3qS90XMguAuaIKA08HJm6ADc9aWrkpwpI6bHWsYdBIhY82bYr81ej6
	u7ZavGOErQcIvLl7E+TRicQEnXCHVdIlWUhNt1uIVv7zY7QDWr/B7CHwy+eBD9N3OptEIJmOpanef
	HWGVRvW/AniJcjx6b8o4gdTk0oT/VS2N0pPO0qQEBYmHQFB76lhKHrTAVmCBC4ZlxoSqL+zv8oF8A
	DztMACnTBsGleOgvwzpbM4eZjXUVyhqNbbiuLnEFkDl/FJGeT/FvsuufyTC8Gw3NpcJegTqSRdfgM
	IYfEvaQ0ihaYwtEJqnFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6eW-0000PH-P8; Fri, 22 May 2020 12:19:52 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6eI-0000EJ-1h
 for linux-mtd@lists.infradead.org; Fri, 22 May 2020 12:19:39 +0000
Received: by mail-ej1-x641.google.com with SMTP id s3so12797723eji.6
 for <linux-mtd@lists.infradead.org>; Fri, 22 May 2020 05:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=yNYrwlLt9bhFy2gJYLNN4M5PaxZl7TuTakyReZGQaoI=;
 b=EQmc8VkcL7u9CspF56peHqCcQcYdmEspPKlQ36epIS967KqkjfuE6Kjii29lJ2LOgp
 Um+ScwBcZhMLzDXaMMYX+88Q36+XaHz0VbaE7ZqydKfEwDTI+SspSNoxRA4VYVgqQsEF
 CJEAyGt3w3N907Z0rQR0PwmvCMPNbn6MFFJSI63hFu9UfSAcYVmwDBki5usRtc0L0FdA
 vcEtL6aQeqc2DKQhekPpdfn4bGPQieyc91O4mLq0tS0+v0dRyHHfD8qrOAa9DUN/b1UP
 jHIO63PqfLOD9gi95MMrCp+WRyUnl+K8YH19ELlvk4JRCOvLPJOLni5xTcP7vw/lmoaj
 XFFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=yNYrwlLt9bhFy2gJYLNN4M5PaxZl7TuTakyReZGQaoI=;
 b=XDtjf9Yan6u4aYcskUdWqgc95HL5+aXYERNOc9et6RZ3OHFl+RKAwxoenuK4zBGcol
 nqVg76bT9nFHOSSEsgRSOffia4TqxIJVZlZIKbGHi1w/ycqHi3er44Sn1c0rtTos8lic
 UV3RkjRtNhBSIczuhu1Lgid0jzpvj3j+nk73MvqRrxYS2GJkX2wsmgzL+F+neRcOkbki
 hRpgwcLnEUksXetPbNOHdFKWFR/9y6tPc5ng1VuCECwsrwYLQmZNaoA9K3OaLLF9jl0w
 brp7CI/IlU8jTfbtxaumnsupGlsGF5x9bvGrlZvQhEeSoqZFqRjnmC8jXyQTiYXHmogF
 UK8Q==
X-Gm-Message-State: AOAM533rqsFZ6nK4xkpEyxKvtNSlSslWoJ0u76TBcs6fYSfrgzSNXYsJ
 d6N5kJwqVfGNi1RSx+e3f05SAoqI8DjuFpkRMHM=
X-Google-Smtp-Source: ABdhPJxgM78RyFaU8dfkueHZFCTr/vZEecfWFPIKU8NvuQWf47TIPlRcDzBWYksS+kmAV3DlPfjN5Iar0JAn/2RDSzc=
X-Received: by 2002:a17:906:4dd6:: with SMTP id
 f22mr7575300ejw.483.1590149974556; 
 Fri, 22 May 2020 05:19:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3344:0:0:0:0:0 with HTTP; Fri, 22 May 2020 05:19:33
 -0700 (PDT)
In-Reply-To: <bc9f663c-4336-814e-4567-eeace4f36480@denx.de>
References: <CAA=hcWQ8ZjjdzdTVtBas42L0_qbhJhayqogz_Gg5wgtDBVo+hg@mail.gmail.com>
 <CAFLxGvxp3+JuaEatmMg_tvMFonSVC-pwhiB_ikf6i_edAGPewA@mail.gmail.com>
 <CAA=hcWQDX3bPddO3TVo1Pn51tHGcPoywEHJwRsVBqy98AWqzEQ@mail.gmail.com>
 <bc9f663c-4336-814e-4567-eeace4f36480@denx.de>
From: Jupiter <jupiter.hce@gmail.com>
Date: Fri, 22 May 2020 22:19:33 +1000
Message-ID: <CAA=hcWTbTg7ZQzSMYx+j6o87rYKtsMwweeJxHvDswi1RgGUoVg@mail.gmail.com>
Subject: Re: Issue with 'ubi part' ubi_io_read: error -74 (ECC error)
To: hs@denx.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_051938_100752_FCF1836A 
X-CRM114-Status: UNSURE (   8.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>, u-boot@lists.denx.de,
 linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Heiko,

Thanks for your response.

On 5/22/20, Heiko Schocher <hs@denx.de> wrote:
>> Are there any ways or tools in Linux to change MTD settings (most
>> likely the ECC or DTB) to the same setting in u-boot? I do have mtd
>> and fw_setenv in Linux.
>
> No for U-Boot (as I am aware of). You need to fix the DTS or may if
> older U-Boot your code.
>
> May you need to add in your U-Boot DTS gpmi node the property:
>
> fsl,legacy-bch-geometry;

I tried but that did not work, it is equivalent to remove
fsl,use-minimum-ecc in gpmi node I used to run ubiformat to flash
UBIFS image to NAND:

# flash_erase /dev/mtd2 0 0
# ubiformat /dev/mtd2 -f /tmp/ubi.img

That caused the NAND boot error to run "ubi part" ubi_io_read: error
-74 (ECC error).

Richard shed light on the problem that u-boot and Linux use different
MTD settings, I figured out it is the ECC problem, while adding
fsl,use-minimum-ecc in gpmi node cannot even start NAND boot. Why
fsl,use-minimum-ecc in gpmi node causing such predicament?

Thank you.

Kind regards,

- jh

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
