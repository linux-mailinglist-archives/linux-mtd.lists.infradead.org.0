Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E43AB237
	for <lists+linux-mtd@lfdr.de>; Fri,  6 Sep 2019 08:04:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/R89eYIhdm2eZQqjf1J+6mvXsI8rTCZHLrkjP3EYM/Q=; b=p1s+41WgA35U3Q
	/s2Aci4EQI4Osb7/USZz0IgUcXnP3PF67isw35LwNEo6FcqS+qd9UqEgwq/yosvX5/0RaLtD79zo2
	N2+rn4caqOouDWH7sEdP5DM+biqbDmB1QjUpv7geut4y+wh8xsb15VZJBYySwLVft+AcXx5J34+6g
	ASeuL0hdWB8+KPXPic7FyKe04Owciqvi9eeHfu7nDtKlA9WJMvbnhB0zsU+3HxBmTVClHvgxQIG/h
	dzOA7TOXHuzBB4TVxoQlxgXeEfsFYV/a6pupcu1/mwx5ity87StEENUmUuDFTjSBkjFa3HGhpKa6I
	szd99C9kDoVTohGrytKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67Lq-0006Bq-IJ; Fri, 06 Sep 2019 06:04:06 +0000
Received: from mail-io1-xd34.google.com ([2607:f8b0:4864:20::d34])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67Li-0006BV-4x
 for linux-mtd@lists.infradead.org; Fri, 06 Sep 2019 06:03:59 +0000
Received: by mail-io1-xd34.google.com with SMTP id x4so10124729iog.13
 for <linux-mtd@lists.infradead.org>; Thu, 05 Sep 2019 23:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=PMBoKSD2fhrj+4M+aMBd+lXxL4Nb8LsAlAhIcjPy8IY=;
 b=DBvXCK3CuScR8hGIbPHrcsSuYxM8JikAzlWE15EexQ2n9HfHND7aEGtaFS4fw4MfUG
 AADcsnzt37CNHWJt2LAyRZapZPjrYRsJ0Y+l9nlHVgh8IJ46YsZDDUCO0TEvcA09wQ3j
 rRUEmVk1G5XnEhoOTH7SPyyR3hIWuFAAllvGyqep3mcCTfioGzD3GQiwKYM1uSFuoF0V
 QQXLgGvngEwx+Gli8bPbMEYWZZ++OFlg1EyH31GUAF5zocGVBqgQJCL/WqkDsYrVnGrf
 d/OcEXic5PX4zT5HFChLcoSYJdxipWYMRet3umk6ezqyr8H9XZzPCTdwJSuaUi/aYrs1
 OZhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=PMBoKSD2fhrj+4M+aMBd+lXxL4Nb8LsAlAhIcjPy8IY=;
 b=Cwbesl8lc42QzYLn1SN1WeO/7dWrMAVnds+hU50+sH0goO/GIbxBp778PoSpIld7m4
 NIYPvNai4tHMhBVD4Uq22+uHlc9sAtZguUsh9pE8zBOpGGiEuaD0yElNsL0k5LK0q0NX
 MB6owycOzwVKI7ygpqA5wM/wulHbO2L9lMeJ8BwXqfxqqIiYyzbaBfEEZy/KZZ4W9704
 7bnDn/bX+Kf7uKn2uJj3PEDAgR2mPOqLJGEpZpmwuLMFaPKP1T9ui9RyWywrOKpTJyNL
 YKoveuuRHvNPOZYhjrbwOuwtmZF7WfeOHJKrERysQfFdb0XgbEOFLHe4JEqPx2NgGYW5
 oWkg==
X-Gm-Message-State: APjAAAW43umGPxlf9Y+a0iJ/BSjwfU8EFjugs5LWgFk8g5NRMea2+vZM
 ECpfchUXtbycoVwqHgziYrN1m1BoWqIJU94oIVE=
X-Google-Smtp-Source: APXvYqxgG74EesgoOnxyJsAGmsNOkZWrtoNAdFjXfDJLxBgjLeIZJuDdwgn9GIjC0YNjt1xrRKEa7jSkbkVJa9128EQ=
X-Received: by 2002:a02:495:: with SMTP id 143mr8353328jab.94.1567749836463;
 Thu, 05 Sep 2019 23:03:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
 Thu, 5 Sep 2019 23:03:55 -0700 (PDT)
In-Reply-To: <CAFLxGvzqXs=m77Dmp+EVxYKM4gWc4AcU1ftW+S90rVtot1NvPg@mail.gmail.com>
References: <CAA=hcWTrrC1a_WSNb62ftn60fAMnq1jywVsjwess1=vGufXjLw@mail.gmail.com>
 <CAFLxGvzqXs=m77Dmp+EVxYKM4gWc4AcU1ftW+S90rVtot1NvPg@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 6 Sep 2019 16:03:55 +1000
Message-ID: <CAA=hcWT0=ny6hxDgxZVTU6jbAYS80nizw3+PVVWzgW6poXuMwQ@mail.gmail.com>
Subject: Re: A big issue of NAND fragmentation
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_230358_220452_3B942874 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d34 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Hi Richard,

On 9/5/19, Richard Weinberger <richard.weinberger@gmail.com> wrote:
> On Thu, Sep 5, 2019 at 3:27 AM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi,
>>
>> I am running kernel 5.1.0 on iMX6 using NAND flash, I write small data
>> files about 250 bytes each every 5 minutes to a backup storage, the
>> total size of all data files is about 600 KB, but du shown me 9.7M is
>> used in that directory. I know NAND using page to flush files, how
>> does the MTD handler NAND fragmentation?
>
> If you force UBIFS (I assume you use it) to persist 250 bytes,
> it has to waste a full NAND page. This is how NAND works.
> But UBIFS can pack such data chunks upon garbage collect when
> it runs out of space.

Yes, I use UBIFS, was your word "force" means "write" or did you
allude there would be an alternative to avoid forcing UBIFS persist
250 bytes?

Waiting for out of space would be too risk, alternatively, I should
have a UBIFS partition for the data storage, if it runs out of space,
it won't impact the root file system.

Thank you Richard.

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
