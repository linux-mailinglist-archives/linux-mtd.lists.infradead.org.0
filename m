Return-Path: <linux-mtd-bounces+lists+linux-mtd=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mtd@lfdr.de
Delivered-To: lists+linux-mtd@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A009C5BC
	for <lists+linux-mtd@lfdr.de>; Sun, 25 Aug 2019 21:02:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oi5NO1OsyNIChJlR0FZJb/gEaZopK+gii2mlAnZVdw=; b=JqyN0t0PqqOmk1
	Gh/ZSJ9dZB6shYLM7xQpGbnB2gEGLL8XWNq1javC/AfAkCOKPGenoWW2TZNH3IqeHsKeh+b/ISMl3
	p0BXPnqeu2LcRNc/MPU1HjH5hUDRUmDOxLfO1wFgzFU6FXzq+a+X3zvErqYkjYAPY6zQLnixysllP
	ud5cnruFmjUwp1AypQ0R9wjAYLOern/x0otsoqmbi/mLfiLPXp/UqCfHeSN46W55Jap5XQG6fu5QF
	hec0LcVygzRW84V5IKSxpaX6V1/+MYH8U26nogXNQte+o7TSsaF6smO23wJM846uNg6ABKt3ihutU
	7exbSCX0IRK7sgm/dpFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1xmh-00073y-1R; Sun, 25 Aug 2019 19:02:39 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1xmV-00073c-Rp
 for linux-mtd@lists.infradead.org; Sun, 25 Aug 2019 19:02:29 +0000
Received: by mail-wr1-x42a.google.com with SMTP id z11so13244250wrt.4
 for <linux-mtd@lists.infradead.org>; Sun, 25 Aug 2019 12:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JdBerF4HnhTXcR4nAwSdJRiw/Il/0aWiS4ClBd443Ic=;
 b=rpIz6d6NvuAoe7By/cHbfFaCF0YkUSasGrSCCw6jNdPICcg6GUxJdw0IfXxCR1u7Ur
 MI7TbblprJeQPQIX8LZtArb6G8oURcr7fJt0tSn2ydAr2SBsMYdmxnV4AvdBh1R862MK
 NNRkWrDjQsCapeZASZJR4xP21HXmNXz8eJVrvcksOrsigz7ovMddT7d5oypLRrdINkHN
 PKYNKVj90womsHUMfYVDJE7aPrJZIToIRY1cQDtWVazzqnviLL889y86YqI3A1jsR9uo
 fE/ztJBkjVpAiUSnwJs/gzYMRAsTGUIy3s23AHB+U6NrNoliVhUCSVW7er+R/+fFfi7t
 Aiww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JdBerF4HnhTXcR4nAwSdJRiw/Il/0aWiS4ClBd443Ic=;
 b=OtD4QZlPz+225pNIC+nSDQaDhsermIgF2r7JKtfZdiiu05nOme5eJ39A8htMt9fNg2
 qlDbz90YVUgrdOPGyUB0BjfbXt1gFXzyTTmsSICUg0otWee/6USqOWes9lrUzn2RJa+G
 dTW6sRvWQhiNACjiPil7/vTtvZkaZ1yKY3naTEQzaYmPVr3LrTvpBKIzN8bVsCkxCOoS
 4Z2dsheMZkMDpWzN66ShcG4+nkABmZkacvDZJ8DNnd5xP8SAHnRZZs1SwgvTVb0k2slO
 XeTH0wGJfpoLntxxSEl14lToMDmDzH99pToN46Oy//ZTQZtF3b2+aeanGfx3VKG+0BaX
 QZsw==
X-Gm-Message-State: APjAAAXGtc+Yx0Vu3iug1GI/gtUSLhzSqctjK1srk2nODMePHLaKf/ic
 C2sx73M0e1kYngKq9DXyIY2BCU+i3rA8fIlDqhTVptYj
X-Google-Smtp-Source: APXvYqyEA3NGPzhcwmEdDOrvCTVtaXkuhkVHSPrkeM/IDOsVerbpJ0sUqPnbua8T+e+dSa6ItpFCz2kjnMCbr+16d2k=
X-Received: by 2002:a5d:6a12:: with SMTP id m18mr17339353wru.306.1566759746025; 
 Sun, 25 Aug 2019 12:02:26 -0700 (PDT)
MIME-Version: 1.0
References: <5D3EF488.6010307@etictelecom.com>
 <CAFLxGvyicArpTC_VmE8GPXeHwXVT3CV-Z_5v-+qo=MB9i_-6-w@mail.gmail.com>
 <5D3FF1A6.7050407@etictelecom.com>
 <CAFLxGvzF8iDJG_rTqGwrLdmFsehaLxD4os50_QLZTMjytVQ9Dw@mail.gmail.com>
 <5D5FB0CC.3050502@etictelecom.com>
In-Reply-To: <5D5FB0CC.3050502@etictelecom.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 25 Aug 2019 21:02:14 +0200
Message-ID: <CAFLxGvyLqd2yFRQLQau82MV2ud0AUxsdeXVa5fU7j=ZsJ52YEg@mail.gmail.com>
Subject: Re: ubifs_check_node: bad CRC
To: Mickael Chazaux <mickael.chazaux@etictelecom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_120227_922742_042D3921 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richard.weinberger[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Fri, Aug 23, 2019 at 11:25 AM Mickael Chazaux
<mickael.chazaux@etictelecom.com> wrote:
> > Hmm. Power cuts or many writes should not trigger such a corruption.
> > I'd expect ECC errors or data structure errors in UBIFS. But not a good ECC
> > with bad UBIFS data CRC.
> >
> > But with only one sample it is almost impossible to figure...
> >
>
> Memory corruption as in some kind of buffer overflow or use after free ? or physical
> bus errors? Anyway I think I will implement some mitigations at the application level,
> (eg. less log messages, recovery by creating a new volume, copy the now-readonly data,
> rename the volume) because the haystack just got too big for the needle.

This could be caused my any kind of corruption. Do you monitor your devices?
Maybe the crash also once in a while and you notice only the case when bad data
is written to flash.

-- 
Thanks,
//richard

______________________________________________________
Linux MTD discussion mailing list
http://lists.infradead.org/mailman/listinfo/linux-mtd/
