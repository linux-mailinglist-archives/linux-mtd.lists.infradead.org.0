Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB514792EA
	for <lists+linux-mtd@lfdr.de>; Mon, 29 Jul 2019 20:17:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNKhcqbCTFP7zRilRn2xJGRBHVhSinfOr2SswzhU/Pg=; b=BcUE6TOVG5qKGh
	4NRKG2WOsEU3ktt71gaOTYHBQURvFPb2nzJHZ6v61Ds2fAcEbwBQfUi9jrrFvTAHhoMZ9g5s29jGa
	01o7WPjBAKukMQQbOgY0L+J+HOq8XS2k3/xx0Qh4ep33B+KdITkkX7nY1tmXXvYQRl1bmEN/BPMQa
	WtwjPRzg2C/Mr7iHRATEXGRQv0mR2jWFOS4So0o14bcOHG6EwxNJ3TPCG/niUrQOv+hQusTf7Dsv9
	U+7LcplhF2vIawNnUiTclK59D6FuV4KPN+x16JoLEQkrnyLVru8Px7zk2MLOS8UObGZNpNt5dg/Op
	w09HzXoJU5LdhyWhJlsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsACt-0003nj-P6; Mon, 29 Jul 2019 18:17:11 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsACD-0003dr-Tc
 for linux-mtd@lists.infradead.org; Mon, 29 Jul 2019 18:16:31 +0000
Received: by mail-wr1-x42e.google.com with SMTP id 31so62919678wrm.1
 for <linux-mtd@lists.infradead.org>; Mon, 29 Jul 2019 11:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ghWschluBjMHv+N3D1DMwXhTF5BZSWv/NSWnqPoTzSs=;
 b=ClLjpSassjj89DItj+FZAI6T2Dp8qcbfLy/b+GujASj4EJgC7dXbO2p87yuqTnSvgN
 ECGGYzmkawADsVqEHUc2pn4Fv3fHXKy/BcWt1gtYAvlTtbpIQcIC5KujchReWtEHp9wU
 6P4la5CzXj4FOztZUL2JyIaXIK+uUY4PHRbSejv7bbOeUWoVzP4WjMObqO1cuCScEIUp
 RsBLqIot71iyO2u1C8XHkfe+0mKEV8708Uavkw6fVM/zCCFt4ZYt19oDPN+j0AS5E7Lq
 wTJqq/u8UjEJaUdimEl9BWz0673b46uE2s9Sm621l/fN6S7vTeG04LxlhrqFIPzCoQwz
 o+8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ghWschluBjMHv+N3D1DMwXhTF5BZSWv/NSWnqPoTzSs=;
 b=KsC3d+JkGYtjagzOtpULBy4n6pfmQeIhrkzqcO6m1FFoFleYDnBqXdHIxwhZR13bkz
 nbUAiHIeCAx1mjUwmVB/PS2Q6CnRblTvZLApSgfAsb6hEa52r9GlLN+xdITRfXVfSJ6R
 WOCESnGMfi8+F6kUY6HqUhtu1bA641S99HBjF9YUhG8LOCE7u2DHxpO0drjTcahMfcxT
 PzzqTihbthfkYtgVXiPA72aqdj7MafWa8XLwaNpQGPEz72GQQLZ/5lUwLASmozTLE2u8
 01Ls9xhOrBAct1bwKNNLSJ7arsL4gEGM+37qNDqqFfgvp+XMDbyIXNb6qhqWUoxCQZaO
 wOcQ==
X-Gm-Message-State: APjAAAVw2QQd2rdpvJ6kXhT/894iBloLEg5FFH1e7jSFPfdQ8xBXzfNp
 2toqYb7KCIDMW4HASkU4tHvpRVNlueEP2/ZVLCFE8jFW7bQ=
X-Google-Smtp-Source: APXvYqzsq8FjSgPbhtjlo97UU2tUs2jy+XyB3O0wK+3lWoAuFTGbnGvfEUaU2Gl41t3k3RY3coZdo0qsA5m3qhNRLoU=
X-Received: by 2002:adf:ea8b:: with SMTP id
 s11mr119723590wrm.100.1564424188470; 
 Mon, 29 Jul 2019 11:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <5D3EF488.6010307@etictelecom.com>
In-Reply-To: <5D3EF488.6010307@etictelecom.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 29 Jul 2019 20:16:16 +0200
Message-ID: <CAFLxGvyicArpTC_VmE8GPXeHwXVT3CV-Z_5v-+qo=MB9i_-6-w@mail.gmail.com>
Subject: Re: ubifs_check_node: bad CRC
To: Mickael Chazaux <mickael.chazaux@etictelecom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_111630_166742_7BA02B5C 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Mickael,

On Mon, Jul 29, 2019 at 3:28 PM Mickael Chazaux
<mickael.chazaux@etictelecom.com> wrote:
>
> Hello,
>
> I have been using UBIFS on embedded devices for several years now.
> We never had a corrupted filesystem. Recently, I used it on a
> board design based on the previous ones. On this new board I
> had several filesystem corruptions like the one below.
>
> I checked the CRC of the corrupted UBIFS node, and it is incorrect.
> However, the CRC of the UBI LEB and the ECC of the NAND page _are_
> correct.
>
> This node is on a PEB that was copied (copy_flag = 1 in the header)

Side note, you are only allowed to check the CRC of a LEB iff copy_flag is set
and there is a second LEB with the same volume id and LEB number present.
Then you can use the CRC of the LEB with the higher sqnum

Otherwise the CRC can be outdated.

> I have been working on this a lot now, and I would like to hear the
> advice of the experts on how to find the cause of this corruption.
>
> A bit of background :
>         The volume "userdata" is used for logging.
>         Approx. 1 message per second is logged.
>         It is mounted with option sync.
>         Its size is 10MiB, the ubi0 device itself is 491MiB.
>         There are other volumes on ubi0, that are not
>         corrupted (rootfs, etc.) . They are less busy.
>
> I imaged the NAND and can reproduce the error like this :
>
> flash_eraseall /dev/mtd8
> nandwrite -no /dev/mtd8 nand-image.img
> ubiattach /dev/ubi_ctrl -m 8
> mount -t ubifs ubi0:userdata /mnt/
> echo "azer" > /mnt/azer

That easy?
Hmm, sounds a bit like a bug in your NAND driver. Did you test it?

Please also disable compression in UBIFS, then the read back data maybe gives
you a hint what went wrong.

Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
