Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B721D95E0
	for <lists+linux-mtd@lfdr.de>; Tue, 19 May 2020 14:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNURsQMpYfHCqIuWlAQUlarKFt8/42uC72VHFJiT0K4=; b=ucUf/opMJwtdkV
	8oo4ma+xsSLqsJwCadZaM585Km05GpogFKLkwgkPcRu0OYFRcbM29s0TMjNkzrOv3CLGe4UEdVbXM
	cGxbUj0W7Swu4rbOHlmE8wRug2MsAK51KWwsMwOx478v/eXqsLAGNhCgDxs7iDUdUCWCX3rCMWk6M
	Cm10+Nsp6vZf+iyGPrFqRz1jB9HthN0g1wstOUxMgiwc6uN15rinF0TK7GirGwtiHyM9Ehuz8X51z
	Z8HfcFU8XUtTL0HTsbbNE6l8ouZ0SJWhxsN2pnhYhdCyNBcZ2WpHue4MtMGIhzBr2lQLRHIt/rFbM
	mDFdGEr50bDurTf9Z17Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb11g-0007Gi-PN; Tue, 19 May 2020 12:07:16 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb11J-000785-Gu
 for linux-mtd@lists.infradead.org; Tue, 19 May 2020 12:06:54 +0000
Received: by mail-ej1-x62c.google.com with SMTP id l21so11557190eji.4
 for <linux-mtd@lists.infradead.org>; Tue, 19 May 2020 05:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=nR5VFvpGLlOxrylUGG3WXXyiQDE+8dYrW9Svjcsy/nY=;
 b=tAN8dK4SRljv/LOeXbjkISe7iyrDttr6dMQ0HT27ZNRcJ0+1/0pGkEdVM7waF9Q0ab
 ZrpNY6WoPKV2oyPgmcrptpCCxg/62SByG/kxBkHakAmDEh8+5JEsP5TKDNiR8NXlpSS9
 tRNKfH5SGlk5cW3woyCsG/37UXE5X/vc5WC53NZCKU9s4gdTnHEu/ALYXBt9X35pLnxz
 Xi9u5xaLxDbrOPJwP8sf0yUGkKvNDUjV3hevlJwaGkeKwilRZKYComusACEXTDbtaNB6
 zakUm3e6qo4TO/T+ATFYsX3c6x/WmLQe5EjRuAKqEKRY9Juw5Tjf8RGA8r4raX24B7c2
 MggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=nR5VFvpGLlOxrylUGG3WXXyiQDE+8dYrW9Svjcsy/nY=;
 b=BPT1jBAMeWNjBEzTTn/Be6WJLO4kH5s1JsDq97SUKRMz/WNZwbRJuaK3aE0qq6pBxh
 VagiHYCBeJr8G9EJiKSL6wUSy+px+4PNjNA6tX0tcokkwUoJNs1VZKoynySDCCM3gIad
 2UBcuC9aesn6O0IYQLaKqsB2oeEgbkO647ypwXNzWK98co7yC94Omed7ZVmM5ap13k9S
 Mo8pwFb1F85vPkirqyjMBm6z1YVERhrSt3TyPaLC+aAK+q5Pg7y7uoZ2fivvGa8PZn2o
 4vYxUjMF20pgVc3FPxsQKbBapAB6Kg4okuydD9e0ZSRZPd47yMXxZcvbBbmX4ykqI35Y
 7ing==
X-Gm-Message-State: AOAM531soold42PA94Y3COn4bxmx7Hku7JPyOES5l4/lqA0+sYH/atI5
 d9LdmLc+5A7ct4rFLnYs53mpw5Ey3NZseFDzuGs=
X-Google-Smtp-Source: ABdhPJxYvCD39BOE7jMFcmM/fyfXC0LowjV9W1VwGs4utgjr+P+fnv9E0Jw3Vlw9mCDQelHV4x2gAfsyv/C2OicPQ1A=
X-Received: by 2002:a17:906:a88c:: with SMTP id
 ha12mr19002822ejb.220.1589890011013; 
 Tue, 19 May 2020 05:06:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a54:3344:0:0:0:0:0 with HTTP; Tue, 19 May 2020 05:06:50
 -0700 (PDT)
In-Reply-To: <CAFLxGvxp3+JuaEatmMg_tvMFonSVC-pwhiB_ikf6i_edAGPewA@mail.gmail.com>
References: <CAA=hcWQ8ZjjdzdTVtBas42L0_qbhJhayqogz_Gg5wgtDBVo+hg@mail.gmail.com>
 <CAFLxGvxp3+JuaEatmMg_tvMFonSVC-pwhiB_ikf6i_edAGPewA@mail.gmail.com>
From: Jupiter <jupiter.hce@gmail.com>
Date: Tue, 19 May 2020 22:06:50 +1000
Message-ID: <CAA=hcWQDX3bPddO3TVo1Pn51tHGcPoywEHJwRsVBqy98AWqzEQ@mail.gmail.com>
Subject: Re: Issue with 'ubi part' ubi_io_read: error -74 (ECC error)
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_050653_600844_5624FC60 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jupiter.hce[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Thanks Richard for the response.

On 5/19/20, Richard Weinberger <richard.weinberger@gmail.com> wrote:
> Neither UBI nor UBIFS care about ECC. The MTD stack does.
> If you write something in Linux you cannot read back in u-boot a common
> problem is that u-boot and Linux use different MTD settings (layout,
> ECC, etc...).

That is exactly the problem I have, the MTD layout in both Linux and
u-boot is the same:

# mtdinfo
Count of MTD devices:           3
Present MTD devices:            mtd0, mtd1, mtd2
Sysfs interface supported:      yes

Are there any ways or tools in Linux to change MTD settings (most
likely the ECC or DTB) to the same setting in u-boot? I do have mtd
and fw_setenv in Linux.

Thank you so much.

Kind regards,

- jh


-- 
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
