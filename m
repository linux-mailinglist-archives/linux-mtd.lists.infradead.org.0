Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C905DCC8D3
	for <lists+linux-mtd@lfdr.de>; Sat,  5 Oct 2019 10:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJ6yMpKqcx/75QXfr4tqYtNN11hvBIAmHA869oKhqPk=; b=IIvz8fLvYtpRfY
	B3//nmFuplQWMNiY/7sYsXpMiDY6n0ZSuGwx1t5UiTkHpWvWtKZ+jlGtiYm3YCrSA2TGweK/ff7km
	nI/qEjH9Ut5HOoXY4UQ95OnqWJzJMj944OUB9oMNcPU9A5gfdrbdIAxQZo1oJPOUXSnqv3lHldPgg
	w4jtgpymHF7AQdgd2AVTukFNdZv1qnkKH34iw42c58JspTlgFmw5Ami171k3mvIKdZw6hOjGbgDJ0
	gfgxaC2MPlgz+UIUdrObmVyZ8zEcGYhb0hB0tPtgwxUAJ07Grm0keXhJseqiQteJttOZQsCEAhtbe
	wz+G176RKgs5Uatc6o6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGffM-0001ZE-RP; Sat, 05 Oct 2019 08:43:52 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGffC-0001Yf-7W
 for linux-mtd@lists.infradead.org; Sat, 05 Oct 2019 08:43:43 +0000
Received: by mail-wr1-x430.google.com with SMTP id j18so8916355wrq.10
 for <linux-mtd@lists.infradead.org>; Sat, 05 Oct 2019 01:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=37UXcbQIlNncCXdyWpbuxMNPBtvj2/m5zhE2g7AzDio=;
 b=PENwrixXghN5Z0yaXmJqUEK7xhiaFDMz6yT9qz2r69nsT9zugs65ibWi5ke6Fc3snZ
 7WRFfcY59kZWtDeHlo3h8JbJemsi3aOmY+PmPar5FcCYtNd9+ZGbCpI6jJNVj7daF1eY
 vDBq3v0yCR3XXHswbmdBpuXjw0cix+3A1t99l/1KedqbFxvPaVJVBRheYjcKrYDJSGSM
 qlATe05dbrtDtTXHcDibD6NiYNe6ON9eTyXXa4b7xyjdbeM+s6ftmUFc3XJV9pTuqfrS
 oJER93mD3BwdQ84K+GyTXeXHijGb9xfs0dx80DmsP277bidvqXo5hudWe2np4MOaLirA
 vN1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=37UXcbQIlNncCXdyWpbuxMNPBtvj2/m5zhE2g7AzDio=;
 b=BS5I52/V09FHNiOO3V/UQ3kr6WvM2/lH20RvH9OHKBi6jl0PVOXkOYEP4/J9vcc5cF
 VYsMdORQlx8sJewG6fjnwkbvUVtBUmEKcnSNVeLHnh9ANBIrZSmuAMNLQFpmsQV5G6sS
 G/4ROc78fSrrFyUusXKEGX8HcI1nC4hl95vgFiFYYh9B8fckXCq3qot7tuPwmydJM5Kc
 xBQQJ3ElRKKAGm0pUPMw0ABXhUCoY65bln5cdPdb4V1eewJKxMVzpkmW/3GQ4tyW450m
 0abGTRBV4PGFlGVpObgC0iFHLiHofiGHaGMAExB33eRGxysP1C2fpXUCU2HijYTiGqCi
 C96w==
X-Gm-Message-State: APjAAAXJ5aAbwS82BZWBrEjISfz97uHcLobKSJkc325+wbdbq2UOu7QZ
 wdpylZG1EJpJsqiyoyIy98LK/HdEPFtE/I3FaCc=
X-Google-Smtp-Source: APXvYqyG3XTbScC1PJjqUjukuvhLZ/fbvvumwen/etAsaHTm+UkxDcS3CKvRf4aN1+BvcHoKTLIbTzrbw3EyDKGOTtk=
X-Received: by 2002:a5d:45c6:: with SMTP id b6mr13640139wrs.4.1570265020116;
 Sat, 05 Oct 2019 01:43:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWRsrE73HPc0qzcUY7AEHha3NUYQCXj7tTK8o-KN0xLbzw@mail.gmail.com>
In-Reply-To: <CAA=hcWRsrE73HPc0qzcUY7AEHha3NUYQCXj7tTK8o-KN0xLbzw@mail.gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sat, 5 Oct 2019 10:43:29 +0200
Message-ID: <CAFLxGvybooDyV_D55A1rCh_jfSjBdp4SDaHHua2F-eMYomZpLg@mail.gmail.com>
Subject: Re: Where to define multiple volumes sizes in one MTD rootfs
 partition?
To: JH <jupiter.hce@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_014342_271979_0507763B 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Sat, Oct 5, 2019 at 2:51 AM JH <jupiter.hce@gmail.com> wrote:
> Recently, one of my device is broken failed to boot up, I still don't
> know what was the cause by hardware problem or software, to be
> precaution in the future meltdown, I am going to separate all writing
> data from ubi0 to to another ubi volume ubi1, to keep the rootfs in
> ubi0 read only. How can I define the ubi0 volume size to 160 MB and
> the ubi1 volume size to 30 MB?

Don't setup multiple UBI instances on the same chip.
The wear leveling domain should be as large as possible.

If you want to have multiple UBIFS filesystems, just create more UBI
volumes.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
