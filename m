Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 904D7109195
	for <lists+linux-mtd@lfdr.de>; Mon, 25 Nov 2019 17:06:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBiBE66FshfVs849APOYj8mFccQNsu691aN40r3V8r8=; b=HghdEPG40c7WqM
	rKpvAJIJs5uE/hZu6npgn6tf8pujQ+/LtQ0lov5k4mG6YDIGStFJrqpc+xicmnf7JvCO1RDiKpBix
	bFbOu4MhM3kPA8PrmJm50QMYyXVNNHRjlri06w05XEupWaGKVXSAFsxumAGDNYAwQqHGHAmSBBWeA
	15WA95GbV1ViYFOR3zQ58QZlqYVqt7aHUn30fnOVFicp6KwNwVW3qWBhjNT6OoV4uPgpC1mkpfgWs
	iM6RFzsCl2VMmpb20liFmO+Ef/VBjk2PKy76vANcK5oM72LX7t66VLvYZUHOBxHJpDsi5Q/JZ8o8s
	+HJ/QZKAPA8M6YhAl0Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGsg-0003ZF-4z; Mon, 25 Nov 2019 16:06:30 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGsW-0003YN-Qz
 for linux-mtd@lists.infradead.org; Mon, 25 Nov 2019 16:06:24 +0000
Received: by mail-vk1-xa43.google.com with SMTP id k24so3583032vko.7
 for <linux-mtd@lists.infradead.org>; Mon, 25 Nov 2019 08:06:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Avttk0P5txS2q04zBlAty7rtXiGTPj5hhaK38ammByQ=;
 b=e4Es4BNR8tv0qRFadBAbvVXURnUbZZXWCMCs/wpwjIdMh4Jy89Fb9xnhqIRsvSh68a
 XJsKQJopD1tCEgGI9pChnGtQ7DahHVJ9gq9TKnNNNBulwFYjG+CblUqYW/vtQFu8vJxl
 w1v1hYKDkFVHLQgwvtj6is/1xKjCpjQYMwvgLrchL+5ApRlQiLDVacv0DmtKybbB8N50
 CRksIpAlofCr3r2qSaxGOBs8aeFN60Ook6Z7X/RkgjLJ1NolLOSSXCFHCnk9LpFB0T42
 IwuG9sVc4vmuofxHdOc58LsoGlJYDg+KXcNHmcNmwLbz5Jq0N8EXxOIEHDU1Ew05iA6S
 Tb8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Avttk0P5txS2q04zBlAty7rtXiGTPj5hhaK38ammByQ=;
 b=mwX8KxkgoCS65rwOLopmcmDSvh6sqYN7QOR3oohf8q5nVdpQrAbWsZ12aHOm9h/BmN
 qh9soMRW4SqIv5YvN1i7W5LDdj7ms8QxdRz406SuTrVS6wU9DSSagKVbx0DI7ajpLSbA
 5Ft0JK3pyxNRIJ4yA+Mmat8uFBLlGZ6d4A52UvEki6rZkUSnk5NjiRT465OKBjl1/sPT
 E9SLbd1RJ3E+EzSdhAQAFrLbjaFXMDiGQHW/YUMNYtQu8jIYmLKvnJzpk4HcrfX8VTyN
 dvpY+m+LmhksXDywTKYCLGbaPYbX7uaroxbq8Enxbfof+6Y/JpLQF2z7CEQelKqXiMxW
 6voQ==
X-Gm-Message-State: APjAAAXbubeTU7VFmW3GFXZrYW3phPlO/aQD6t/RBvFKiuKICh8gkE9b
 bkuxOuOQ5ClpT3ERPqKajldoxIbQezgEB0610Ks=
X-Google-Smtp-Source: APXvYqxNasVkK7MWNtHslDqEaSeS5Uo2U4dtls0PYrqWky4egoEbLjLpsDhsWSjOifL4RHlo/J6b+Vdm7rhS/WEKCJ4=
X-Received: by 2002:ac5:ce8c:: with SMTP id 12mr17656856vke.34.1574697977355; 
 Mon, 25 Nov 2019 08:06:17 -0800 (PST)
MIME-Version: 1.0
References: <1574442222-19759-1-git-send-email-christophe.kerello@st.com>
In-Reply-To: <1574442222-19759-1-git-send-email-christophe.kerello@st.com>
From: Steve deRosier <derosier@gmail.com>
Date: Mon, 25 Nov 2019 08:05:40 -0800
Message-ID: <CALLGbRJ00TeZKPfhkqj_mwu9zhMzc_+A8mh4uwaPnFBUatrwTw@mail.gmail.com>
Subject: Re: mtd: Use mtd device name instead of mtd->name when registering
 nvmem device
To: Christophe Kerello <christophe.kerello@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_080622_900184_9D7DAAC6 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (derosier[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: vigneshr@ti.com, Richard Weinberger <richard@nod.at>,
 LKML <linux-kernel@vger.kernel.org>, linux-mtd <linux-mtd@lists.infradead.org>,
 miquel.raynal@bootlin.com, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 9:04 AM Christophe Kerello
<christophe.kerello@st.com> wrote:
>
> MTD currently allows to have same partition name on different devices.
> Since nvmen device registration has been added, it is not more possible
> to have same partition name on different devices. We get following
> logs:
> sysfs: cannot create duplicate filename XXX
> Failed to register NVMEM device
>
> To avoid such issue, the proposed patch uses the mtd device name instead of
> the partition name.
...
> diff --git a/drivers/mtd/mtdcore.c b/drivers/mtd/mtdcore.c
> index 5fac435..559b693 100644
> --- a/drivers/mtd/mtdcore.c
> +++ b/drivers/mtd/mtdcore.c
> @@ -551,7 +551,7 @@ static int mtd_nvmem_add(struct mtd_info *mtd)
>
>         config.id = -1;
>         config.dev = &mtd->dev;
> -       config.name = mtd->name;
> +       config.name = dev_name(&mtd->dev);
>         config.owner = THIS_MODULE;
>         config.reg_read = mtd_nvmem_reg_read;
>         config.size = mtd->size;

This would be a breaking change for anyone that depended on
`config.name = mtd->name` behavior. Obviously, if they were using
multiple devs with the same partition name as you were, they'd have
already been broken, but I suspect if a lot of people were doing that
we'd have heard about that before now.

- Steve

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
