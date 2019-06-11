Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EB241887
	for <lists+linux-mtd@lfdr.de>; Wed, 12 Jun 2019 01:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krrI+C70UYADUxqe0SJEIwOfi6f9RPU/oPLz2CG6te4=; b=GIdinT+42XeErC
	Zo1o9Ejw3KSB4FewxpNP46uimiiKJiAbvawrP5kkGC6c/Do9mkjNHFOnQkc8OnP+UC0T2lGCOuT6Z
	NOZrgLJJqJEMp+zoht/9Tg6Crf6N/wJ9N0jgE3I3eWrHebh09C6tC8mZMny4Ew5AATUg7ZJt3J8tN
	BUGHXqz0p6VwEjg8Q8rXV9nH0LTcyKd2U6HtRIHFda11Ng7ujsJeanT58Ukgrdd8YMDZdm4TCBkS5
	ZaDbUrkvQiiE5XX9gTVdtmIZOMJHlvvzdNNLpHnzgqmJLJkhOuLxLxfEYODxUgGiDYBJ+aR+qnrQy
	Cfzne3tzI+JVrjhOiXoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapmC-0006u0-5I; Tue, 11 Jun 2019 23:02:00 +0000
Received: from mail-it1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapm3-0006tR-8J
 for linux-mtd@lists.infradead.org; Tue, 11 Jun 2019 23:01:52 +0000
Received: by mail-it1-x12e.google.com with SMTP id j194so7809500ite.0
 for <linux-mtd@lists.infradead.org>; Tue, 11 Jun 2019 16:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=36huIhPT6WuREwQG2bbZ4puE81KayggxvbCshnctrh4=;
 b=kcWd0gWy7F2co/OOBy03N+22o/8Y2R/WO6nkeSTq1Ie/KXnnI0RlCMVmnPaXVLDwxP
 RLvo0EER2tnFKlWH6DGIS7MTNAmOLnn1dMWE0Ow4LFiHE9g5GhoTmM+utSDH5SrtlJrc
 u3VAzAsv+Orc0tJnzGlAMuF6c7JaFLFDt2DCdYfBD1pLxtepy8WfVCpQpKplE5/0Bx/X
 HGgiblGat/kY1x+Dnx8HirF7pzS+Qlmk1zCHwCIbXHGDD/0y+XzA8aC34IGo8gx4eaHA
 QvN2deRBFDfrd/exNg9tilq947Me/Nj68lKq4cC/y6lIyaZaGwoAriJUJkNNt5e+Ur2B
 yszA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=36huIhPT6WuREwQG2bbZ4puE81KayggxvbCshnctrh4=;
 b=rGv7Qx3w773658cyDzJJ/+EcvcBfq4aRCe3nCNNvry2CVs5BHgE0uXeIRsFkSATbxq
 0sTEDMUdBajC71j9LuF5R4AEAoEgUD3GxPexlejSMYcyvtXsyVa+h+dWeXlDJdidEk3g
 HhE9NAy+UqBiFj/MnprPWEJK5uvPMzix3nk3a5o5mSur4DUe+btgCR1uAM3LCfNycKLB
 xMuQ0TBRtWp6RNyp9XuYB8Uvqe1kOTDhNng0vWpqv5KLzBkyKCKapXXewK2/qVZThWx5
 K7wEcrGoR67huce3ykwgCOQg1t1xSR4NLuIv1SjL9HMrxinlPBaNyTWBmIgdP0chs7Zl
 G3xQ==
X-Gm-Message-State: APjAAAUPeDKlKL6lznBLuVaBjuowLTbMq+A+/F4MQG/43BKaC+RgaT7Q
 9lex19/EXQrclavCmd/cvcodhQvTCbX1ijUxcD0=
X-Google-Smtp-Source: APXvYqxto0ykdZguKBCdV5fkPHroK7vP1GbP01UiW3pU+evZYFIbt/ouEWSsUQUl+GjEv0gOg/xEtzs2YOQer/J2HTg=
X-Received: by 2002:a24:b009:: with SMTP id d9mr2786224itf.168.1560294109991; 
 Tue, 11 Jun 2019 16:01:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP; Tue, 11 Jun 2019 16:01:49
 -0700 (PDT)
In-Reply-To: <CAFLxGvzAHGVA9Pe0rvJWqjUgaPZKyExvV1gu3pZAezhNGDXryg@mail.gmail.com>
References: <CAA=hcWSKQ4+BsQ9XPEhP+f=-oTA7CnbJ6=4upRZughg8mOUSUw@mail.gmail.com>
 <CAFLxGvzAHGVA9Pe0rvJWqjUgaPZKyExvV1gu3pZAezhNGDXryg@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Wed, 12 Jun 2019 09:01:49 +1000
Message-ID: <CAA=hcWRTPsk=zX=bnV6xAt-EpnyXy+dZdYGuLk8M-0UAjWHM1g@mail.gmail.com>
Subject: Re: NAND user space program
To: Richard Weinberger <richard.weinberger@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_160151_322917_42598481 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jupiter.hce[at]gmail.com)
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
Cc: linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-mtd" <linux-mtd-bounces@lists.infradead.org>
Errors-To: linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org

Thanks Richard, can the Linux zImage or rootfs load to NAND directly
via JTAG or serial line?

Thank you.

Kind regards,

- JH

On 6/11/19, Richard Weinberger <richard.weinberger@gmail.com> wrote:
> On Tue, Jun 11, 2019 at 12:20 PM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi,
>>
>> In NOR flash, access flash in user space is integrated to the Linux
>> system read / write, is it the same story for NAND flash? I installed
>> mtd-utils, but not sure if I can still use Linux system read / write
>> to access NAND flash or not.
>
> Well, Linux exposes both NOR and NAND flashes as MTD.
> So there shouldn't be much difference.
> But make sure you can deal with specialties of NAND, such as
> bad blocks.
>
>
> --
> Thanks,
> //richard
>

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
